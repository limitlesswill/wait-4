using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EcommerceWebSite.Dashboard.Models
{
    public class Order
    {
        public int Id { get; set; }
        public decimal FinalPrice { get; set; }
        public DateTime Date { get; set; }
        public int State { get; set; }
        public string UserID { get; set; }
    }
}
