using FoodOrderingSystem.ViewModel;
using Xamarin.Forms;

namespace FoodOrderingSystem.Pages
{
    public partial class PreferencesPage : ContentPage
    {
        PreferencesViewModel preferencesViewModel;
        public PreferencesPage()
        {
            InitializeComponent();
            preferencesViewModel = new PreferencesViewModel();
            BindingContext = preferencesViewModel;
        }

        private async void OnContinueClicked(object sender, System.EventArgs e)
        {
            // Here, you can save the selected preferences and navigate to the home page
            var success = await preferencesViewModel.PostAsyncPreferences();
            if (success)
            {
                await DisplayAlert("Success", "Preferences saved", "OK");
                Application.Current.MainPage = new AppShell();
            }
        }
           
    }
}
