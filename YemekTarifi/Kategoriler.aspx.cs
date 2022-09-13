using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifi
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Kategorileri listeleme
            SqlCommand komut1 = new SqlCommand("select * from TBL_KATEGORILER", bgl.baglanti());
            SqlDataReader dr1 = komut1.ExecuteReader();
            DataList1.DataSource = dr1;
            DataList1.DataBind();
            bgl.baglanti().Close();

            Panel2.Visible = false;
            Panel5.Visible = false;

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["KategoriId"];
                islem = Request.QueryString["islem"];

                
            }
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("delete TBL_KATEGORILER where KategoriId=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut1 = new SqlCommand("insert into TBL_KATEGORILER (KategoriAd) values (@p1)", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close(); 
        }
    }
}