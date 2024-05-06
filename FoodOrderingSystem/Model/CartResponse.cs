using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace FoodOrderingSystem.Model
{
    class CartResponse
    {
        [JsonProperty("data")]
        public List<CartModel> Data { get; set; }
    }
}
