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
    
    public partial class ERP_Companies
    {
        public ERP_Companies()
        {
            this.ERP_Addresses = new HashSet<ERP_Addresses>();
            this.ERP_BankAccounts = new HashSet<ERP_BankAccounts>();
        }
    
        public int companyId { get; set; }
        public string denomination { get; set; }
        public int codigoTipoDocumento { get; set; }
        public bool isInactive { get; set; }
        public string observations { get; set; }
        public string documentCode { get; set; }
    
        public virtual ICollection<ERP_Addresses> ERP_Addresses { get; set; }
        public virtual ICollection<ERP_BankAccounts> ERP_BankAccounts { get; set; }
    }
}