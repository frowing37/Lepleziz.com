using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class GününYemegi : System.Web.UI.Page
    {
        sql_baglanti baglanti = new sql_baglanti();
        protected void Page_load(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("select * from TBL_Gunun_Yemegi", baglanti.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();
        }

    }
}