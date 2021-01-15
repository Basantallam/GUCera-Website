<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Certificate.aspx.cs" Inherits="GUCera2.Certificate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Recieved Certificates </title>
    <style>
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
          
          .divcenter{
           width: 850px;
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
         
        
        
    </style>
</head>
<body style="height:100% ; width:100%;background-color: rgb(100, 136, 145)" >
    <form id="form1" runat="server" style=" height:100%; ">
        <header style="background-color:rgb(7, 30, 36); ">
            <h1 style="color:white ">
                &nbsp;<asp:Label ID="Label1" runat="server" Font-Names="Georgia" Text="GUCera"></asp:Label>
            &nbsp;|
            <asp:Button ID="home" runat="server" OnClick="Home_Click" Text="Home" BorderStyle="None" Font-Names="SansSerif" Font-Size="12pt"   Height="24px" Width="189px" Font-Bold="True" cssClass="h" />
                <asp:Button ID="profile" runat="server" Text="User" OnClick="profile_Click" CssClass="u" Font-Bold="True" Font-Size="13pt" />
         

            </h1>
        </header>
    <h2>Recieved Certificates</h2>
    
        <div class="divcenter">
        
            <div class="auto-style1">
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="sid,cid" DataSourceID="SqlDataSource1" Width="645px" Height="126px" Font-Size="13" >
            <Columns>
                <asp:BoundField DataField="sid" HeaderText="Student ID" ReadOnly="True" SortExpression="sid" />
                <asp:BoundField DataField="cid" HeaderText="Course ID" ReadOnly="True" SortExpression="cid" />
                <asp:BoundField DataField="issueDate" HeaderText="Issue Date" SortExpression="issueDate" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="viewCertificate" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:QueryStringParameter Name="cid" QueryStringField="id" Type="Int32" />
                <asp:SessionParameter DefaultValue="0" Name="sid" SessionField="user" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
            </div>
    </form>
</body>
</html>
