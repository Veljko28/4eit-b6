<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="uspehB6.WebForm1" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 492px;
        }
        .auto-style2 {
            width: 514px;
            height: 233px;
            position: absolute;
            top: 242px;
            left: 355px;
            z-index: 1;
        }
        h1{
            background-color: cornflowerblue;
            width:100%;
            height:70px;
            vertical-align:auto;
            color:white;
        }
        .tabela {
    list-style-type: none;
    overflow: hidden;
    background-color:midnightblue;
    width:100%;
}
        li {
    
}

    li a {
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

        li a:hover {
            background-color:dodgerblue;
        }
        
        .siroko{
            width:70%;
        }

        footer{
    background-color:grey;
    color:white;
    position:absolute;
    bottom:0;
    height:40px;
    width:100%;
    display:flex;
    align-items:center;
    justify-content:center;
}

        .auto-style3 {
            position: absolute;
            color:white;
            top: 14px;
            left: 19px;
            z-index: 1;
            width: 269px;
            height: 41px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">

        <asp:Panel ID="Panel1" runat="server" BackColor="#507CD0" Height="51px">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Uspeh  ucenika" Font-Size="40px"></asp:Label>
        </asp:Panel>
        <table class="tabela">
            <tr>
                <td><li><a class="active" href="WebForm1.aspx">Pocetna</a></li></td>
                <td><li><a href="WebForm2.aspx">Grafik</a></li></td>
                <td><li><a href="WebForm3.aspx">O autoru</a></li></td>
                <td class="siroko"></td>
            </tr>
        </table>
        
        
      <br/>
        
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataKeyNames="RAZRED" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSorted="GridView1_Sorted" OnSorting="GridView1_Sorting">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="RAZRED" HeaderText="RAZRED" ReadOnly="True" SortExpression="RAZRED" />
                <asp:BoundField DataField="NEDOVOLJAN" HeaderText="NEDOVOLJAN" SortExpression="NEDOVOLJAN" />
                <asp:BoundField DataField="DOVOLJAN" HeaderText="DOVOLJAN" SortExpression="DOVOLJAN" />
                <asp:BoundField DataField="DOBAR" HeaderText="DOBAR" SortExpression="DOBAR" />
                <asp:BoundField DataField="VRLODOBAR" HeaderText="VRLODOBAR" SortExpression="VRLODOBAR" />
                <asp:BoundField DataField="ODLICAN" HeaderText="ODLICAN" SortExpression="ODLICAN" />
                <asp:BoundField DataField="PROSEK" HeaderText="PROSEK" SortExpression="PROSEK" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        
                
      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:USPEH_UCENIKAConnectionString %>" DeleteCommand="DELETE FROM [USPEH] WHERE [RAZRED] = @RAZRED" InsertCommand="INSERT INTO [USPEH] ([RAZRED], [NEDOVOLJAN], [DOVOLJAN], [DOBAR], [VRLODOBAR], [ODLICAN], [PROSEK]) VALUES (@RAZRED, @NEDOVOLJAN, @DOVOLJAN, @DOBAR, @VRLODOBAR, @ODLICAN, @PROSEK)" SelectCommand="SELECT * FROM [USPEH]" UpdateCommand="UPDATE [USPEH] SET [NEDOVOLJAN] = @NEDOVOLJAN, [DOVOLJAN] = @DOVOLJAN, [DOBAR] = @DOBAR, [VRLODOBAR] = @VRLODOBAR, [ODLICAN] = @ODLICAN, [PROSEK] = @PROSEK WHERE [RAZRED] = @RAZRED">
            <DeleteParameters>
                <asp:Parameter Name="RAZRED" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RAZRED" Type="Int32" />
                <asp:Parameter Name="NEDOVOLJAN" Type="Int32" />
                <asp:Parameter Name="DOVOLJAN" Type="Int32" />
                <asp:Parameter Name="DOBAR" Type="Int32" />
                <asp:Parameter Name="VRLODOBAR" Type="Int32" />
                <asp:Parameter Name="ODLICAN" Type="Int32" />
                <asp:Parameter Name="PROSEK" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NEDOVOLJAN" Type="Int32" />
                <asp:Parameter Name="DOVOLJAN" Type="Int32" />
                <asp:Parameter Name="DOBAR" Type="Int32" />
                <asp:Parameter Name="VRLODOBAR" Type="Int32" />
                <asp:Parameter Name="ODLICAN" Type="Int32" />
                <asp:Parameter Name="PROSEK" Type="Double" />
                <asp:Parameter Name="RAZRED" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
                
      <footer>Copyright Техничка школа Смедерево</footer>
    </form>
</body>
</html>
