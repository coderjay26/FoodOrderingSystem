using FoodOrderingSystem.Model;
using System;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms.Xaml;
using Xamarin.Forms;
using System.Net.Http;
using System.Windows.Input;
using Xamarin.Essentials;
using System.Reflection.Emit;

namespace FoodOrderingSystem.Pages
{
    public partial class MainPage : ContentPage, INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        string email = null;
        protected override void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        }

        private List<FoodProduct> _foodProducts;
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
        private string _searchText;
        public string SearchText
        {
            get { return _searchText; }
            set
            {
                _searchText = value;
                OnPropertyChanged(nameof(SearchText));
                IsRefreshing = true; // Show refreshing animation
                FilterFoodItems();
                IsRefreshing = false; // Hide refreshing animation
            }
        }


        public List<FoodProduct> FoodProducts
        {
            get { return _foodProducts; }
            set
            {
                _foodProducts = value;
                OnPropertyChanged(nameof(FoodProducts));
            }
        }
   


        public MainPage()
        {
            InitializeComponent();
            BindingContext = this;
            IsRefreshing = true; // Show refreshing animation
            CheckAndLoadDataAsync();
        }
        private void FilterFoodItems()
        {
            try
            {
                if (string.IsNullOrWhiteSpace(SearchText))
                {

                    FoodProducts = _foodProducts;
                    Result.Text = $"Best Food For You";
                }
                else
                {
                    FoodProducts = _foodProducts
                        .Where(p => p.Name.ToLower().Contains(SearchText.ToLower()))
                        .ToList();
                    Result.Text = $"Result for {SearchText}";
                }

                OnPropertyChanged(nameof(FoodProducts));
            }catch (Exception ex)
            {
                DisplayAlert("Error", "Failed to fetch data", "OK");
            }
            finally
            {
                OnPropertyChanged(nameof(FoodProducts));
            }
           
        }

        private async Task FetchData()
        {
           
            try
            {
                using (HttpClient client = new HttpClient())
                {
                    if (string.IsNullOrWhiteSpace(email))
                    {
                        email = SecureStorage.GetAsync("email").Result;
                    }
                    var response = await client.GetAsync($"{APIURL.apiurl}/getfoods.php?email={email}");
                    if (response.IsSuccessStatusCode)
                    {
                        var content = await response.Content.ReadAsStringAsync();
                        var data = JsonConvert.DeserializeObject<FoodResponse>(content);
                        FoodProducts = data.Data.Select(foodData => new FoodProduct
                        {
                            Id = foodData.Id,
                            Name = foodData.FoodName,
                            ImageUrl = APIURL.apiurl + foodData.ImageUrl,
                            Price = foodData.Price,
                            Ingredients = foodData.Ingredients,
                            Description = foodData.Description,
                        }).ToList();
                        FilterFoodItems();
                    }
                    else
                    {
                        await DisplayAlert("Error", "Failed to fetch data", "OK");
                    }
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", "Failed to fetch data", "OK");
            }
            finally
            {
                IsRefreshing = false; // Hide refreshing animation
            }
        }

        public ICommand RefreshCommand => new Command(async () =>
        {
            IsRefreshing = true; // Show refreshing animation
            await FetchData();
            IsRefreshing = false; // Hide refreshing animation
        });
        private async void OnItemSelected(object sender, SelectionChangedEventArgs e)
        {
            if (e.CurrentSelection.FirstOrDefault() is FoodProduct selectedProduct)
            {
                // Navigate to the detail page passing the selected product
                await Navigation.PushAsync(new ProductDetailPage(selectedProduct));
                //Application.Current.MainPage = new ProductDetailPage(selectedProduct);
            }
        }
        public async void OnCartClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new CartPage());
        }

        private async Task CheckAndLoadDataAsync()
        {
            string email = await SecureStorage.GetAsync("email");
            try
            {
                if (!string.IsNullOrEmpty(email))
                {
                    using (HttpClient client = new HttpClient())
                    {
                        var json = JsonConvert.SerializeObject(email);
                        var content = new StringContent(json, Encoding.UTF8, "application/json");
                        var response = await client.PostAsync(APIURL.apiurl + "checkaddress.php", content);

                        if (response.IsSuccessStatusCode)
                        {
                            await FetchData();
                        }
                        else
                        {
                           await Navigation.PushModalAsync(new MyAddress());
                        }
                    }
                }
                else
                {
                    await DisplayAlert("Opps", "Something went wrong😢😓😢", "Ok");
                }
            }catch(Exception ex)
            {
               await DisplayAlert("Opps", "Something went wrong😢😓😢", "Ok");
            }

        }
    }
}
