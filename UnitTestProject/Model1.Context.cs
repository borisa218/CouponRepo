﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class esterEntities : DbContext
    {
        public esterEntities()
            : base("name=esterEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<BusinessSet> BusinessSet { get; set; }
        public DbSet<CouponSet> CouponSet { get; set; }
        public DbSet<CouponSet_SocailNetworkCoupon> CouponSet_SocailNetworkCoupon { get; set; }
        public DbSet<LocationSet> LocationSet { get; set; }
        public DbSet<OrderedCouponSet> OrderedCouponSet { get; set; }
        public DbSet<PersonSet> PersonSet { get; set; }
        public DbSet<PersonSet_Admin> PersonSet_Admin { get; set; }
        public DbSet<PersonSet_BusinessOwner> PersonSet_BusinessOwner { get; set; }
        public DbSet<PersonSet_Customer> PersonSet_Customer { get; set; }
    }
}