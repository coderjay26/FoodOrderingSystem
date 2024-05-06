using FoodOrderingSystem.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace FoodOrderingSystem.ViewModel
{
    public class LoginViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        public UserDetails UserDetails { get; set; }

        public LoginViewModel()
        {
            UserDetails = new UserDetails();
        }
        
        public async Task<bool> LoginAsync() 
        {
            if(string.IsNullOrEmpty(UserDetails.Email) || string.IsNullOrEmpty(UserDetails.Password))
            {
                return false;
            }
            try
            {
                using(HttpClient client = new HttpClient())
                {
                    var json = JsonConvert.SerializeObject(UserDetails);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");
                    var response = await client.PostAsync(APIURL.apiurl + "login.php", content);

                    if(response.IsSuccessStatusCode)
                    {
                        await SecureStorage.SetAsync("email", UserDetails.Email);
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }catch(Exception ex)
            {
                return false;
            }
        }
    }
}
