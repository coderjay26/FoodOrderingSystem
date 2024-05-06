using FoodOrderingSystem.Page;
using FoodOrderingSystem.Pages;
using System;
using System.Globalization;
using System.Threading;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
[assembly: ExportFont("MaterialIconsTwoToneRegular.otf", Alias = "MaterialIconTwoTone")]
[assembly: ExportFont("MaterialIconsRegular.otf", Alias = "MaterialIconRegular")]
[assembly: ExportFont("MaterialIconsRoundRegular.otf", Alias = "MaterialIconRounded")]
[assembly: ExportFont("PoppinsBold.ttf", Alias = "PoppinsBold")]
[assembly: ExportFont("PoppinsMedium.ttf", Alias = "PoppinsMedium")]
[assembly: ExportFont("PoppinsRegular.ttf", Alias = "PoppinsRegular")]
namespace FoodOrderingSystem
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new SplashScreen();
            //MainPage = new NavigationPage(new MyAddress());
        }

        protected override void OnStart()
        {
            Thread.CurrentThread.CurrentCulture = new CultureInfo("en-Ph");
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
