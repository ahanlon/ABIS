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
    
    public partial class MARKET
    {
        public MARKET()
        {
            this.PROJECT_STAFF = new HashSet<PROJECT_STAFF>();
        }
    
        public int MarketID { get; set; }
        public string MarketName { get; set; }
    
        public virtual ICollection<PROJECT_STAFF> PROJECT_STAFF { get; set; }
    }
}
