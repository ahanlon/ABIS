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
    
    public partial class COMPENSATION
    {
        public long CompensationID { get; set; }
        public int CompensationTypeID { get; set; }
        public int IRSTypeID { get; set; }
        public long StaffID { get; set; }
        public decimal Amount { get; set; }
        public System.DateTime EffectiveDate { get; set; }
        public Nullable<bool> FullTimeInd { get; set; }
    
        public virtual COMPENSATION_TYPE COMPENSATION_TYPE { get; set; }
        public virtual IRS_TYPE IRS_TYPE { get; set; }
        public virtual STAFF STAFF { get; set; }
    }
}