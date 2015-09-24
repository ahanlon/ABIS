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
    
    public partial class LABOR_CATALOG
    {
        public LABOR_CATALOG()
        {
            this.STAFFs = new HashSet<STAFF>();
        }
    
        public long LaborCatalogID { get; set; }
        public string ClientTitle { get; set; }
        public string ClientVariant { get; set; }
        public string ClientEducation { get; set; }
        public int ClientYearsOfExp { get; set; }
        public decimal ClientRate { get; set; }
        public string ASDJobName { get; set; }
        public string ASDVariant { get; set; }
        public bool ExemptInd { get; set; }
        public long ASDLaborCategoryID { get; set; }
    
        public virtual ICollection<STAFF> STAFFs { get; set; }
        public virtual LABOR_CATEGORY LABOR_CATEGORY { get; set; }
    }
}
