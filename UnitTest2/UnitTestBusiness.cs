using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Coupon;
namespace UnitTest2
{
    [TestClass]
    public class UnitTestBusiness
    {
        
        Business a;
        Business b;

        CouponModelContainer db = new CouponModelContainer();
        [TestInitialize]
        public void intilaizeTest()
        {
            a = new Business();
            a.BusinessId = "1";
            a.Description = "HP";
            a.Category = CategoryType.Sports;
            a.Phone = "0502508585";
            b = new Business();
            b.BusinessId = "2";
            b.Description = "intel";
            b.Category = CategoryType.Food;
            b.Phone = "052052052";

        }

        [TestMethod] // add test
        public void test_AddBusiness()
        {
            db.BusinessSet.Add(a);
            db.SaveChanges();
            Assert.AreEqual(db.BusinessSet.Find(a.BusinessId).BusinessId, a.BusinessId);
            db.BusinessSet.Remove(a);
            db.SaveChanges();
        }


        [TestMethod] // remove test
        public void test_removeBusiness()
        {
            db.BusinessSet.Add(a);
            db.BusinessSet.Add(b);
            db.BusinessSet.Remove(a);
            db.SaveChanges();
            Assert.IsNull(db.BusinessSet.Find(a.BusinessId));
            db.BusinessSet.Remove(b);
            db.SaveChanges();
        }

        [TestMethod] // edit test
        public void test_EditBusiness()
        {
            db.BusinessSet.Add(a);
            Business tmp = db.BusinessSet.Find(a.BusinessId);
            db.BusinessSet.Remove(a);
            db.SaveChanges();
            tmp.BusinessId = "9";
            db.BusinessSet.Add(tmp);
            db.SaveChanges();
            Assert.AreEqual(db.BusinessSet.Find(a.BusinessId).BusinessId, "9");
            db.BusinessSet.Remove(tmp);
            db.SaveChanges();
        }

        
    }
}
