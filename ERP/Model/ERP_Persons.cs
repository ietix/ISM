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
    
    public partial class ERP_Persons
    {
        public int personId { get; set; }
        public string denomination { get; set; }
        public int receiptTypeId { get; set; }
        public int personTypeId { get; set; }
        public bool isInactive { get; set; }
        public string observations { get; set; }
        public string internalNumber { get; set; }
        public string documentCode { get; set; }
    }
}