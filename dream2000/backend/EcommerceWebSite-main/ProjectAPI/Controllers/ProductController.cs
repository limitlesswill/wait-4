﻿using EcommerceWebSite.App.Services;
using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using System.Threading.Tasks;
using EcommerceWebSite.Domain.DTOs.Products;
using EcommerceWebSite.Domain.DTOs;
using EcommerceWebSite.Domain.Models;
using AutoMapper;
using EcommerceWebSite.Infrastractions.Repositores;
using EcommerceWebSite.App.Contract;
//using System.Linq;

namespace ProjectAPI.Controllers
{
    /* 
    infrastructure should handle if database,fields,records dont not exist.
    and other database exceptions.to solve this i use try, catch all database exception and
    in this approach i used null as indicator of error
     */
    [ApiController, Route("api/[Controller]")]
    public class ProductController : ControllerBase
    {
        const string errdb = "Database doesn't Exist";
        private readonly IProductService productService;

        public ProductController(IProductService _ps)
        {
            this.productService = _ps;
        }

        [HttpGet, Route("/api/Products")]
        public async Task<IActionResult> GetAll()
        {
            //if (HttpContext.User.Identity.IsAuthenticated == false) return Ok("Not Authenticated");
            List<GetAllProductDTO> ele = null;
            try
            {
                ele = await productService.GetAll();
            }
            catch
            {
                return Ok(errdb);
            }

            return ele is null ? Ok("Records NotFound") : Ok(ele);

        }
        [HttpGet("{numPerPage:int}/{pageNum:int}")]
        public async Task<ActionResult<List<GetAllProductDTO>>> GetAllProducts(int numPerPage, int pageNum)
        {
            try
            {
                var products = await productService.GetAllPaginationOfProduct(numPerPage, pageNum);
                return Ok(products);
            }
            catch (Exception ex)
            {
                
                return StatusCode(500, "Internal server error");
            }
        }
        [HttpGet, Route("{id:long}")]
        public async Task<IActionResult> Get([FromRoute] int id)
        {
            GetAllProductDTO ele = null;
            try
            {
                ele = await productService.GetOne(id);
            }
            catch
            {
                return Ok(errdb);
            }

            return ele is null ? Ok("product NotFound") : Ok(ele);
        }

       

        /* no one asked for such a funtion */
        //[HttpGet, Route("{name:alpha}")]
        //public async Task<IActionResult> GetByName([FromRoute] string name)
        //{
        //    CreateOrUpdateProductDTO? ele = null;
        //    try
        //    {
        //        var all = await productService.GetAll();
        //        ele = all.FirstOrDefault(x => x.Name.Contains(name));
        //    }
        //    catch
        //    {
        //        return Ok(errdb);
        //    }

        //    return ele is null ? Ok("product NotFound") : Ok(ele);
        //}

        /* in design */
        //public async Task<IActionResult> AddToCart([FromRoute] string name)
        //{
        // return Ok("ok");
        //}

        [HttpPost("Create")]
        public async Task<IActionResult> Create([FromBody] CreateOrUpdateProductDTO product)
        {
            if (ModelState.IsValid)
            {
                var ele = await productService.Create(product);

                if (ele is null || ele.Entity is null) return NotFound("Make sure you inserted all data correctly");

                var location = new Uri($"{Request.Scheme}://{Request.Host}{Request.Path}");
                var uri = location.AbsoluteUri;
                /* this needs to change, waiting they make up thier mind and choose a model to follow */
                return Created(uri + ele.Entity.id, " Created");
            }
            return BadRequest(ModelState);
        }
        [HttpPut("{id}")]
        public async Task<IActionResult> Update(int id, [FromBody] GetAllProductDTO product)
        {

            var prd = await productService.GetOne(id);
            
            if (prd is null)
                return NotFound("Product doesn't exist");
            else
            {
                await productService.Update(product);
                return Ok($"Product {prd.id} is Updeted");
            }

        }

        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteAsync(int id)
        {
            await productService.Delete(id);
            return Ok();
        }

        [HttpGet("{name}/SearchByName")]
        public async Task<ActionResult> SearchByName(string name)
        {
            var prd = await productService.SearchByName(name);
            return Ok(prd);
        }
        


    }
}
