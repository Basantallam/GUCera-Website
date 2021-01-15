<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChoosePromo.aspx.cs" Inherits="GUCera.ChoosePromo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        #form1 {
            height: 961px;
            width: 1669px;
        }
        .auto-style1 {
            width: 290px;
        }
        .auto-style3 {
            height: 163px;
        }
        .auto-style4 {
            margin-left: 5px;
            margin-top: 6px;
            margin-right: 0px;
        }
        .auto-style8 {
            margin-top: 0px;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            margin-bottom: 1px;
        }
        .auto-style11 {
            height: 24px;
        }
        .auto-style12 {
            height: 15px;
        }
         .back{
            background-image: url('adminback.jpg');
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
    </style>
</head>
<body class="back" style="height:100% ; width:100%;background-color: rgb(100, 136, 145)" >
    <form id="form1" runat="server" style=" height:100%; ">
          <header style="background-color:rgb(7, 30, 36); ">
            <h1 style="color:white ">
                &nbsp;<asp:Label ID="Label3" runat="server" Font-Names="Georgia" Text="GUCera"></asp:Label>
            &nbsp;|
            <asp:Button ID="home" runat="server" OnClick="Home_Click" Text="Home" BorderStyle="None" Font-Names="SansSerif" Font-Size="12pt"   Height="24px" Width="189px" Font-Bold="True" cssClass="h" />
                <asp:Button ID="profile" runat="server" Text="User" OnClick="profile_Click" CssClass="u" Font-Bold="True" Font-Size="13pt" />
         

            </h1>
        </header>
        <div>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style1" rowspan="3"> 
            <asp:Panel ID="Panel3" runat="server" BackColor="Black" Height="945px" style="margin-right: 9px" Width="318px">
                <br />
                <asp:Label ID="Label4" runat="server" BackColor="Black" BorderWidth="0px" Font-Bold="True" Font-Names="Courier New" Font-Size="13pt" ForeColor="White" Height="31px" style="margin-left: 0px; margin-top: 0px;" Text=".:Admin Home" Width="298px"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" BackColor="Black" BorderWidth="0px" Font-Bold="True" Font-Names="Courier New" Font-Size="13pt" ForeColor="White" Height="52px" style="margin-left: 16px" Text=" Options:" Width="144px"></asp:Label>
                <asp:Button ID="AdminViewAllCoursesButton" runat="server" OnClick="AdminViewAllCoursesButton_Click" Text="View All Courses" Width="298px"  Font-Bold="True" Font-Names="Courier New" cssClass="h" Height="43px" style="margin-top: 0px" />
                <asp:Button ID="AdminViewNonAcceptedCoursesButton" runat="server"  Font-Bold="True" Font-Names="Courier New" cssClass="h" Height="40px" OnClick="AdminViewNonAcceptedCoursesButton_Click" style="margin-top: 0px; margin-bottom: 0px;" Text="Non Accepted Courses" Width="299px" />
                <asp:Button ID="CreatePromo" runat="server"  Font-Bold="True" Font-Names="Courier New" cssClass="h" Height="43px" OnClick="NewPromo_Click" Text="Create new Promocode" Width="299px" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="SELECT id, firstName, lastName, email FROM Users WHERE (id = @id)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="2" Name="id" QueryStringField="id" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="PromosIdontHave" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="1" Name="id" SessionField="user" />
                        <asp:QueryStringParameter DefaultValue="2" Name="sid" QueryStringField="id" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </asp:Panel>
        
                    </td>
                    <td class="auto-style11">
                    <asp:Panel ID="Panel1" runat="server" style="margin-left: 31px" CssClass="auto-style8">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="16pt" ForeColor="White" Text="Chosen Student Details"></asp:Label>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Names="Courier New" Font-Size="13pt" ForeColor="Black" GridLines="Vertical" Height="16px" style="margin-left: 0px;" Width="840px">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                                <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            </Columns>
                        </asp:GridView>
                        <br />
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="16pt" ForeColor="White" Text="Choose Promocode"></asp:Label>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" CssClass="auto-style4" DataKeyNames="code" DataSourceID="SqlDataSource2" Font-Bold="True" Font-Italic="False" Font-Names="Courier New" Font-Size="13pt" Height="51px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="836px">
                            <Columns>
                                <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" SortExpression="code" />
                                <asp:BoundField DataField="isuueDate" HeaderText="Issue date" SortExpression="isuueDate" />
                                <asp:BoundField DataField="expiryDate" HeaderText="expiryDate" SortExpression="expiryDate" />
                                <asp:BoundField DataField="discount" HeaderText="discount" SortExpression="discount" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="issue" runat="server" CommandArgument='<%#Eval("code")%>' OnClick="Issue_Click" Text="choose"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
           
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </form>
</body>
</html>
