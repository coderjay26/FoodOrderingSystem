using FoodOrderingSystem.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.CommunityToolkit.Extensions;
using Xamarin.CommunityToolkit.UI.Views.Options;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace FoodOrderingSystem.Pages.Auth
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Register : ContentPage 
    {
        private RegisterViewModel viewModel;
        public Register()
        {
            InitializeComponent();
            viewModel = new RegisterViewModel();
            BindingContext = viewModel;
           NavigationPage.SetHasNavigationBar(this, false);
        }
        private async void OnBackToLoginClicked(object sender, EventArgs e)
        {
            await Navigation.PopAsync();
        }
        private async void OnRegisterClicked(object sender, EventArgs e)
        {
            bool success = await viewModel.RegisterUserAsync();
            if (success)
            {
                await Navigation.PopAsync();
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
                        Message = "Registration failed!"
                    },
                    BackgroundColor = Color.FromHex("#D14C00"),
                    Duration = TimeSpan.FromSeconds(5),
                    Actions = new[] { action }

                };
                Application.Current.MainPage.DisplaySnackBarAsync(options);
            }
           
        }
    }
}