using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Coupon;

namespace UnitTest2
{
    [TestClass]
    public class UnitTestSocialNetwork
    {
        Coupon.Coupon a;
        Coupon.Coupon b;

        CouponModelContainer db = new CouponModelContainer();
        [TestInitialize]
        public void intilaizeTest()
        {
            a = new Coupon.Coupon();
            a.Name = "Domina";
            a.CouponCode = 90;
            a.Description = "Zoo";
            a.Category = CategoryType.Shopping;

            b = new Coupon.Coupon();
            b.Name = "Pizza Dominos";
            b.CouponCode = 80;
            b.Description = "food and more";
            b.Category = CategoryType.Food;

        }

        [TestMethod] // add test
        public void test_AddSocialCoupon()
        {
            db.CouponSet.Add(a);
            db.SaveChanges();
            Assert.AreEqual(db.CouponSet.Find(a.Name).Name, a.Name);
            db.CouponSet.Remove(a);
            db.SaveChanges();
        }


        [TestMethod] // remove test
        public void test_removeSocialCoupon()
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
        public void test_EditSocialCoupon()
        {
            db.CouponSet.Add(a);
            Coupon.Coupon tmp = db.CouponSet.Find(a.Name);
            db.CouponSet.Remove(a);
            db.SaveChanges();
            tmp.Name = "other name";
            db.CouponSet.Add(tmp);
            db.SaveChanges();
            Assert.AreEqual(db.CouponSet.Find(a.Name).Name, "other name");
            db.CouponSet.Remove(tmp);
            db.SaveChanges();
        }

    }
}
