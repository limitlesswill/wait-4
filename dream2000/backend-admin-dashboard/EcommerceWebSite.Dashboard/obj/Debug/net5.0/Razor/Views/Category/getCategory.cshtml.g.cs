#pragma checksum "C:\Users\SafaaKamel\Desktop\dalia\Graduation Project\EcommerceWebSite-main\EcommerceWebSite.Dashboard\Views\Category\getCategory.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "313dca4e42c30bb62566d9cd11ce86b7a86e0698"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Category_getCategory), @"mvc.1.0.view", @"/Views/Category/getCategory.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\SafaaKamel\Desktop\dalia\Graduation Project\EcommerceWebSite-main\EcommerceWebSite.Dashboard\Views\_ViewImports.cshtml"
using EcommerceWebSite.Dashboard;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\SafaaKamel\Desktop\dalia\Graduation Project\EcommerceWebSite-main\EcommerceWebSite.Dashboard\Views\_ViewImports.cshtml"
using EcommerceWebSite.Dashboard.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"313dca4e42c30bb62566d9cd11ce86b7a86e0698", @"/Views/Category/getCategory.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"ce3216a930870920b0b30f71a5ebb4cdd38bdf13", @"/Views/_ViewImports.cshtml")]
    public class Views_Category_getCategory : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<Category>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "addCategory", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Category", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn d-inline-flex btn-sm btn-primary mx-1 mb-3"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n\r\n<!DOCTYPE html>\r\n<html lang=\"en\">\r\n");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("head", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "313dca4e42c30bb62566d9cd11ce86b7a86e06984618", async() => {
                WriteLiteral(@"
    <link rel=""stylesheet"" href=""https://use.fontawesome.com/releases/v5.0.8/css/all.css"">

    <style>
        /* Styles for the main page */
        .container {
            padding: 2rem 0rem;
        }

        h4 {
            margin: 2rem 0rem 1rem;
        }

        .table-image td,
        .table-image th {
            vertical-align: middle;
        }
    </style>
");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("body", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "313dca4e42c30bb62566d9cd11ce86b7a86e06985981", async() => {
                WriteLiteral("\r\n    <div class=\"container\">\r\n        ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "313dca4e42c30bb62566d9cd11ce86b7a86e06986280", async() => {
                    WriteLiteral("\r\n            <span class=\"pe-2\">\r\n                <i class=\"bi bi-plus\"></i>\r\n            </span>\r\n            <span>Add New</span>\r\n        ");
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_1.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral(@"
        <div class=""row"">
            <div class=""col-12"">
                <table class=""table table-bordered"" style=""background-color:white"">
                    <thead>
                        <tr>
                            <th scope=""col"">ID</th>
                            <th scope=""col"">EnName</th>
                            <th scope=""col"">ArName</th>
                            <th scope=""col"">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
");
#nullable restore
#line 45 "C:\Users\SafaaKamel\Desktop\dalia\Graduation Project\EcommerceWebSite-main\EcommerceWebSite.Dashboard\Views\Category\getCategory.cshtml"
                         foreach (var cat in Model)
                        {

#line default
#line hidden
#nullable disable
                WriteLiteral("                        <tr>\r\n                            <td>");
#nullable restore
#line 48 "C:\Users\SafaaKamel\Desktop\dalia\Graduation Project\EcommerceWebSite-main\EcommerceWebSite.Dashboard\Views\Category\getCategory.cshtml"
                           Write(cat.id);

#line default
#line hidden
#nullable disable
                WriteLiteral("</td>\r\n                            <td>");
#nullable restore
#line 49 "C:\Users\SafaaKamel\Desktop\dalia\Graduation Project\EcommerceWebSite-main\EcommerceWebSite.Dashboard\Views\Category\getCategory.cshtml"
                           Write(cat.EnName);

#line default
#line hidden
#nullable disable
                WriteLiteral("</td>\r\n                            <td>");
#nullable restore
#line 50 "C:\Users\SafaaKamel\Desktop\dalia\Graduation Project\EcommerceWebSite-main\EcommerceWebSite.Dashboard\Views\Category\getCategory.cshtml"
                           Write(cat.ArName);

#line default
#line hidden
#nullable disable
                WriteLiteral("</td>\r\n                            <td>\r\n                                <button type=\"button\" class=\"btn btn-primary\"><i class=\"fas fa-eye\"></i></button>\r\n                                <a");
                BeginWriteAttribute("href", " href=\"", 1734, "\"", 1781, 1);
#nullable restore
#line 53 "C:\Users\SafaaKamel\Desktop\dalia\Graduation Project\EcommerceWebSite-main\EcommerceWebSite.Dashboard\Views\Category\getCategory.cshtml"
WriteAttributeValue("", 1741, Url.Action("Edit", new { id = cat.id }), 1741, 40, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" class=\"btn btn-success\"><i class=\"fas fa-edit\"></i></a>\r\n                                <button");
                BeginWriteAttribute("onclick", " onclick=\"", 1879, "\"", 1921, 3);
                WriteAttributeValue("", 1889, "showConfirmationModal(\'", 1889, 23, true);
#nullable restore
#line 54 "C:\Users\SafaaKamel\Desktop\dalia\Graduation Project\EcommerceWebSite-main\EcommerceWebSite.Dashboard\Views\Category\getCategory.cshtml"
WriteAttributeValue("", 1912, cat.id, 1912, 7, false);

#line default
#line hidden
#nullable disable
                WriteAttributeValue("", 1919, "\')", 1919, 2, true);
                EndWriteAttribute();
                WriteLiteral(" type=\"button\" class=\"btn btn-danger\"><i class=\"fas fa-trash\"></i></button>\r\n                            </td>\r\n                        </tr>\r\n");
#nullable restore
#line 57 "C:\Users\SafaaKamel\Desktop\dalia\Graduation Project\EcommerceWebSite-main\EcommerceWebSite.Dashboard\Views\Category\getCategory.cshtml"
                        }

#line default
#line hidden
#nullable disable
                WriteLiteral("                    </tbody>\r\n                </table>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    ");
#nullable restore
#line 64 "C:\Users\SafaaKamel\Desktop\dalia\Graduation Project\EcommerceWebSite-main\EcommerceWebSite.Dashboard\Views\Category\getCategory.cshtml"
Write(await Html.PartialAsync("showConfirmationModal"));

#line default
#line hidden
#nullable disable
                WriteLiteral(";\r\n\r\n    <script>\r\n        var _apiBaseUrl = \'");
#nullable restore
#line 67 "C:\Users\SafaaKamel\Desktop\dalia\Graduation Project\EcommerceWebSite-main\EcommerceWebSite.Dashboard\Views\Category\getCategory.cshtml"
                      Write(ViewBag.ApiBaseUrl);

#line default
#line hidden
#nullable disable
                WriteLiteral(@"';
        function showConfirmationModal(userId) {
            var modal = document.getElementById('confirmModal');
            if (modal) {
                modal.style.display = 'block';

                var confirmBtn = document.getElementById('confirmBtn');
                var cancelBtn = document.getElementById('cancelBtn');

                confirmBtn.onclick = function () {
                    modal.style.display = 'none';
                    deleteUser(userId);
                };

                cancelBtn.onclick = function () {
                    modal.style.display = 'none';
                };
            } else {
                console.error('Modal element not found');
            }
        }

        async function deleteUser(userId) {
            try {
                const response = await fetch(`${_apiBaseUrl}/${userId}`, {
                    method: 'DELETE'
                });

                if (response.ok) {
                    console.log('User deleted su");
                WriteLiteral(@"ccessfully');

                    // Optionally, update the UI or reload the page
                    // Example: Reload the page after 1 second
                    setTimeout(function () {
                        location.reload();
                    }, 200);
                } else {
                    console.error('Error deleting user:', response.statusText);
                }

            } catch (error) {
                console.error('An unexpected error occurred:', error);
            }
        }
    </script>
");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n</html>\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<Category>> Html { get; private set; }
    }
}
#pragma warning restore 1591
