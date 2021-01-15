<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewPromo.aspx.cs" Inherits="GUCera.NewPromo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>  

    <style type="text/css">
        #admincourselist {
            height: 2282px;
        }
            <style type="text/css">
        #admincourselist {
            height: 2282px;
        }
        .auto-style1 {
            width: 100%;
            margin-top: 0px;
        }
        .auto-style2 {
            margin-left: 0px;
            margin-right: 0px;
        }
        .auto-style3 {
            width: 399px;
        }
        .auto-style4 {
            height: 28px;
        }
        .auto-style5 {
            height: 52px;
            margin-left: 0px;
            margin-bottom: 0px;
        }
              .b {
              margin-left: 18px;
            color:#003366 ;
         
            background-color: white;
             font-weight:bold;
            
             font-size:13pt;
            

        }
      
        .b:hover {
             margin-left: 18px;
            font-size:14pt;
            cursor: pointer;
            font-weight:bold;
         background-color:#003366 ;
         color:white;

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
        .h:hover {
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
<body class="back" style="height:100%; width:100%;background-color: rgb(100, 136, 145); margin-top: 0px;" >
    <form id="form1" runat="server" style=" height:100%; ">
             <header style="background-color:rgb(7, 30, 36); ">
            <h1 style="color:white ">
                &nbsp;<asp:Label ID="Label1" runat="server" Font-Names="Georgia" Text="GUCera"></asp:Label>
            &nbsp;|
            <asp:Button ID="home" runat="server" OnClick="Home_Click" Text="Home" BorderStyle="None" Font-Names="SansSerif" Font-Size="12pt"   Height="24px" Width="189px" Font-Bold="True" cssClass="h" />
                <asp:Button ID="profile" runat="server" Text="User" OnClick="profile_Click" CssClass="u" Font-Bold="True" Font-Size="13pt" />
         

            </h1>
        </header>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" rowspan="2">
                <asp:Panel ID="Panel1" runat="server" BackColor="Black" Height="933px" style="margin-right: 1px; margin-top: 0px" Width="295px">
                    <br />
                    <br />
                    <asp:Button ID="ViewAllCourses" runat="server"  Font-Bold="True" Font-Names="Courier New" cssClass="h" Height="43px" OnClick="AdminViewAllCoursesButton_Click" Text="View All Courses" Width="299px" />
                    <br />
                    <asp:Button ID="AdminViewNonAcceptedCoursesButton" runat="server"  Font-Bold="True" Font-Names="Courier New" cssClass="h" Height="40px" OnClick="AdminViewNonAcceptedCoursesButton_Click" style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px;" Text="Non Accepted Courses" Width="299px" />
                    <br />
                    <asp:Button ID="IssuePromotoStudent" runat="server"  Font-Bold="True" Font-Names="Courier New" cssClass="h" Height="39px" OnClick="IssuePromotoStudent_Click" style="margin-left: 2px; margin-right: 1px; margin-top: 0px; margin-bottom: 0px" Text="Issue Promocode" Width="296px" />
                    &nbsp;<asp:Localize ID="Localize2" runat="server"></asp:Localize>
                    <asp:Localize ID="Localize1" runat="server"></asp:Localize>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="AdminViewAllCourses" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </asp:Panel>
                </td>
                <td class="auto-style4">
                    <asp:Panel ID="Panel3" runat="server" Width="329px" CssClass="auto-style2">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Courier New" ForeColor="White" Text="Promocode" CssClass="13"></asp:Label>
                        <br />
                        <asp:TextBox ID="code" runat="server" Width="204px" Height="43px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Courier New" ForeColor="White" Text="Expiry Date" CssClass="13"></asp:Label>
                        <br />
                        <asp:TextBox ID="expiryDate" runat="server" Width="204px" Height="43px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Courier New" ForeColor="White" Text="Discount" Font-Size="13pt"></asp:Label>
                        <br />
                        <asp:TextBox ID="Discount" runat="server" Width="201px" Height="43px"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Create" runat="server"  Font-Bold="True" Font-Names="Courier New" OnClick="Create_Click" Text="Create" Width="203px"  Height="60px" CssClass="b" />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    <br />
    

     </form>
    </body>




</html>
