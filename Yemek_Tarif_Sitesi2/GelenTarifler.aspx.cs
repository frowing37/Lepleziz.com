using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi2
{
    public partial class GelenTarifler : System.Web.UI.Page
    {

        sql_baglanti baglanti = new sql_baglanti();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!Page.IsPostBack)
            {
                islem = Request.QueryString["islem"];
                id = Request.QueryString["TarifID"];

                if(islem=="sil")
                {
                    SqlCommand komut2 = new SqlCommand("delete TBL_Tarif where TarifID=@p1", baglanti.baglanti());
                    komut2.Parameters.AddWithValue("@p1", id);
                    komut2.ExecuteNonQuery();
                }
            }


            SqlCommand komut = new SqlCommand("select * from TBL_Tarif", baglanti.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();



        }
    }
}