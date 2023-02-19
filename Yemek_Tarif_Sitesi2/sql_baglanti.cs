using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public class sql_baglanti
    {

        public SqlConnection baglanti()
        {

            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-N9TUFUP;Initial Catalog=Db_yemek_sitesi;Integrated Security=True");
            baglan.Open();

            return baglan;
        }


    }
}