using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciGuncelle : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		int id;
		try
		{
			 id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
			txtOgrId.Text = id.ToString();
			DataSetTableAdapters.TBLOGRENCITableAdapter dt = new DataSetTableAdapters.TBLOGRENCITableAdapter();
			txtOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
			txtOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
			txtOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAIL;
			txtOgrTel.Text = dt.OgrenciSec(id)[0].OGRTELEFON;
			txtOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
			txtOgrFoto.Text = dt.OgrenciSec(id)[0].OGRFOTOGRAF;

		}
		catch (Exception)
		{

			txtOgrFoto.Text = "Link Girin";
			
		
		}

	}

	

	protected void Button1_Click1(object sender, EventArgs e)
	{
		DataSetTableAdapters.TBLOGRENCITableAdapter dt = new DataSetTableAdapters.TBLOGRENCITableAdapter();
		dt.OgrGuncelle(txtOgrAd.Text, txtOgrSoyad.Text, txtOgrTel.Text, txtOgrMail.Text, txtOgrSifre.Text, txtOgrFoto.Text, Convert.ToInt32(txtOgrId.Text));
		
	}
}