<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IssuePromoStudent.aspx.cs" Inherits="GUCera.IssuePromoStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
        <style type="text/css">
            #form1 {
                height: 977px;
                margin-top: 0px;
            }
            .auto-style1 {
                margin-left: 1px;
                margin-top: 22px;
                margin-right: 37px;
            }
            .auto-style3 {
                width: 100%;
            }
            .auto-style4 {
                height: 13px;
                width: 370px;
            }
            .auto-style5 {
                margin-left: 1px;
            }
            .auto-style6 {
                height: 118px;
            }
            .auto-style7 {
                height: 33px;
            }
            .auto-style8 {
                margin-bottom: 0px;
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
            .auto-style9 {
                text-align: center;
            }
             .back{
            background-image: url('adminback.jpg');
        }
        </style>
       

   
</head>
<body class="back" style="height:100% ; width:100%;background-color:rgb(7, 30, 36); margin-right: 183px; margin-bottom: 195px;">
    <form id="form1" runat="server">
             <header style="background-color:rgb(7, 30, 36); ">
            <h1 style="color:white ">
                &nbsp;<asp:Label ID="Label4" runat="server" Font-Names="Georgia" Text="GUCera"></asp:Label>
            &nbsp;|
            <asp:Button ID="home" runat="server" OnClick="Home_Click" Text="Home" BorderStyle="None" Font-Names="SansSerif" Font-Size="12pt"   Height="24px" Width="189px" Font-Bold="True" cssClass="h" />
                <asp:Button ID="profile" runat="server" Text="User" OnClick="profile_Click" CssClass="u" Font-Bold="True" Font-Size="13pt" />
         

            </h1>
        </header>
        <div>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4" rowspan="3">
            <asp:Panel ID="Panel1" runat="server" BackColor="Black" Height="854px" style="margin-right: 9px" Width="302px">
                <br />
                <asp:Label ID="Label1" runat="server" BackColor="Black" BorderWidth="0px" Font-Bold="True" Font-Names="Courier New" Font-Size="13pt" ForeColor="White" Height="31px" style="margin-left: 0px; margin-top: 0px;" Text=".:Admin" Width="298px"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" BackColor="Black" BorderWidth="0px" Font-Bold="True" Font-Names="Courier New" Font-Size="13pt" ForeColor="White" Height="52px" style="margin-left: 16px" Text=" Options:" Width="144px"></asp:Label>
                <asp:Button ID="AdminViewAllCoursesButton" runat="server" OnClick="AdminViewAllCoursesButton_Click" Text="View All Courses" Width="298px" Font-Bold="True" Font-Names="Courier New" cssClass="h" Height="43px" style="margin-top: 0px" />
                <asp:Button ID="AdminViewNonAcceptedCoursesButton" runat="server" Font-Bold="True" Font-Names="Courier New" cssClass="h" Height="40px" OnClick="AdminViewNonAcceptedCoursesButton_Click" style="margin-top: 0px; margin-bottom: 0px;" Text="Non Accepted Courses" Width="299px" />
                <asp:Button ID="CreatePromo" runat="server" Font-Bold="True" Font-Names="Courier New" cssClass="h" Height="43px" OnClick="NewPromo_Click" Text="Create new Promocode" Width="299px" />
                <asp:SqlDataSource ID="AdminListStudents" runat="server" ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="AdminListAllStudents" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </asp:Panel>
        
                    </td>
                    <td class="auto-style7">
                        <br />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="16pt" ForeColor="White" Text="Choose a student to issue a promocode"></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style6">
                <asp:Panel ID="Panel2" runat="server" Width="848px" CssClass="auto-style5" Height="324px" ScrollBars="Vertical">
                    <br />
                    <div class="auto-style9">
                        <asp:GridView ID="StudentList" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" DataKeyNames="id" DataSourceID="AdminListStudents" EmptyDataText="  " Font-Bold="True" Font-Names="Courier New" Font-Size="13pt" ForeColor="Black" GridLines="Horizontal" Height="44px" Width="705px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                                <asp:BoundField DataField="lastName" HeaderText="last Name" SortExpression="lastName" />
                                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="view" runat="server" CommandArgument='<%#Eval("id")%>' OnClick="ChooseStudent_Click" Text="choose"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle HorizontalAlign="Left" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>
                    </div>
                </asp:Panel>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                
                </table>
        </div>
        
    </form>
</body>
</html>