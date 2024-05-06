using System;
using System.Collections.Generic;
using System.Text;

namespace FoodOrderingSystem.Model
{
    public class Address
    {
        public string Purok {  get; set; }
        public string Barangay { get; set; }
        public string City { get; set; }
        public string Province { get; set; }
        public string ZipCode { get; set; }
    }
}
