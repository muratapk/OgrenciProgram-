<%@ Page Title="" Language="C#" MasterPageFile="~/Sablon.Master" AutoEventWireup="true" CodeBehind="Dukkan_Kayit.aspx.cs" Inherits="OgrenciProgramı.Dukkan_Kayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <h1>Dükkan Kayıt</h1>
   <form id="kayit" runat="server">
    <table border="1" witdh="300px">
        <tr>
            <td>Dükkan Adı</td>
            <td> 
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>Adresi</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> 

            </td>
        </tr>

        <tr>
          <td>Web Adresi</td>
           <td>
               <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> 

           </td>
        </tr>

        <tr>
            <td>Telefon</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="159px"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" Height="159px" Width="165px" OnClick="Button1_Click" /> </td>
        </tr>
    </table>
       <hr />
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="453px">
           <AlternatingRowStyle BackColor="PaleGoldenrod" />
           <Columns>
               <asp:BoundField DataField="dukkanAdi" HeaderText="Dükkanın Adı" />
               <asp:BoundField DataField="dukkanAdres" HeaderText="İşyeri Adresi" />
               <asp:BoundField DataField="webSayfa" HeaderText="Web Sayfası" />
               <asp:BoundField DataField="telefon" HeaderText="İşyeri Telefon" />
               <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="dukkan_duzelt.aspx?id={0}" DataTextField="Id" DataTextFormatString="Düzelt" HeaderText="Düzeltme" />
               <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="dukkan_silme.aspx?id={0}" DataTextField="Id" DataTextFormatString="Silme" HeaderText="Silme" />
           </Columns>
           <FooterStyle BackColor="Tan" />
           <HeaderStyle BackColor="Tan" Font-Bold="True" />
           <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
           <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
           <SortedAscendingCellStyle BackColor="#FAFAE7" />
           <SortedAscendingHeaderStyle BackColor="#DAC09E" />
           <SortedDescendingCellStyle BackColor="#E1DB9C" />
           <SortedDescendingHeaderStyle BackColor="#C2A47B" />
       </asp:GridView>
   </form>
</asp:Content>
