//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MES.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class MES_MSProperties
    {
        public MES_MSProperties()
        {
            this.MES_MSEquipmentClassProperties = new HashSet<MES_MSEquipmentClassProperties>();
            this.MES_MSEquipmentProperties = new HashSet<MES_MSEquipmentProperties>();
        }
    
        public int propertyId { get; set; }
        public string name { get; set; }
        public int descriptionId { get; set; }
    
        public virtual ICollection<MES_MSEquipmentClassProperties> MES_MSEquipmentClassProperties { get; set; }
        public virtual ICollection<MES_MSEquipmentProperties> MES_MSEquipmentProperties { get; set; }
    }
}
