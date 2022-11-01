<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
	<table class="table table-bordered table-hover">
  
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Ad</th>
      <th scope="col">Soyad</th>
      <th scope="col">Telefon</th>
		<th scope="col">Mail</th>
		<th scope="col">Şifre</th>
		<th scope="col">işlemler</th>
    </tr>
 
  <tbody>
	  <asp:Repeater ID="Repeater1" runat="server">
		  <ItemTemplate>
			  <tr>
				 <td><%#Eval("OGRID") %></td>
				   <td><%#Eval("OGRAD") %></td>
				   <td><%#Eval("OGRSOYAD") %></td>
				  <td><%#Eval("OGRTELEFON") %></td>
				  <td><%#Eval("OGRMAIL") %></td>
				  <td><%#Eval("OGRSIFRE") %></td>
				  <td>
					  <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "~/OgrenciSil.aspx?OGRID="+Eval("OGRID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink> 
					  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+Eval("OGRID") %>' CssClass="btn btn-success">Güncelle</asp:HyperLink>

				  </td>

			  </tr>



		  </ItemTemplate>



	  </asp:Repeater>
  </tbody>
</table>
</asp:Content>

 <%--<th scope="row">1</th>--%>