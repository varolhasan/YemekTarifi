using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class Iletisim : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut1 = new SqlCommand("insert into TBL_MESAJLAR (MesajGonderen,MesajBaslik,MesajMail,MesajIcerik) values " +
    "(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
            komut1.Parameters.AddWithValue("@p2", txtKonu.Text);
            komut1.Parameters.AddWithValue("@p3", txtMail.Text);
            komut1.Parameters.AddWithValue("@p4", txtMesaj.Text);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}