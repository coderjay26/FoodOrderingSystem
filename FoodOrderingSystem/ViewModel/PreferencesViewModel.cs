using FoodOrderingSystem.Model;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.ComponentModel;
using System.Net.Http;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System;
using System.Linq;
using Xamarin.Essentials;

public class PreferencesViewModel : INotifyPropertyChanged
{
    public event PropertyChangedEventHandler PropertyChanged;

    protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }

    private List<string> _foodPreferences;
    public List<string> FoodPreferences
    {
        get { return _foodPreferences; }
        set
        {
            _foodPreferences = value;
            OnPropertyChanged(nameof(FoodPreferences));
        }
    }

    private Dictionary<string, bool> _selectedPreferences;
    public Dictionary<string, bool> SelectedPreferences
    {
        get { return _selectedPreferences; }
        set
        {
            _selectedPreferences = value;
            OnPropertyChanged();
        }
    }

    public PreferencesViewModel()
    {
        FoodPreferences = new List<string>
        {
            "Italian",
            "Mexican",
            "Chinese",
            "Indian",
            "Japanese",
            "Thai",
            "American",
            "Filipino"
        };

        SelectedPreferences = new Dictionary<string, bool>();
        foreach (var preference in FoodPreferences)
        {
            SelectedPreferences.Add(preference, true);
        }
    }

    public async Task<bool> PostAsyncPreferences()
    {
        try
        {
            string email = await SecureStorage.GetAsync("email");

            if (string.IsNullOrEmpty(email))
            {
                return false;
            }

            var selectedItems = SelectedPreferences.Where(x => x.Value).Select(x => x.Key).ToList();
            var data = new Dictionary<string, object>
            {
                { "Email", email },
                { "Preferences", selectedItems }
            };
            var json = JsonConvert.SerializeObject(data);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            using (HttpClient client = new HttpClient())
            {
                var response = await client.PostAsync(APIURL.apiurl + "savePreferences.php", content);

                if (response.IsSuccessStatusCode)
                {
                    await SecureStorage.SetAsync("preferences", "set");
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        catch (Exception ex)
        {
            return false;
        }
    }
}


