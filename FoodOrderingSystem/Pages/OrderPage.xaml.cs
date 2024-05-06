using FoodOrderingSystem.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Net.Http;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace FoodOrderingSystem.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class OrderPage : ContentPage, INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        private string email = null;
        protected override void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        private List<CartList> _cartList;
        public List<CartList> CartLists
        {
            get { return _cartList; }
            set { _cartList = value; 
                  OnPropertyChanged(nameof(CartLists));
                }
        }
        private bool _isRefreshing;
        public bool IsRefreshing
        {
            get { return _isRefreshing; } 
            set
            {
                _isRefreshing = value;
                OnPropertyChanged(nameof(IsRefreshing));
            }
        }
        private decimal _totalPrice;
        public decimal TotalPrice
        {
            get { return _totalPrice; }
            set { _totalPrice = value;
                  OnPropertyChanged(nameof(_totalPrice));
                }
        }

        public OrderPage()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);
            Shell.SetNavBarIsVisible(this, false);
            BindingContext = this;
            IsRefreshing = true;
            FetchData();
        }

        private async Task FetchData()
        {
            try
            {
                if (string.IsNullOrWhiteSpace(email))
                {
                    email = SecureStorage.GetAsync("email").Result;
                }
                using (HttpClient client = new HttpClient())
                {
                    var response = await client.GetAsync($"{APIURL.apiurl}getOrder.php?email={email}");
                    if(response.IsSuccessStatusCode)
                    {
                        var content = await response.Content.ReadAsStringAsync();
                        var data = JsonConvert.DeserializeObject<CartResponse>(content);
                        CartLists = data.Data.Select(x => new CartList
                        {
                            Name = x.FoodName,
                            Price = x.Price,
                            Quantity = x.Quantity,
                            ImageUrl = APIURL.apiurl + x.ImageUrl,
                            Status = x.Status,
                            Total = x.Total,
                        }).ToList();
                        CalculateTotalPrice();
                    }
                    else
                    {
                        OnPropertyChanged(nameof(CartLists));
                        await DisplayAlert("Opps", "Something went wrong😓😢", "OK");
                    }
                }
            }catch (Exception ex)
            {
                OnPropertyChanged(nameof(CartLists));
                await DisplayAlert("Opps", "Something went wrong😢😓", "OK");
            }
            finally
            {
                IsRefreshing = false;
            }
        }
        public ICommand RefreshCommand => new Command(async () =>
        {
            IsRefreshing = true;
            await FetchData();
            IsRefreshing = false;
        });
        private void CalculateTotalPrice()
        {
            TotalPrice = CartLists.Sum(x => x.Total);
            NumberFormatInfo numberFormatInfo = new NumberFormatInfo();
            numberFormatInfo.CurrencySymbol = "PHP"; 
            var totalPrice = TotalPrice.ToString("C");
            ItemLabel.Text = $"Total: {totalPrice}";
        }
    }
}