using FoodOrderingSystem.Pages;
using FoodOrderingSystem.Pages.Auth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace FoodOrderingSystem.Page
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class SplashScreen : ContentPage
	{
		public SplashScreen ()
		{
			InitializeComponent ();
           
            // Start the logo animation when the page appears
            this.Appearing += async (s, e) =>
            {
                await logoImage.ScaleTo(1.2, 2000); // Scale up to 120% over 1 second
                await logoImage.ScaleTo(1.0, 1000); // Scale down to 100% over 1 second
            };
        }
        protected override async void OnAppearing()
        {
            base.OnAppearing();
            await Task.Delay(5000);
            string email = SecureStorage.GetAsync("email").Result;
            if (!string.IsNullOrEmpty(email))
            {
                Application.Current.MainPage = new AppShell();
            }
            else
            {
                  Application.Current.MainPage = new NavigationPage(new Login());
                //Application.Current.MainPage = new NavigationPage(new MyAddress());
            }
        }
        
    }
}