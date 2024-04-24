﻿using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EcommerceWebSite.Domain.Models
{
    public class ApplicationUser : IdentityUser
    {

        public string fName { get; set; } 
        public string lName { get; set; }

        public List<CartItem> Cart { get; set; }
        public List<Order> Orders { get; set; } = new List<Order>();
    }
   
}
