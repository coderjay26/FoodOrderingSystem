using FoodOrderingSystem.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace FoodOrderingSystem.Pages
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class ProductDetailPage : ContentPage
	{
        private string email = null;
        private int item = 1;
        public ProductDetailPage(FoodProduct product)
        {
            // Bind the product details to the page
            BindingContext = product;

            InitializeComponent();
            //Shell.SetTabBarIsVisible(this, false);
            Shell.SetNavBarIsVisible(this, false);
        }

        private async void OnBackButtonClicked(object sender, EventArgs e)
        {
            await Navigation.PopAsync();
        }
        private async void OnAddToCartClicked(object sender, EventArgs e)
        {
            if(BindingContext is FoodProduct product)
            {
                try
                {
                    if (string.IsNullOrWhiteSpace(email))
                    {
                        email = SecureStorage.GetAsync("email").Result;
                    }
                    using (HttpClient client = new HttpClient())
                    {

                        var data = new { ProductId = product.Id, Quantity = item, Email = email};

                        string json = JsonConvert.SerializeObject(data);

                        StringContent content = new StringContent(json, Encoding.UTF8, "application/json");
                        HttpResponseMessage response = await client.PostAsync($"{APIURL.apiurl}addtoCart.php", content);

                        if (response.IsSuccessStatusCode)
                        {
                            // Display a success message
                            Console.WriteLine(response.Content);
                            await DisplayAlert("Success", "Product added to cart", "Ok");
                        }
                        else
                        {
                            // Display an error message
                            await DisplayAlert("Error", "Failed to add product to cart", "Ok");
                        }

                    } ;
                }catch (Exception ex)
                {
                   await DisplayAlert("Error", "Failed to connect", "Ok");
                }
            }
        }
        private async void OnAddItemCliked(object sender, EventArgs e)
        {
           
                item++;
                UpdateItem();
           
        }
        private async void OnMinusItemCliked(object sender, EventArgs e)
        {
            if (item > 1)
            {
                item--;
                UpdateItem();
            }
        }
        private void UpdateItem()
        {
            ItemLabel.Text = item.ToString();
        }
    }
}