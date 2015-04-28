using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Coupon;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        Person p;
        Admin a;
        [TestInitialize]
        public void intilaizeTest()
        {
            p = new Person();
            p.Age = "14";
            p.Id = 22222;
            a = new Admin();
            a.Id = 13;
        }



        [TestMethod]
        public void test()
        {
         //   CouponModelContainer db = new CouponModelContainer();


        }

        
    }
}
