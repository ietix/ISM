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
    
    public partial class MES_MSEquipmentClasses
    {
        public MES_MSEquipmentClasses()
        {
            this.MES_MSEquipmentClassEquipments = new HashSet<MES_MSEquipmentClassEquipments>();
            this.MES_MSEquipmentClasses1 = new HashSet<MES_MSEquipmentClasses>();
            this.MES_MSEquipmentClassProperties = new HashSet<MES_MSEquipmentClassProperties>();
            this.MES_MSTestedEquipmentClassProperties = new HashSet<MES_MSTestedEquipmentClassProperties>();
        }
    
        public int equipmentClassId { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public Nullable<int> equipmentClassBaseId { get; set; }
    
        public virtual ICollection<MES_MSEquipmentClassEquipments> MES_MSEquipmentClassEquipments { get; set; }
        public virtual ICollection<MES_MSEquipmentClasses> MES_MSEquipmentClasses1 { get; set; }
        public virtual MES_MSEquipmentClasses MES_MSEquipmentClasses2 { get; set; }
        public virtual ICollection<MES_MSEquipmentClassProperties> MES_MSEquipmentClassProperties { get; set; }
        public virtual ICollection<MES_MSTestedEquipmentClassProperties> MES_MSTestedEquipmentClassProperties { get; set; }
    }
}
