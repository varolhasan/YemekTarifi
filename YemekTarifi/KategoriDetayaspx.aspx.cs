using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class KategoriDetayaspx : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string kategorid="";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategorid = Request.QueryString["KategoriId"];

            SqlCommand komut1 = new SqlCommand("select * from TBL_YEMEKLER where KategoriId=@p1", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", kategorid);
            SqlDataReader dr1 = komut1.ExecuteReader();
            DataList2.DataSource = dr1;
            DataList2.DataBind();
            bgl.baglanti().Close();
        }
    }
}