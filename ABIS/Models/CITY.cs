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
    
    public partial class CITY
    {
        public int CityID { get; set; }
        public string StateID { get; set; }
        public string CityName { get; set; }
    
        public virtual STATE STATE { get; set; }
    }
}
