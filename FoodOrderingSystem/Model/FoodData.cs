using System;
using System.Collections.Generic;
using System.Text;

namespace FoodOrderingSystem.Model
{
    public class FoodData
    {
        public int Id { get; set; }
        public string FoodName { get; set; }
        public string CuisineName { get; set; }
        public string Description { get; set; }
        public string Ingredients { get; set; }
        public decimal Price { get; set; }
        public string ImageUrl { get; set; }
        public int Rate { get; set; }
    }
}
