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
    
    public partial class OrderedCouponSet
    {
        public int CouponId { get; set; }
        public bool Used { get; set; }
        public int Rank { get; set; }
        public int Orders_Id { get; set; }
        public int OrderedCouponCoupon_OrderedCoupon_Name { get; set; }
    
        public virtual CouponSet CouponSet { get; set; }
        public virtual PersonSet_Customer PersonSet_Customer { get; set; }
    }
}