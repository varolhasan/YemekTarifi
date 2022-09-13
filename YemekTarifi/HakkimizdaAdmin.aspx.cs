using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            if (Page.IsPostBack == false)
            {
                SqlCommand komut1 = new SqlCommand("select * from TBL_HAKKIMIZDA", bgl.baglanti());
                SqlDataReader dr1 = komut1.ExecuteReader();
                while (dr1.Read())
                {
                    txtHakkimizda.Text = dr1[0].ToString();
                }
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

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komutguncelle = new SqlCommand("update TBL_HAKKIMIZDA set Metin=@p1", bgl.baglanti());
            komutguncelle.Parameters.AddWithValue("@p1", txtHakkimizda.Text);
            komutguncelle.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}