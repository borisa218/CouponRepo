//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Coupon
{
    using System;
    using System.Collections.Generic;
    
    public partial class BusinessOwner : Person
    {
        public BusinessOwner()
        {
            this.Business = new HashSet<Business>();
        }
    
    
        public virtual ICollection<Business> Business { get; set; }
    }
}
