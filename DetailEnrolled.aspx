<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailEnrolled.aspx.cs" Inherits="GUCera.DetailEnrolled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Details 
    </title>
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
           width: 950px;
	       position: center;
	       top:0;
	       bottom: 0;
	        left: 0;
	        right: 0;
	        margin: auto;
    
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
       
        
        
        .auto-style1 {
            text-align: center;
        }
       
        
        
        .auto-style2 {
            width: 950px;
            position: center;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
            text-align: left;
        }
       
        
        
        .auto-style3 {
            width: 415px;
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
       
            <h2>
                Content Of The Course 
            </h2>
        
           <div>
               <div class="auto-style2">
                   <div class="auto-style1">
            <asp:GridView ID="gridInfo" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataViewDetail"  Width="1017px" AutoGenerateColumns="False" DataKeyNames="id" Height="111px">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Course ID" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="creditHours" HeaderText="Credit Hours" SortExpression="creditHours" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="courseDescription" HeaderText="Course Description" SortExpression="courseDescription" />
                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                    <asp:BoundField DataField="content" HeaderText="Content" SortExpression="content" />
                        <asp:TemplateField HeaderText="Assignments">
                    <ItemTemplate>
                        <asp:LinkButton ID="assignments" Text="View" runat="server" CommandName="assignments" CommandArgument='<%#Eval("id") %>' OnClick="assi"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                    <asp:TemplateField HeaderText="FeedBack">
                    <ItemTemplate>
                        <asp:LinkButton ID="feedback" Text="Add" runat="server" CommandName="feedback" CommandArgument='<%#Eval("id") %>' OnClick="feedback"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                     <asp:TemplateField HeaderText="Certificate">
                    <ItemTemplate>
                        <asp:LinkButton ID="cert" Text="view" runat="server" CommandName="cert" CommandArgument='<%#Eval("id") %>' OnClick="cert"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
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
                   <br /><br />
                   <table>
                       <tr>
                           <td>
                   <asp:Button ID="gradebutton" runat="server" Text="View Grade" CssClass="b" Visible="true" OnClick="grade_Click" />

                           </td>
                           <td class="auto-style3">
                   <asp:Label ID="grade" runat="server" Font-size="14pt" Font-Bold="True"></asp:Label>

                           </td>
                       </tr>
                   </table>
                   <br /><br />
                   <asp:Button ID="pay" runat="server" Text="Pay Course" CssClass="b" Visible="true" OnClick="pay_Click" />
               </div>
            <asp:SqlDataSource ID="SqlDataViewDetail" runat="server" ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="enrollInCourseViewContent" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="2" Name="id" SessionField="user" Type="Int32" />
                    <asp:QueryStringParameter DefaultValue="1" Name="cid" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
               
        </div>
    </form>
</body>
</html>
