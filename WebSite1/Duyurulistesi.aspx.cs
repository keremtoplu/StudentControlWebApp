using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Duyurulistesi : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		DataSetTableAdapters.TBLDUYURUTableAdapter dt = new DataSetTableAdapters.TBLDUYURUTableAdapter();
		Repeater1.DataSource = dt.DuyuruListesi();
		Repeater1.DataBind();


	}
}