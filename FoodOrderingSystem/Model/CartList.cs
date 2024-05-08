using System;
using System.Collections.Generic;
using System.Text;

namespace FoodOrderingSystem.Model
{
   public class CartList
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Quantity { get; set; }
        public decimal Price { get; set; }
        public decimal Total { get; set; }
        public string ImageUrl { get; set; }
        public bool IsChecked { get; set; }
        public string Status { get; set; }
        public bool IsActive { get; set; }
        public int UserRating {  get; set; }
    }
}
