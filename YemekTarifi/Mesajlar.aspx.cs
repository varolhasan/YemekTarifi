using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut1 = new SqlCommand("select * from TBL_MESAJLAR", bgl.baglanti());
            SqlDataReader dr1 = komut1.ExecuteReader();
            DataList2.DataSource = dr1;
            DataList2.DataBind();

            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}