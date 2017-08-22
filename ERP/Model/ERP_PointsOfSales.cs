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
    
    public partial class ERP_PointsOfSales
    {
        public ERP_PointsOfSales()
        {
            this.ERP_CreditNote = new HashSet<ERP_CreditNote>();
            this.ERP_Invoices = new HashSet<ERP_Invoices>();
            this.ERP_ShippingNote = new HashSet<ERP_ShippingNote>();
            this.RPT_ReportsPointOfSales = new HashSet<RPT_ReportsPointOfSales>();
        }
    
        public int pointOfSalesId { get; set; }
        public Nullable<int> pointOfSalesNumber { get; set; }
        public int descriptionId { get; set; }
        public int initialNumber { get; set; }
        public Nullable<int> currentNumber { get; set; }
        public Nullable<int> finalNumber { get; set; }
        public Nullable<int> codigoTipoComprobante { get; set; }
        public Nullable<int> parentPointOfSalesId { get; set; }
        public string cai { get; set; }
        public Nullable<System.DateTime> dueDate { get; set; }
    
        public virtual ICollection<ERP_CreditNote> ERP_CreditNote { get; set; }
        public virtual ICollection<ERP_Invoices> ERP_Invoices { get; set; }
        public virtual ICollection<ERP_ShippingNote> ERP_ShippingNote { get; set; }
        public virtual ICollection<RPT_ReportsPointOfSales> RPT_ReportsPointOfSales { get; set; }
    }
}