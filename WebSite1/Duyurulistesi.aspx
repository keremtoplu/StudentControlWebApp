<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.master" AutoEventWireup="true" CodeFile="Duyurulistesi.aspx.cs" Inherits="Duyurulistesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

	<table class="table table-bordered table-hover">
  
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Ad</th>
      <th scope="col">Soyad</th>
      <th scope="col">Telefon</th>
		<th scope="col">işlemler</th>
    </tr>
 
  <tbody>
	  <asp:Repeater ID="Repeater1" runat="server">
		  <ItemTemplate>
			  <tr>
				 <td><%#Eval("DUYURUID") %></td>
				   <td><%#Eval("DUYURUBASLIK") %></td>
				   <td><%#Eval("DUYURUICERIK") %></td>
				  <td><%#Eval("DUYURAN") %></td>
				 
				  <td>
					  <asp:HyperLink ID="HyperLink2"  runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink> 
					  <asp:HyperLink ID="HyperLink1" runat="server"  CssClass="btn btn-success">Güncelle</asp:HyperLink>

				  </td>

			  </tr>



		  </ItemTemplate>



	  </asp:Repeater>
  </tbody>
</table>


</asp:Content>



<%--NavigateUrl='<%# "~/OgrenciSil.aspx?OGRID="+Eval("OGRID") %>',
NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+Eval("OGRID") %>'--%>