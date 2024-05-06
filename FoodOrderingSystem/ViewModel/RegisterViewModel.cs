using FoodOrderingSystem.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace FoodOrderingSystem.ViewModel
{
    public class RegisterViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        public User User { get; set; }
        

        public virtual void OnNotifyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public RegisterViewModel()
        {
            User = new User();
        }

        public async Task<bool> RegisterUserAsync()
        {
            if (string.IsNullOrEmpty(User.FullName) || string.IsNullOrEmpty(User.Email) || string.IsNullOrEmpty(User.Password))
            {
                return false;
            }
            try
            {
                using(HttpClient client = new HttpClient())
                {
                    var json = JsonConvert.SerializeObject(User);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");
                    var response = await client.PostAsync(APIURL.apiurl + "register.php", content);
                    if(response.IsSuccessStatusCode)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }catch (Exception ex)
            {
                return false;
            }
        }
    }
}
