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
    
    public partial class BASE_UserProfiles
    {
        public int userProfilesId { get; set; }
        public int userId { get; set; }
        public int profileId { get; set; }
    
        public virtual BASE_Profiles BASE_Profiles { get; set; }
        public virtual BASE_Users BASE_Users { get; set; }
    }
}
