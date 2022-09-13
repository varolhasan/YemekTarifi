using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifi
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        sqlsinifi bgl = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut1 = new SqlCommand("select * from TBL_KATEGORILER", bgl.baglanti());
            SqlDataReader dr1 = komut1.ExecuteReader();
            DataList1.DataSource = dr1;
            DataList1.DataBind();


        }
    }
}