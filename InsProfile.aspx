﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsProfile.aspx.cs" Inherits="GUCera.InsProfile" %>

<!DOCTYPE html>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
           .divcenter{
           width: 900px;
	       position: center;
	       top:0;
	       bottom: 0;
	        left: 0;
	        right: 0;
	        margin: auto;
    
       }
        .auto-style1 {
            text-align: center;
        }
          
        
        .b{
            background-color:#003366;
            
             border:solid;
             Font-Size:13pt ;
             Height:35px;
             Width:220px;
             border-width:4px;
             border-color:#003366 ;
             color:White;
        }
        .b:hover{
             border-color:#003366 ;
            background-color:white;
            color:#003366;
            cursor:pointer;
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
        .h:hover ,.u:hover {
            cursor: pointer;
         background-color:white ;
         color:#003366;
         border-radius: 10px;


        }
       
        
        
    </style>
</head>
<body style="height:100% ; width:100%;background-color: rgb(100, 136, 145)" >
    <form id="form1" runat="server" autocomplete="off" style=" height:100%; ">
        <header style="background-color:rgb(7, 30, 36); ">
            <h1 style="color:white ">
                &nbsp;<asp:Label ID="Label3" runat="server" Font-Names="Georgia" Text="GUCera"></asp:Label>
            &nbsp;|
            <asp:Button ID="home" runat="server" OnClick="Home_Click" Text="Home" BorderStyle="None" Font-Names="SansSerif" Font-Size="12pt"   Height="24px" Width="189px" Font-Bold="True" cssClass="h" />
                <asp:Button ID="profile" runat="server" Text="User" OnClick="profile_Click" CssClass="u" Font-Bold="True" Font-Size="13pt" />
         

            </h1>
        </header>
        <div>
             <br />
            <asp:Label ID="Label1" runat="server" Text="Profile:" Font-Bold="True" Font-Size="17pt" BorderStyle="None" Font-Underline="True" ForeColor="#003366"></asp:Label>
            <br />
        </div>

        <div class="divcenter">
           <div class="auto-style1">
           
            <asp:GridView ID="GridProfile" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="115px" Width="894px" Font-Size="18px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                    <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                    <asp:BoundField DataField="rating" HeaderText="Rating" SortExpression="rating" />
                    <asp:BoundField DataField="mobileNumber" HeaderText="Mobile Number" SortExpression="mobileNumber" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            </div>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="ViewInstructorProfile" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="instrId" SessionField="user" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br /><br /><br />
            </div>
            
            
        <div>
            <asp:Label ID="Label2" runat="server" Text="Mobile Numbers:" margin="20px" Font-Bold="True" Font-Size="17pt" BorderStyle="None" Font-Underline="True" ForeColor="#003366"></asp:Label>
        </div>
        <div class="divcenter">
            <div class="auto-style1">
            </div>
            
            <br />
            <br /><br />
            <asp:TextBox ID="mobileno" runat="server" Width="284px" Height="28px" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="mobile_Click" Text="Add Mobile Number" Font-Bold="True"  CssClass="b"/>
       
        </div>
    </form>
    
</body>
</html>
