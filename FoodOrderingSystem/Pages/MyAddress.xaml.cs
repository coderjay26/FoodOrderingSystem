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
    public partial class MyAddress : ContentPage
    {
        string email = null;
        public MyAddress()
        {
            InitializeComponent();
            CheckIfHasAddress();
        }
        public async void OnSaveAddress(object sender, EventArgs e)
        {
            string email = SecureStorage.GetAsync("email").Result;
            AddressEmail data = new AddressEmail
            {
                Email = email,
                Purok = Purok.Text,
                Barangay = Barangay.Text,
                City = City.Text,
                Province = Province.Text,
                ZipCode = ZipCode.Text,
            };
            try
            {
                if(string.IsNullOrWhiteSpace(Purok.Text) || string.IsNullOrWhiteSpace(Barangay.Text) || string.IsNullOrWhiteSpace(City.Text) || string.IsNullOrWhiteSpace(Province.Text) || string.IsNullOrWhiteSpace(ZipCode.Text))
                {
                    await DisplayAlert("Error", "Some Entry is Empty", "Ok");
                }
                else
                {
                    using(HttpClient client = new HttpClient())
                    {
                        var json = JsonConvert.SerializeObject(data);
                        var content = new StringContent(json, UTF32Encoding.UTF8, "application/json");
                        var response = await client.PostAsync(APIURL.apiurl + "saveaddress.php", content);
                        if (response.IsSuccessStatusCode)
                        {
                            await SecureStorage.SetAsync("address", data.Purok.ToString());
                            await Navigation.PopModalAsync();
                        }
                        else
                        {
                            await DisplayAlert("Error", "Something wrong", "Ok");
                        }
                    }
                }
            }
            catch(Exception ex)
            {
                await DisplayAlert("Error", "Something wrong", "Ok");
            }

        }
        public async void CheckIfHasAddress()
        {
            try
            {
                if (string.IsNullOrWhiteSpace(email))
                {
                    email = SecureStorage.GetAsync("email").Result;
                }
                using (HttpClient client = new HttpClient())
                {
                    var json = JsonConvert.SerializeObject(email);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");
                    var response = await client.PostAsync(APIURL.apiurl + "checkaddress.php", content);

                    if(response.IsSuccessStatusCode)
                    {
                        var AddressJson = await response.Content.ReadAsStringAsync();
                        var address = JsonConvert.DeserializeObject<Address>(AddressJson);

                        Purok.Text = address.Purok;
                        Barangay.Text = address.Barangay;
                        City.Text = address.City;
                        Province.Text = address.Province;
                        ZipCode.Text = address.ZipCode;
                    }
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Opps", "Something went wrong😢😓😢", "Ok");
            }
        }
    }
}