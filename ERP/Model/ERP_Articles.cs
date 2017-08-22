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
    
    public partial class ERP_Articles
    {
        public ERP_Articles()
        {
            this.ERP_ArticlesClient = new HashSet<ERP_ArticlesClient>();
            this.ERP_ArticlesSupplier = new HashSet<ERP_ArticlesSupplier>();
            this.ERP_PriceArticlesHistory = new HashSet<ERP_PriceArticlesHistory>();
            this.ERP_ItemsContract = new HashSet<ERP_ItemsContract>();
            this.ERP_ItemsSalesOrder = new HashSet<ERP_ItemsSalesOrder>();
        }
    
        public int articleId { get; set; }
        public int shortDescriptionId { get; set; }
        public int longDescriptionId { get; set; }
        public int brandId { get; set; }
        public string imagePath { get; set; }
        public int uomId { get; set; }
    
        public virtual AFIP_UnidadesMedida AFIP_UnidadesMedida { get; set; }
        public virtual ICollection<ERP_ArticlesClient> ERP_ArticlesClient { get; set; }
        public virtual ICollection<ERP_ArticlesSupplier> ERP_ArticlesSupplier { get; set; }
        public virtual ICollection<ERP_PriceArticlesHistory> ERP_PriceArticlesHistory { get; set; }
        public virtual ICollection<ERP_ItemsContract> ERP_ItemsContract { get; set; }
        public virtual ICollection<ERP_ItemsSalesOrder> ERP_ItemsSalesOrder { get; set; }
    }
}