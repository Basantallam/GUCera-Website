<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstructorRegister.aspx.cs" Inherits="GUCera.InstructorRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
       .divcenter{
           width: 500px;
	height: 500px;
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
        .auto-style4 {
            width: 100%;
            height: 494px;
        }
        .auto-style5 {
            height: 92px;
            text-align: right;
        }
        
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            width: 288px;
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
            
            <asp:Button ID="GoToLogIn" runat="server" OnClick="Login_Click"  Text="LOG IN" BackColor="Transparent" BorderStyle="None" Font-Names="SansSerif" Height="24px" Width="67px" CausesValidation="false" CssClass="h"/>

            <asp:Button ID="StudentRegister" runat="server" OnClick="StudentRegister_Click" Text="SIGN UP As Student" BackColor="Transparent" BorderStyle="None" Font-Names="SansSerif"  Height="24px" Width="189px" CausesValidation="false" CssClass="h"/>
             <asp:Label ID="Label9" runat="server" Font-Names="SansSerif" Font-Size="15pt" Font-Underline="True" Text="SIGN UP As Instructor" ForeColor="White"></asp:Label>


            <br />
            <br />
        </div>
        <div class="divcenter" >
          
     
            
                
     
            <table class="auto-style4">
                <tr>
                    <td class="auto-style6">                   
                        <asp:Label ID="Label3" runat="server" Font-Names="SansSerif" Font-Size="11pt" Text="First Name:"></asp:Label>
</td>
                    <td class="auto-style7"><asp:TextBox ID="FirstName" runat="server" Width="278px" ></asp:TextBox>
            </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label4" runat="server" Font-Names="SansSerif" Font-Size="11pt" Text="Last Name:"></asp:Label>

                    </td>
                    <td class="auto-style7">        
                        <asp:TextBox ID="LastName" runat="server" Width="276px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label5" runat="server" Font-Names="SansSerif" Font-Size="11pt" Text="Password:"></asp:Label>

                    </td>
                    <td class="auto-style7">

                        <asp:TextBox ID="Password" runat="server" Width="279px"></asp:TextBox></td>
                    <td> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
                </tr>
                <tr>
                    <td class="auto-style6">                        
                        <asp:Label ID="Label6" runat="server" Font-Names="SansSerif" Font-Size="11pt" Text="Email:"></asp:Label>
</td>
                    <td class="auto-style7"><asp:TextBox ID="Email" runat="server" Width="278px" ></asp:TextBox></td>
                    <td>                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Email" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
                </tr>
                <tr>
                    
                           
                        <td class="auto-style6">                        
                        <asp:Label ID="Label7" runat="server" Font-Names="SansSerif" Font-Size="11pt" Text="Address:"></asp:Label>
</td>
                    <td class="auto-style7"><asp:TextBox ID="Address" runat="server" Width="278px" ></asp:TextBox></td>
                    <td>                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Address" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
                </tr>
                
                <tr>
                    <td class="auto-style6" rowspan="2">
                                                <asp:Label ID="Label8" runat="server" Font-Names="SansSerif" Font-Size="11pt" Text="Gender:"></asp:Label>

                    </td>
                    <td class="auto-style7"> <asp:RadioButton ID="Male" runat="server" GroupName="gender"  />
            <asp:Label ID="Malelabel" runat="server" Text="Male"></asp:Label></td>
                    <td rowspan="2">&nbsp;

                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><asp:RadioButton ID="Female" runat="server" GroupName="gender" />
            <asp:Label ID="Femalelabel" runat="server" Text="Female"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="3">
                                  
                        <asp:Button ID="Register" runat="server" OnClick="Register_Click" Text="Register" width="100%"  Font-Bold="True" ForeColor="White" BackColor="#003366" Font-Names="SansSerif" Font-Size="15pt" Height="63px" CssClass="b" />

                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
          
     
            
                
     
        </div>
    </form>
</body>
</html>

     
  