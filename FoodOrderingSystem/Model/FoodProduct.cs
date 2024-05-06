using System;
using System.Collections.Generic;
using System.Text;

namespace FoodOrderingSystem.Model
{
    public class FoodProduct
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string ImageUrl { get; set; }
        public decimal Price { get; set; }
        public string Ingredients {  get; set; } 
        public string Description { get; set; }
    }

}
