﻿using EcommerceWebSite.Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EcommerceWebSite.App.Contract
{
   
    public interface ICommentRepository : IBaseRepository<Comment, int>
    {
		 Task<IQueryable<Comment>> GetAllCommentsForProductAsync(int productId);

	}
}
