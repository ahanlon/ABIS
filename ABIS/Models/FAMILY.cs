//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ABIS.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class FAMILY
    {
        public long FamilyID { get; set; }
        public long FamilyTypeID { get; set; }
        public long StaffID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public bool EmergencyContactInd { get; set; }
    
        public virtual FAMILY_TYPE FAMILY_TYPE { get; set; }
        public virtual STAFF STAFF { get; set; }
    }
}
