using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace testProject
{
    class Program
    {
        static void Main(string[] args)
        {
        
        }
        public void CheckRemoveCustomerFriends()
        {

            DataQueries.deleteCustomerFriends(1, 2);
            DataTable dt = DataQueries.GetCustomerFriends(1);
            Assert.AreEqual(dt.Rows.Count, 0);
        }
    }
}
