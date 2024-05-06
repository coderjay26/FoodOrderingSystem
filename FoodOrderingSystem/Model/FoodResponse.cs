using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace FoodOrderingSystem.Model
{
    public class FoodResponse
    {
        [JsonProperty("data")]
        public List<FoodData> Data {  get; set; }
    }
}
