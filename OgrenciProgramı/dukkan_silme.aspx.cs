using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProgramı
{
    public partial class dukkan_silme : System.Web.UI.Page
    {
        kuaforumdbEntities baglan=new kuaforumdbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id =Convert.ToInt32(Request.QueryString["id"]);
            var bul=baglan.dukkan.Find(id);
            baglan.dukkan.Remove(bul);
            baglan.SaveChanges();
            HyperLink1.Text = "Kayıt Silindi";
            HyperLink1.NavigateUrl = "Dukkan_Kayit.aspx";
        }
    }
}