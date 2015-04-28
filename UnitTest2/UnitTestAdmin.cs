using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Coupon;
namespace UnitTest2
{
    [TestClass]
    public class UnitTestAdmin
    {
         Admin a;
         Admin b;
        CouponModelContainer db = new CouponModelContainer();

        [TestInitialize]
        public void intilaizeTest()
        {
            a = new Admin();
            a.pid = "1";
            a.UserName = "ayala";
            a.Age = "24";
            a.Email = "ayala";
            a.Password = "1234";
            a.Sex = "Female";
            a.Phone = "000";
            b = new Admin();
            b.pid = "2";
            b.UserName = "ayala";
            b.Age = "24";
            b.Email = "dor";
            b.Password = "1234";
            b.Sex = "Male";
            b.Phone = "000";


        }

       [TestMethod] // add test
        public void test_AddAdmin()
        {
            db.PersonSet.Add(a);
            db.SaveChanges();
            Assert.AreEqual(db.PersonSet.Find(a.pid).pid, a.pid);
            db.PersonSet.Remove(a);
            db.SaveChanges();
        }

        

        [TestMethod] // remove test
        public void test_removeAdmin()
        {
            
            db.PersonSet.Add(a);
            db.PersonSet.Add(b);
            db.PersonSet.Remove(a);
            db.SaveChanges();
            Assert.IsNull(db.PersonSet.Find(a.pid));
            db.PersonSet.Remove(b);
            db.SaveChanges();
        }

        [TestMethod] // edit test
        public void test_EditAdmin()
        {
            db.PersonSet.Add(a);
            Person tmp = db.PersonSet.Find(a.pid);
            db.PersonSet.Remove(a);
            db.SaveChanges();
            tmp.pid = "9";
            db.PersonSet.Add(tmp);
            db.SaveChanges();
            Assert.AreEqual(db.PersonSet.Find(a.pid).pid, "9");
            db.PersonSet.Remove(tmp);
            db.SaveChanges();
        }
        
    }
    
}
