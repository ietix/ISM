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
    
    public partial class ERP_Suppliers
    {
        public ERP_Suppliers()
        {
            this.ERP_Addresses = new HashSet<ERP_Addresses>();
            this.ERP_ArticlesSupplier = new HashSet<ERP_ArticlesSupplier>();
            this.ERP_BankAccounts = new HashSet<ERP_BankAccounts>();
            this.ERP_BankRelations = new HashSet<ERP_BankRelations>();
            this.ERP_Contacts = new HashSet<ERP_Contacts>();
        }
    
        public int supplierId { get; set; }
        public string denomination { get; set; }
        public int codigoTipoDocumento { get; set; }
        public bool isInactive { get; set; }
        public string observations { get; set; }
        public Nullable<int> internalNumber { get; set; }
        public string documentCode { get; set; }
    
        public virtual AFIP_TiposDocumento AFIP_TiposDocumento { get; set; }
        public virtual ICollection<ERP_Addresses> ERP_Addresses { get; set; }
        public virtual ICollection<ERP_ArticlesSupplier> ERP_ArticlesSupplier { get; set; }
        public virtual ICollection<ERP_BankAccounts> ERP_BankAccounts { get; set; }
        public virtual ICollection<ERP_BankRelations> ERP_BankRelations { get; set; }
        public virtual ICollection<ERP_Contacts> ERP_Contacts { get; set; }
    }
}