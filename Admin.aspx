<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GUCera.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Options</title>
    <style type="text/css">
        #form1 {
            margin-top: 0px;
        }
        
        .back{
            background-image: url('adminback.jpg');
        }

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 55px;
        }

        .auto-style3 {
            text-align: left;
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
    </style>
    
</head>
    <body class="back" style="height:100% ; width:100%;background-color:rgb(7, 30, 36)" >
    <form id="form1" runat="server" autocomplete="off">
     <header style="background-color:rgb(7, 30, 36); ">
            <h1 style="color:white ">
                &nbsp;<asp:Label ID="Label3" runat="server" Font-Names="Georgia" Text="GUCera"></asp:Label>
            &nbsp;|
            <asp:Button ID="home" runat="server" OnClick="Home_Click" Text="Home" BorderStyle="None" Font-Names="SansSerif" Font-Size="12pt"   Height="24px" Width="189px" Font-Bold="True" cssClass="h" />
                <asp:Button ID="profile" runat="server" Text="User" OnClick="profile_Click" CssClass="u" Font-Bold="True" Font-Size="13pt" />
         

            </h1>
        </header>
        <div style="height: 1483px; margin-top: 0px;">
            <br />
            <asp:Panel ID="Panel1" runat="server" BackColor="Black" Height="854px" style="margin-right: 9px" Width="302px">
                <br />
                <asp:Label ID="Label1" runat="server" BackColor="Black" BorderWidth="0px" Font-Bold="True" Font-Names="Courier New" Font-Size="13pt" ForeColor="White" Height="31px" style="margin-left: 0px; margin-top: 0px;" Text=".:Admin Home" Width="298px"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" BackColor="Black" BorderWidth="0px" Font-Bold="True" Font-Names="Courier New" Font-Size="13pt" ForeColor="White" Height="52px" style="margin-left: 16px" Text=" Options:" Width="144px"></asp:Label>
                <asp:Button ID="AdminViewAllCoursesButton" runat="server" OnClick="AdminViewAllCoursesButton_Click" Text="View All Courses" Width="298px"  Font-Names="Courier New"  Height="43px" style="margin-top: 0px" CssClass="h" />
                <asp:Button ID="AdminViewNonAcceptedCoursesButton" runat="server"  Font-Names="Courier New"  Height="40px" OnClick="AdminViewNonAcceptedCoursesButton_Click" style="margin-top: 0px; margin-bottom: 0px;" Text="Non Accepted Courses" Width="299px" CssClass="h" />
                <asp:Button ID="CreatePromo" runat="server"  Font-Names="Courier New"  Height="43px" OnClick="NewPromo_Click" Text="Create new Promocode" Width="299px" CssClass="h" />
                <br />
                <asp:Button ID="IssuePromotoStudent" runat="server"  Font-Names="Courier New" Height="39px" OnClick="IssuePromotoStudent_Click" style="margin-left: 2px; margin-right: 1px; margin-top: 0px; margin-bottom: 0px" Text="Issue Promocode" Width="296px" CssClass="h" />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">                
;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="mobileno" runat="server" Width="287px" Height="28px" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server"  Font-Names="Courier New" Height="39px" OnClick="mobile_Click" style="margin-left: 2px; margin-right: 1px; margin-top: 0px; margin-bottom: 0px" Text="Add Mobile Number" Width="296px" CssClass="h" BorderStyle="Double" />
                        </td>
                    </tr>
                    <tr>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server"  Font-Names="Courier New" Height="39px" OnClick="logout_Click" style="margin-left: 2px; margin-right: 1px; margin-top: 0px; margin-bottom: 0px" Text="Log out" Width="296px" CssClass="h" BorderStyle="Double" />

                        </td>
                    </tr>
                </table>
            </asp:Panel>
        
        </div>

    </form>
</body>
</html>
