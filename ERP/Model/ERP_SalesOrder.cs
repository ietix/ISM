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
    
    public partial class ERP_SalesOrder
    {
        public ERP_SalesOrder()
        {
            this.ERP_ItemsSalesOrder = new HashSet<ERP_ItemsSalesOrder>();
        }
    
        public int salesOrderId { get; set; }
        public string clientInternalCode { get; set; }
        public System.DateTime releaseDate { get; set; }
        public int salesOrderStateId { get; set; }
        public string observations { get; set; }
        public Nullable<int> contractId { get; set; }
        public int personId { get; set; }
        public int personTypeId { get; set; }
    
        public virtual ERP_Contracts ERP_Contracts { get; set; }
        public virtual ICollection<ERP_ItemsSalesOrder> ERP_ItemsSalesOrder { get; set; }
        public virtual ERP_SalesOrderStates ERP_SalesOrderStates { get; set; }
    }
}
