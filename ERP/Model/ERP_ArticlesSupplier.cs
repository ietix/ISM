//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ERP.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class ERP_ArticlesSupplier
    {
        public ERP_ArticlesSupplier()
        {
            this.ERP_ArticleSupplierCostHistory = new HashSet<ERP_ArticleSupplierCostHistory>();
            this.ERP_ItemsShippingNote = new HashSet<ERP_ItemsShippingNote>();
        }
    
        public int articleSupplierId { get; set; }
        public int articleId { get; set; }
        public int supplierId { get; set; }
        public int personTypeId { get; set; }
    
        public virtual ERP_Articles ERP_Articles { get; set; }
        public virtual ICollection<ERP_ArticleSupplierCostHistory> ERP_ArticleSupplierCostHistory { get; set; }
        public virtual ICollection<ERP_ItemsShippingNote> ERP_ItemsShippingNote { get; set; }
    }
}
