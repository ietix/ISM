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
    
    public partial class AFIP_TiposMonedas
    {
        public AFIP_TiposMonedas()
        {
            this.ERP_Invoices = new HashSet<ERP_Invoices>();
            this.ERP_ArticleSupplierCostHistory = new HashSet<ERP_ArticleSupplierCostHistory>();
            this.ERP_PriceArticlesHistory = new HashSet<ERP_PriceArticlesHistory>();
            this.ERP_ItemsContract = new HashSet<ERP_ItemsContract>();
        }
    
        public int codigoTipoMoneda { get; set; }
        public string codigoTipoMonedaAFIP { get; set; }
        public int descriptionId { get; set; }
        public string abreviatura { get; set; }
    
        public virtual BASE_Descriptions BASE_Descriptions { get; set; }
        public virtual ICollection<ERP_Invoices> ERP_Invoices { get; set; }
        public virtual ICollection<ERP_ArticleSupplierCostHistory> ERP_ArticleSupplierCostHistory { get; set; }
        public virtual ICollection<ERP_PriceArticlesHistory> ERP_PriceArticlesHistory { get; set; }
        public virtual ICollection<ERP_ItemsContract> ERP_ItemsContract { get; set; }
    }
}
