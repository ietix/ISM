//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BASE.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class BASE_Provinces
    {
        public BASE_Provinces()
        {
            this.BASE_Cities = new HashSet<BASE_Cities>();
        }
    
        public int provinceId { get; set; }
        public string name { get; set; }
        public int tableKeyId { get; set; }
        public int countryId { get; set; }
    
        public virtual ICollection<BASE_Cities> BASE_Cities { get; set; }
        public virtual BASE_Countries BASE_Countries { get; set; }
    }
}
