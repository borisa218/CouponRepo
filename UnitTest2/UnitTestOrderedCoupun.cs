using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Coupon;
namespace UnitTest2
{
    [TestClass]
    public class UnitTestOrderedCoupun
    {
        OrderedCoupon a;
        OrderedCoupon b;

        CouponModelContainer db = new CouponModelContainer();
        [TestInitialize]
        public void intilaizeTest()
        {
            a = new OrderedCoupon();
            a.CouponId = "101";
            a.Used =false;
            a.Rank = 5;

            b = new OrderedCoupon();
            b.CouponId = "102";
            b.Used = true;
            b.Rank = 4;

        }

        [TestMethod] // add test
        public void test_AddOrderedCoupon()
        {
            db.OrderedCouponSet.Add(a);
            db.SaveChanges();
            Assert.AreEqual(db.OrderedCouponSet.Find(a.CouponId).CouponId, a.CouponId);
            db.OrderedCouponSet.Remove(a);
            db.SaveChanges();
        }


        [TestMethod] // remove test
        public void test_removeOrderedCoupon()
        {
            db.OrderedCouponSet.Add(a);
            db.OrderedCouponSet.Add(b);
            db.OrderedCouponSet.Remove(a);
            db.SaveChanges();
            Assert.IsNull(db.OrderedCouponSet.Find(a.CouponId));
            db.OrderedCouponSet.Remove(b);
            db.SaveChanges();
        }

        [TestMethod] // edit test
        public void test_EditOrderedCoupon()
        {
            db.OrderedCouponSet.Add(a);
            OrderedCoupon tmp = db.OrderedCouponSet.Find(a.CouponId);
            db.OrderedCouponSet.Remove(a);
            db.SaveChanges();
            tmp.CouponId = "666";
            db.OrderedCouponSet.Add(tmp);
            db.SaveChanges();
            Assert.AreEqual(db.OrderedCouponSet.Find(a.CouponId).CouponId, "666");
            db.OrderedCouponSet.Remove(tmp);
            db.SaveChanges();
        }

    }
}
