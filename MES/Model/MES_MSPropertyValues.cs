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
    
    public partial class MES_MSPropertyValues
    {
        public MES_MSPropertyValues()
        {
            this.MES_MSEquipmentClassProperties = new HashSet<MES_MSEquipmentClassProperties>();
            this.MES_MSEquipmentProperties = new HashSet<MES_MSEquipmentProperties>();
        }
    
        public int propertyValueId { get; set; }
        public string valueString { get; set; }
        public string dataType { get; set; }
        public int uomId { get; set; }
    
        public virtual ICollection<MES_MSEquipmentClassProperties> MES_MSEquipmentClassProperties { get; set; }
        public virtual ICollection<MES_MSEquipmentProperties> MES_MSEquipmentProperties { get; set; }
    }
}
