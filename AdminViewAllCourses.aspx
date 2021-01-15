<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminViewAllCourses.aspx.cs" Inherits="GUCera.AdminViewAllCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title>All Available Coursess</title>
       

    <style type="text/css">
        #admincourselist {
            height: 2282px;
        }
        .auto-style1 {
            height: 636px;
        }
        .auto-style2 {
            height: 636px;
            width: 368px;
        }
        .auto-style5 {
            margin-left: 13px;
            margin-right: 35px;
            margin-top: 2px;
            margin-bottom: 47px;
        }
        .auto-style6 {
            height: 19px;
        }
        .auto-style7 {
            height: 8px;
        }
            
           .u {
        float:right;
         
         background-color:Transparent; 
            color:White;
           border:none;
           
           
          
        }
        .h{
            background-color:Transparent; 
            color:White;
        }
        .h:hover  {
            cursor: pointer;
         background-color:white ;
         color:#003366;
         border-radius: 10px;


        }
         .back{
            background-image: url('adminback.jpg');
        }
    </style>
</head>
<body class="back" style="height:100% ; width:100%;background-color:rgb(7, 30, 36)">
                
    <form id="admincourselist" runat="server">
        <header style="background-color:rgb(7, 30, 36); ">
            <h1 style="color:white ">
                &nbsp;<asp:Label ID="Label3" runat="server" Font-Names="Georgia" Text="GUCera"></asp:Label>
            &nbsp;|
            <asp:Button ID="home" runat="server" OnClick="Home_Click" Text="Home" BorderStyle="None" Font-Names="SansSerif" Font-Size="12pt"   Height="24px" Width="189px" Font-Bold="True" cssClass="h" />
                <asp:Button ID="profile" runat="server" Text="User" OnClick="profile_Click" CssClass="u" Font-Bold="True" Font-Size="13pt" />
         

            </h1>
        </header>
    <table style="width:100%;">
        <tr>
            <td class="auto-style2" rowspan="3">
                <asp:Panel ID="Panel1" runat="server" BackColor="Black" Height="1323px" style="margin-right: 1px; margin-top: 0px" Width="295px">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="13pt" ForeColor="White" Text=".: Admin Options"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="AdminViewNonAcceptedCoursesButton" runat="server"  Font-Bold="True" Font-Names="Courier New"  Height="40px" OnClick="AdminViewNonAcceptedCoursesButton_Click" style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px;" Text="Non Accepted Courses" Width="299px" CssClass="h" />
                        <br />
                        <asp:Button ID="IssuePromotoStudent" runat="server"  Font-Bold="True" Font-Names="Courier New"  Height="39px" OnClick="IssuePromotoStudent_Click" style="margin-left: 2px; margin-right: 1px; margin-top: 0px; margin-bottom: 0px" Text="Issue Promocode" Width="296px" CssClass="h" />
                        <br />
                        <asp:Button ID="CreatePromo" runat="server"  Font-Bold="True" Font-Names="Courier New"  Height="43px" OnClick="NewPromo_Click" Text="Create new Promocode" Width="299px" CssClass="h" />
                        <br />
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="AdminViewAllCourses" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                   
                </asp:Panel>
            </td>
            <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="16pt" ForeColor="White" Text="All Courses"></asp:Label>
                    </td>
            </tr>
       
        <tr>
            <td class="auto-style7">
                                                <asp:Panel ID="Panel6" runat="server" Width="820px" CssClass="auto-style19" Height="341px" ScrollBars="Vertical" style="margin-top: 0px">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" DataSourceID="SqlDataSource1" EmptyDataText="   " Font-Bold="True" Font-Names="Courier New" Font-Size="13pt" ForeColor="Black" Height="68px" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="656px" CssClass="auto-style5">
                            <Columns>
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="creditHours" HeaderText="creditHours" SortExpression="creditHours" />
                                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                <asp:BoundField DataField="content" HeaderText="content" SortExpression="content" />
                                <asp:CheckBoxField DataField="accepted" HeaderText="accepted" SortExpression="accepted" />
                            </Columns>
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>
                  
                                                     </asp:Panel>

            </td>
       </tr>
        <tr>
            <td class="auto-style1">
                    &nbsp;</td>
            </tr>
       
    </table>  </form>


    </body>
</html>
