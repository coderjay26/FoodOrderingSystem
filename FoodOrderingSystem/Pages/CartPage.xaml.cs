using FoodOrderingSystem.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace FoodOrderingSystem.Pages
{

	public partial class CartPage : ContentPage, INotifyPropertyChanged
	{
		private string email = null;
        private int item = 1;
		public event PropertyChangedEventHandler PropertyChanged;

		protected override void OnPropertyChanged(string propertyName)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}
		private List<CartList> _cartList;
		private bool _isRefreshing;
		public bool IsRefreshing
		{
			get { return _isRefreshing; }
			set { 
				_isRefreshing = value;
				OnPropertyChanged(nameof(IsRefreshing));
			}
		}
        private bool _isChecked;
        public bool IsChecked
        {
            get { return _isChecked; }
            set
            {
                if (_isChecked != value)
                {
                    _isChecked = value;
                    OnPropertyChanged(nameof(IsChecked));
                }
            }
        }

        private decimal _totalPrice;
		public decimal TotalPrice
		{
			get { return _totalPrice; }
			set
			{
				_totalPrice = value;
				OnPropertyChanged(nameof(TotalPrice));
			}
		}

		public List<CartList> CartS
		{
			get { return _cartList; }
			set
			{
				_cartList = value;
				OnPropertyChanged(nameof(CartS));
			}
		}
        public CartPage ()
		{
			InitializeComponent ();
            Shell.SetTabBarIsVisible(this, false);
			Shell.SetNavBarIsVisible(this, false);
            BindingContext = this;
			IsRefreshing = true;
			FetchData();
		}
        private async void OnBackButtonClicked(object sender, EventArgs e)
        {
            await Navigation.PopAsync();
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
					var response = await client.GetAsync($"{APIURL.apiurl}getCart.php?email={email}");
                    if (response.IsSuccessStatusCode)
					{
						var content = await response.Content.ReadAsStringAsync();
						var data = JsonConvert.DeserializeObject<CartResponse>(content);

						CartS = data.Data.Where(x => x.IsActive).Select(x => new CartList 
						{
							Id = x.Id,
							Name = x.FoodName,
							Price = x.Price,
							Quantity = x.Quantity,
							ImageUrl = APIURL.apiurl + x.ImageUrl,
							Total = x.Total,
							IsActive = x.IsActive
						}).ToList();
                    }
					else
					{
                        await DisplayAlert("Error", "Failed to fetch data in else", "OK");
                    }
					
                }
                
            }
            catch(Exception ex)
			{
                await DisplayAlert("Error", ex.Message, "OK");
				Console.WriteLine(ex.Message);
            }
			finally
			{
				IsRefreshing =false;
			}
		}
		public ICommand RefreshCommand => new Command(async () =>
		{
			IsRefreshing = true;
			await FetchData();
			IsRefreshing = false;
		});
        private async void OnAddItemCliked(object sender, EventArgs e)
        {

            item++;

        }
        private async void OnMinusItemCliked(object sender, EventArgs e)
        {
            if (item > 1)
            {
                item--;
            
            }
        }
        private void OnCheckBoxCheckedChanged(object sender, CheckedChangedEventArgs e)
        {
            if (sender is CheckBox checkBox && checkBox.BindingContext is CartList item)
            {
                item.IsChecked = e.Value;
                CalculateTotalPrice(); // Calculate total price whenever the checkbox value changes
            }
        }
        private void CalculateTotalPrice()
        {
            TotalPrice = CartS.Where(x => x.IsChecked).Sum(x => x.Total);
        }
		private async void OnBuyCliked(object sender, EventArgs e)
		{
			try
			{
				List<CartList> checkedItems = CartS.Where(x => x.IsChecked).ToList();
				if(checkedItems.Count > 0)
				{
					using (HttpClient client = new HttpClient())
					{
						var items = checkedItems.Select(c => new 
						{ c.Id });
                        var json = JsonConvert.SerializeObject(items);
						var content = new StringContent(json, Encoding.UTF8, "application/json");

						var response = await client.PostAsync($"{APIURL.apiurl}purchaseFoods.php", content);
						Console.WriteLine(json);
						if(response.IsSuccessStatusCode)
						{
							await DisplayAlert("Success", "Items purchased successfully", "OK");
							
                            await FetchData();
							CalculateTotalPrice();
                        }
						else
						{
                            await DisplayAlert("Error", "Failed to purchase items", "OK");
                        }
                    }
				}
				else
				{
                    await DisplayAlert("Error", "No items selected for purchase", "OK");
                }
			}
			catch( Exception ex)
			{
				await DisplayAlert("Error", ex.Message, "Ok");
			}
		}
    }
}