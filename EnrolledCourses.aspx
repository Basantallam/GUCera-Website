<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnrolledCourses.aspx.cs" Inherits="GUCera.EnrolledCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Enrolled Courses
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
        <h2>
            Enrolled Courses
        </h2>
     <div class="divcenter">
            <asp:SqlDataSource ID="SqlDataEnCourses" runat="server"  ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="SELECT c.name FROM [StudentTakeCourse] s INNER JOIN Course c ON s.cid =c.id
where s.sid=@sid">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="null" Name="sid" SessionField="user" />
                </SelectParameters>
            </asp:SqlDataSource>
        
            <div class="auto-style1">
         <asp:Panel ID="Panel6" runat="server"  CssClass="auto-style19" Height="341px" ScrollBars="Vertical" style="margin-top: 0px">

        
        <asp:GridView ID="gridCourses" runat="server" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            Height="130px"  Width="429px" AutoGenerateColumns="False" DataSourceID="SqlDataEnCourses" EmptyDataText="Empty">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Course Name" SortExpression="name" />
                <asp:TemplateField HeaderText="View Content">
                    <ItemTemplate>
                        <asp:LinkButton ID="view" Text="View" runat="server" CommandArgument='<%#Eval("name")%>' OnClick="ViewCourse_Click"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

            <EditRowStyle Height="40px" />

            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Height="40px" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
             </asp:Panel>
            </div>
         </div>
    </form>
</body>
</html>
