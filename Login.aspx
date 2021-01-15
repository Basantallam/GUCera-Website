<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GUCera.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title></title>
    <style type="text/css">
       .divcenter{
           width: 500px;
	height: 400px;
	background-color: rgb(100, 136, 145);
	
	position: center;
	top:0;
	bottom: 0;
	left: 0;
	right: 0;
  	
	margin: auto;
    border:double;
       }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            align-content:center;
            width: 80%;
            height: 397px;
            margin-left:10%; 
        }
        .auto-style3 {
            height: 158px;
        }
         .b {
            background-color: #003366;
             color:white;
              
           

        }
      
        .b:hover {
            cursor: pointer;
         background-color:#003366 ;
         color:white;

        }
        
        .h{
            font-size:11pt;
            color:silver;
        }
        .h:hover  {
            font-size:13pt;
            cursor: pointer;
         text-decoration:underline;
         color:white;


        }
        
    </style>
</head>

<body style="height:100% ; width:100%;background-color:rgb(7, 30, 36)" >
    <form id="form1" runat="server" autocomplete="off">
        <div style="height:220px" class="auto-style1">
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Georgia" Font-Overline="False" Font-Size="40pt" Font-Strikeout="False" Text="GUCera" ForeColor="White"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Names="SansSerif" Font-Size="15pt" Font-Underline="True" Text="LOG IN" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="StudentRegister" runat="server" OnClick="StudentRegister_Click"  Text="SIGN UP As Student" BackColor="Transparent" BorderStyle="None" Font-Names="SansSerif"    Height="24px" Width="170px" CssClass="h"  />

            <asp:Button ID="InstructorRegister" runat="server" OnClick="InstructorRegister_Click" Text="SIGN UP As Instructor" BackColor="Transparent" BorderStyle="None" Font-Names="SansSerif"    Height="24px" Width="200px" CssClass="h"  />


            <br />
            <br />
        </div>
        <div class="divcenter" >
          
     
            <table class="auto-style2">
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Font-Names="SansSerif" Font-Size="12pt" Text="UserName:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                           <asp:TextBox ID="username" runat="server" Height="33px" Width="385px" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Font-Names="SansSerif" Font-Size="12pt" Text="Password:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<asp:TextBox ID="password" runat="server" TextMode="Password" Height="29px" Width="382px"></asp:TextBox>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="log_in" runat="server" Text="Log In" OnClick="SignIn_Click" width="100%" CssClass="b" Font-Bold="True"  Font-Names="SansSerif" Font-Size="15pt" Height="63px"  />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;

                    </td>
                </tr>
            </table>
          
     
        </div>
    </form>
</body>
</html>
