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
        private int _userRating;
        public int UserRating
        {
            get { return _userRating; }
            set
            {
                _userRating = value;
                OnPropertyChanged(nameof(UserRating));
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
                            Id = x.Id,
                            Name = x.FoodName,
                            Price = x.Price,
                            Quantity = x.Quantity,
                            ImageUrl = APIURL.apiurl + x.ImageUrl,
                            Status = x.Status,
                            Total = x.Total,
                            UserRating = x.UserRating,
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
        async void OnStarClicked(object sender, EventArgs e)
        {
            var button = (Label)sender;
            int rating = int.Parse(button.ClassId);
            int productId = ((CartList)button.BindingContext).Id; // Get the product ID from the BindingContext
            
            try
            {
                if (string.IsNullOrWhiteSpace(email))
                {
                    email = SecureStorage.GetAsync("email").Result;
                }
                using (HttpClient client = new HttpClient())
                {
                    var data = new { Rating = rating, Id = productId, Email = email }; // Include the product ID in the data object

                    string json = JsonConvert.SerializeObject(data);
                    StringContent content = new StringContent(json, Encoding.UTF8, "application/json");
                    HttpResponseMessage response = await client.PostAsync($"{APIURL.apiurl}rateProduct.php", content);

                    if (response.IsSuccessStatusCode)
                    {
                        IsRefreshing = true;
                        // Display a success message
                        Console.WriteLine(response.Content);
                        await DisplayAlert("Success", "Product rated successfully", "Ok");
                       
                    }
                    else
                    {
                        // Display an error message
                        await DisplayAlert("Error", "Failed to rate product", "Ok");
                    }
                };
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", "Failed to connect", "Ok");
            }
            finally
            {
                IsRefreshing = false;  OnPropertyChanged(nameof(UserRating));
            
        }
        }


    }
}