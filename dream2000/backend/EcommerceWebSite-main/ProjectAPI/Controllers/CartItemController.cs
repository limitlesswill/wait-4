﻿using EcommerceWebSite.App.Services;
using EcommerceWebSite.Domain.DTOs;
using EcommerceWebSite.Domain.DTOs.CartItem;
using EcommerceWebSite.Domain.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ProjectAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CartItemController : Controller
    {

        private ICartItemService CartItemService { get; }

        public CartItemController(ICartItemService CartItemService)
        {
            this.CartItemService = CartItemService;
        }
        [HttpGet]
        public async Task<ActionResult> GetCartItemAsync()
        {
            ResultDataList<CreateOrUpdateCartItemDto> CartItems = await CartItemService.GetAll();
            return Ok(CartItems.Entities);
        }
        [HttpGet("{Id}/GetUserCartItems")]
        public async Task<ActionResult> GetUserCartItems(string Id)
        {
            List<GetCartItemDto> CartItems = await CartItemService.GetUserCartItems(Id);
            return Ok(CartItems);
        }



        [HttpGet]
        [Route("{id}")]
        public async Task<ActionResult> GetById([FromRoute] int id)
        {
            CreateOrUpdateCartItemDto C = await CartItemService.GetOne(id);
            return Ok(C);
        }

        [HttpPost]
        public async Task PostAsync([FromBody] CreateOrUpdateCartItemDto CartItemDto)
        {
            CreateOrUpdateCartItemDto CartItemDto1 = new CreateOrUpdateCartItemDto();
            CartItemDto1.CustId = CartItemDto.CustId;
            CartItemDto1.ProductId = CartItemDto.ProductId;
           CartItemDto1.Quantity = CartItemDto.Quantity;
            CartItemDto1.TotalPrice = CartItemDto.TotalPrice;
            _ = await CartItemService.Create(CartItemDto1);
        }

        [HttpPut("{id}")]
        public async Task Put(int id, [FromBody] CreateOrUpdateCartItemDto CartItemDto)
        {
            CreateOrUpdateCartItemDto c1 = await CartItemService.GetOne(id);
            c1.CustId = CartItemDto.CustId;
            c1.ProductId = CartItemDto.ProductId;
            c1.Quantity = CartItemDto.Quantity;
            c1.TotalPrice = CartItemDto.TotalPrice;

            await CartItemService.Update(c1);
        }
        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteAsync(int id)
        {
            await CartItemService.Delete(id);
            return Ok();
        }

    }
}
