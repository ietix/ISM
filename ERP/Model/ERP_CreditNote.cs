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
    
    public partial class ERP_CreditNote
    {
        public ERP_CreditNote()
        {
            this.ERP_ItemsCreditNote = new HashSet<ERP_ItemsCreditNote>();
        }
    
        public int creditNoteId { get; set; }
        public int pointOfSaleId { get; set; }
        public int creditNoteNumber { get; set; }
        public int invoiceId { get; set; }
        public bool invoiceCompleted { get; set; }
        public decimal total { get; set; }
        public decimal subtotal { get; set; }
        public System.DateTime creditNoteDate { get; set; }
        public string cae { get; set; }
        public Nullable<System.DateTime> dueDate { get; set; }
        public int receiptTypeId { get; set; }
    
        public virtual ERP_PointsOfSales ERP_PointsOfSales { get; set; }
        public virtual ICollection<ERP_ItemsCreditNote> ERP_ItemsCreditNote { get; set; }
        public virtual ERP_Invoices ERP_Invoices { get; set; }
    }
}
