using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifi
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();

        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];

            SqlCommand komut1 = new SqlCommand("select YemekAd from TBL_YEMEKLER where Yemekid=@p1", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr1 = komut1.ExecuteReader();
            while (dr1.Read())
            {
                Label4.Text = dr1[0].ToString();
            }
            bgl.baglanti().Close();


            //Yorum listeleme
            SqlCommand komut2 = new SqlCommand("select * from TBL_YORUMLAR where YemekId=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void btnYorumYap_Click(object sender, EventArgs e)
        {
            //Yorum Yap
            SqlCommand komut3 = new SqlCommand("insert into TBL_YORUMLAR (YorumAdSoyad,YorumMail,YorumIcerik,YemekId) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
            komut3.Parameters.AddWithValue("@p2", txtMail.Text);
            komut3.Parameters.AddWithValue("@p3", txtYorum.Text);
            komut3.Parameters.AddWithValue("@p4", yemekid);
            SqlDataReader dr3 = komut3.ExecuteReader();
            bgl.baglanti().Close();
        }
    }
}