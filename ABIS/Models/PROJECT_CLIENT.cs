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
    
    public partial class PROJECT_CLIENT
    {
        public long ProjectID { get; set; }
        public long ClientID { get; set; }
        public bool ProjectLeadInd { get; set; }
    
        public virtual CLIENT CLIENT { get; set; }
        public virtual PROJECT PROJECT { get; set; }
    }
}
