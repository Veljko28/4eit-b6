<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="uspehB6.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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

         .auto-style4 {
             position:absolute;
            list-style-type: none;
            overflow: hidden;
            background-color: midnightblue;
            width: 100%;
            margin-bottom: 0px;
            top:58px;
        }
         .auto-style1{
             position:absolute;
             top:200px;
             left:500px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel2" runat="server" BackColor="#507CD0" Height="51px">
            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Grafik" Font-Size="40px"></asp:Label>
        </asp:Panel>
                 <table class="auto-style4">
            <tr>
                <td><li><a href="WebForm1.aspx">Pocetna</a></li></td>
                <td><li><a class="active" href="WebForm2.aspx">Grafik</a></li></td>
                <td><li><a href="WebForm3.aspx">O autoru</a></li></td>
                <td class="siroko"></td>
            </tr>
        <br />
                  <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:USPEH_UCENIKAConnectionString2 %>" SelectCommand="SELECT * FROM USPEH"></asp:SqlDataSource>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" BackColor="cornflowerblue" CssClass="auto-style1">
            <Series>
                <asp:Series Name="Series1" XValueMember="Razred" YValueMembers="Prosek">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <AxisY Title="Prosecna ocena" TitleAlignment="Far">
                    </AxisY>
                    <AxisX Title="Odeljenje" TitleAlignment="Far">
                    </AxisX>
                </asp:ChartArea>
            </ChartAreas>
            <Titles>
                <asp:Title Name="Title1" Text="Uspeh odeljenja">
                </asp:Title>
            </Titles>
        </asp:Chart>


                     <footer>Copyright Техничка школа Смедерево</footer>
    </form>
</body>
</html>
