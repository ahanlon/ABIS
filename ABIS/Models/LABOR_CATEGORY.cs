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
    
    public partial class LABOR_CATEGORY
    {
        public LABOR_CATEGORY()
        {
            this.LABOR_CATALOG = new HashSet<LABOR_CATALOG>();
        }
    
        public long ASDLaborCategoryID { get; set; }
        public string LaborCategory { get; set; }
    
        public virtual ICollection<LABOR_CATALOG> LABOR_CATALOG { get; set; }
    }
}