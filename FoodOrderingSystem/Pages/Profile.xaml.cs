using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using FoodOrderingSystem.Pages.Auth;
using Xamarin.Forms.Xaml;

namespace FoodOrderingSystem.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Profile : ContentPage
    {
        public Profile()
        {
            InitializeComponent();
            
           string UserName = SecureStorage.GetAsync("email").Result;
           uName.Text = $"Mr. {UserName}";
        }
        private void OnLogoutClicked(object sender, EventArgs e)
        {
            SecureStorage.RemoveAll();
            Application.Current.MainPage = new NavigationPage(new Login());
        }
        private async void OnMyOrdersClicked(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new OrderPage());
        }
        private async void OnMyAdressClicked(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new MyAddress());
        }
    }
}