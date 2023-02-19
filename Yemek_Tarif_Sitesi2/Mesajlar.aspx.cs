using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        sql_baglanti baglanti = new sql_baglanti();
        string islem = "";
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                islem = Request.QueryString["islem"];
                id = Request.QueryString["MesajID"];

                if (islem == "sil")
                {
                    SqlCommand komut2 = new SqlCommand("delete TBL_Mesaj where MesajID=@p1", baglanti.baglanti());
                    komut2.Parameters.AddWithValue("@p1", id);
                }
            }


            SqlCommand komut = new SqlCommand("select * from TBL_Mesaj", baglanti.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            
        }
    }
}