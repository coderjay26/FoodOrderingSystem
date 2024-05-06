using FoodOrderingSystem.Model;
using FoodOrderingSystem.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.CommunityToolkit.Extensions;
using Xamarin.CommunityToolkit.UI.Views.Options;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace FoodOrderingSystem.Pages.Auth
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Login : ContentPage
    {
        private LoginViewModel LoginViewModel;
        public Login()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);
            LoginViewModel = new LoginViewModel();
            BindingContext = LoginViewModel;
        }
        private async void OnLoginClicked(object sender, EventArgs e)
        {

            var success = await LoginViewModel.LoginAsync();
            if (success)
            {
                string preference = SecureStorage.GetAsync("email").Result;

                if (!string.IsNullOrEmpty(preference))
                {
                    //Application.Current.MainPage = new NavigationPage(new PreferencesPage());
                    Application.Current.MainPage = new AppShell();
                }
                else
                {
                    var action = new SnackBarActionOptions
                    {
                        Font = Font.OfSize("PoppinsMedium", 14),
                        ForegroundColor = Color.White,
                        Text = "Ok"
                    };
                    var options = new SnackBarOptions
                    {
                        MessageOptions = new MessageOptions
                        {
                            Font = Font.OfSize("PoppinsMedium", 14),
                            Message = "Login failed!"
                        },
                        BackgroundColor = Color.FromHex("#D14C00"),
                        Duration = TimeSpan.FromSeconds(5),
                        Actions = new[] { action }

                    };
                    Application.Current.MainPage.DisplaySnackBarAsync(options);
                }
                
            }
            else
            {
                var action = new SnackBarActionOptions
                {
                    Font = Font.OfSize("PoppinsMedium", 14),
                    ForegroundColor = Color.White,
                    Text = "Ok",   
                };
                var options = new SnackBarOptions
                {
                    MessageOptions = new MessageOptions
                    {
                        Font = Font.OfSize("PoppinsMedium", 14),
                        Message = "Login failed!"
                    },
                    BackgroundColor = Color.FromHex("#D14C00"),
                    Duration = TimeSpan.FromSeconds(5),
                    Actions = new[] { action }

                };
                Application.Current.MainPage.DisplaySnackBarAsync(options);
            }
        }

        private async void OnRegisterClicked(object sender, EventArgs e)
        {
            // Navigate to register page
            await Navigation.PushAsync(new Register());
        }
        
    }
}