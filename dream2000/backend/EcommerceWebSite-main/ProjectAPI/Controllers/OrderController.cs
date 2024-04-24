﻿using EcommerceWebSite.App.Services;
using EcommerceWebSite.Domain.DTOs;
using EcommerceWebSite.Domain.DTOs.CartItem;
using EcommerceWebSite.Domain.Enum;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectAPI.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class OrderController : ControllerBase
	{
		private readonly IOrderService _orderService;

		public OrderController(IOrderService orderService)
		{
            this._orderService = orderService;
		}

		[HttpGet]
		public async Task<ActionResult> GetAllOrders()
		{
			List<OrderDTO> orders = await _orderService.GetAll();
			return Ok(orders);
		}

        [HttpGet("{UId}/GetUseOrders")]
        public async Task<ActionResult> GetUseOrders(string UId)
        {
            //UId = HttpContext.User.Claims.FirstOrDefault(c => c.Type == "sid").Value;
            List<OrderDTO> orders = await _orderService.GetUserOrdars(UId);
            return Ok(orders);
        }

        [HttpGet("{id}")]
		public async Task<ActionResult> GetOrderById(int id)
		{
			OrderDTO order = await _orderService.GetOne(id);
			return Ok(order);
		}

		[HttpPost]
		public async Task CreateOrder([FromBody] OrderDTO orderDTO)
		{
			//orderDTO.UserID = HttpContext.User.Claims.FirstOrDefault(c => c.Type == "sid").Value;

            OrderDTO orderDto1 = new OrderDTO();
			// Set initial state for a new order
			orderDto1.State = OrderState.Pending;
			orderDto1.FinalPrice=orderDTO.FinalPrice;
			orderDto1.Date=orderDTO.Date;
			orderDto1.UserID=orderDTO.UserID;
			orderDto1.Address=orderDTO.Address;
			_ = await _orderService.Create(orderDto1);
			
		}

		[HttpPut("{id}")]
		public async Task UpdateOrder(int id, [FromBody] OrderDTO orderDTO)
		{
			OrderDTO order = await _orderService.GetOne(id);
			
			order.State = orderDTO.State;
			order.FinalPrice = orderDTO.FinalPrice;
			order.Date = orderDTO.Date;
			order.UserID = orderDTO.UserID;
			order.Address=orderDTO.Address;
		

			 await _orderService.Update(id,order);
			
		}

		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteOrder(int id)
		{
			var order = await _orderService.GetOne(id);
			if (order == null)
			{
				return NotFound();
			}
            await _orderService.Delete(id);
			return Ok();
		}

		//[HttpPut("{id}/confirm")]
		//public async Task<IActionResult> ConfirmOrder(int id)
		//{
		//	//var result = await _orderService.ConfirmOrder(id);
		//	if (!result.IsSuccess)
		//	{
		//		return BadRequest(result.msg);
		//	}

		//	return Ok(result.Entity);
		//}

		//[HttpPut("{id}/cancel")]
		//public async Task<IActionResult> CancelOrder(int id)
		//{
		//	var result = await _orderService.CancelOrder(id);
		//	if (!result.IsSuccess)
		//	{
		//		return BadRequest(result.msg);
		//	}

		//	return Ok(result.Entity);
		//}
	}
}
