using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Coupon;
namespace UnitTest2
{
    [TestClass]
    public class UnitTestCoupon
    {
        Coupon.Coupon a;
        Coupon.Coupon b;

        CouponModelContainer db = new CouponModelContainer();
        [TestInitialize]
        public void intilaizeTest()
        {
            a = new Coupon.Coupon();
            a.Name = "THE GALIA SHOW";
            a.CouponCode = 90;
            a.Description = "clubs";
            a.Category = CategoryType.HealthandBeauty;

            b = new Coupon.Coupon();
            b.Name = "THE DROR SAIL";
            b.CouponCode = 80;
            b.Description = "boats";
            b.Category = CategoryType.Sports;

        }

        [TestMethod] // add test
        public void test_AddCoupon()
        {
            db.CouponSet.Add(a);
            db.SaveChanges();
            Assert.AreEqual(db.CouponSet.Find(a.Name).Name, a.Name);
            db.CouponSet.Remove(a);
            db.SaveChanges();
        }


        [TestMethod] // remove test
        public void test_removeCoupon()
        {
            db.CouponSet.Add(a);
            db.CouponSet.Add(b);
            db.CouponSet.Remove(a);
            db.SaveChanges();
            Assert.IsNull(db.CouponSet.Find(a.Name));
            db.CouponSet.Remove(b);
            db.SaveChanges();
        }

        [TestMethod] // edit test
        public void test_EditCoupon()
        {
            db.CouponSet.Add(a);
            Coupon.Coupon tmp = db.CouponSet.Find(a.Name);
            db.CouponSet.Remove(a);
            db.SaveChanges();
            tmp.Name = "THE boris SHOW";
            db.CouponSet.Add(tmp);
            db.SaveChanges();
            Assert.AreEqual(db.CouponSet.Find(a.Name).Name, "THE boris SHOW");
            db.CouponSet.Remove(tmp);
            db.SaveChanges();
        }

    }
}
