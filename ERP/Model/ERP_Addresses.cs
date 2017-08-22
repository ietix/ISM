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
    
    public partial class ERP_Addresses
    {
        public ERP_Addresses()
        {
            this.ERP_ShippingNote = new HashSet<ERP_ShippingNote>();
        }
    
        public int addressId { get; set; }
        public string description { get; set; }
        public int provinceId { get; set; }
        public int cityId { get; set; }
        public Nullable<int> clientId { get; set; }
        public Nullable<int> supplierId { get; set; }
        public Nullable<int> companyId { get; set; }
    
        public virtual BASE_Cities BASE_Cities { get; set; }
        public virtual BASE_Provinces BASE_Provinces { get; set; }
        public virtual ERP_Clients ERP_Clients { get; set; }
        public virtual ERP_Companies ERP_Companies { get; set; }
        public virtual ERP_Suppliers ERP_Suppliers { get; set; }
        public virtual ICollection<ERP_ShippingNote> ERP_ShippingNote { get; set; }
    }
}