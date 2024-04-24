
using EcommerceWebSite.Domain.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
namespace EcommerceWebSite.Context
{
    public class EcommerceContext : IdentityDbContext<ApplicationUser>
    {
        public DbSet<ApplicationUser> Users  { get; set; }

        public DbSet<SubCategory> SubCategores { get; set; }
        public DbSet<CartItem> carts { get; set; }
        public DbSet<Category> categories { get; set; }
        public DbSet<Order> orders { get; set; }
        public DbSet<OrderDetails> orderDetails { get; set; }
        public DbSet<Product> products { get; set; }
        public DbSet<Comment> Comments { get; set; }
        public EcommerceContext()
        {

        }
        public EcommerceContext(DbContextOptions options) : base(options)
        {
        }

    }

}
