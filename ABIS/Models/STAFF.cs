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

    
    public partial class STAFF
    {
        public STAFF()
        {
            this.COMPENSATIONs = new HashSet<COMPENSATION>();
            this.FAMILies = new HashSet<FAMILY>();
            this.MEETINGs = new HashSet<MEETING>();
            this.PROJECT_STAFF = new HashSet<PROJECT_STAFF>();
        }
    
        public long StaffID { get; set; }
        public long LaborCatalogID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public System.DateTime BirthDate { get; set; }
        public System.DateTime StartDate { get; set; }
        public byte[] Photo { get; set; }
        public bool IndirectInd { get; set; }
    
        public virtual ICollection<COMPENSATION> COMPENSATIONs { get; set; }
        public virtual ICollection<FAMILY> FAMILies { get; set; }
        public virtual LABOR_CATALOG LABOR_CATALOG { get; set; }
        public virtual ICollection<MEETING> MEETINGs { get; set; }
        public virtual ICollection<PROJECT_STAFF> PROJECT_STAFF { get; set; }
    }
}
