using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id = "";
        string durum = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Onaylı Yorum Listesi
            SqlCommand komut1 = new SqlCommand("select * from TBL_YORUMLAR where YorumOnay=1", bgl.baglanti());
            SqlDataReader dr1 = komut1.ExecuteReader();
            DataList2.DataSource = dr1;
            DataList2.DataBind();

            if (Page.IsPostBack == false)
            {
                Panel2.Visible = false;
                Panel4.Visible = false;
            }

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["YorumId"];
                durum = Request.QueryString["durum"];
            }
            if (durum == "sil")
            {
                SqlCommand komutsil = new SqlCommand("delete TBL_YORUMLAR where YorumId=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
            //Onaysız Yorum Listesi
            SqlCommand komut2 = new SqlCommand("select * from TBL_YORUMLAR where YorumOnay=0", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList1.DataSource = dr2;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}