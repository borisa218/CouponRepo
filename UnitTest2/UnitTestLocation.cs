using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Coupon;

namespace UnitTest2
{
    [TestClass]
    public class UnitTestLocation
    {
       
        Location a;
        Location b;



        CouponModelContainer db = new CouponModelContainer();
        [TestInitialize]
        public void intilaizeTest()
        {
            a = new Location();
            a.Address = "Avraham Avinu";
            a.x = 7;
            a.y = "3";
            b = new Location();
            b.Address = "Avraham Avinu2";
            b.x = 4;
            b.y = "2";  
 
      
        }
        [TestMethod] // add test
        public void test_AddLocation()
        {
            db.LocationSet.Add(a);
            db.SaveChanges();
            Assert.AreEqual(db.LocationSet.Find(a.Address).Address, a.Address);
            db.LocationSet.Remove(a);
            db.SaveChanges();
        }
        [TestMethod] // remove test
        public void test_RemoveLocation()
        {
            db.LocationSet.Add(a);
            db.LocationSet.Add(b);
            db.LocationSet.Remove(a);
            db.SaveChanges();
            Assert.IsNull(db.LocationSet.Find(a.Address));
            db.LocationSet.Remove(b);
            db.SaveChanges();
        }
        [TestMethod] // edit test
        public void test_EditLocation()
        {
            db.LocationSet.Add(a);
            Location tmp = db.LocationSet.Find(a.Address);
            db.LocationSet.Remove(a);
            db.SaveChanges();
            tmp.x = 9;
            db.LocationSet.Add(tmp);
            db.SaveChanges();
            Assert.AreEqual(db.LocationSet.Find(a.Address).x, 9);
            db.LocationSet.Remove(tmp);
            db.SaveChanges();
        }


    
    }
}
