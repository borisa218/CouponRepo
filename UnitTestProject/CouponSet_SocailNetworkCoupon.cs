//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UnitTestProject
{
    using System;
    using System.Collections.Generic;
    
    public partial class CouponSet_SocailNetworkCoupon
    {
        public CouponSet_SocailNetworkCoupon()
        {
            this.PersonSet_Customer = new HashSet<PersonSet_Customer>();
        }
    
        public string SocialWebsite { get; set; }
        public int AdminId { get; set; }
        public int Name { get; set; }
    
        public virtual CouponSet CouponSet { get; set; }
        public virtual PersonSet_Admin PersonSet_Admin { get; set; }
        public virtual ICollection<PersonSet_Customer> PersonSet_Customer { get; set; }
    }
}