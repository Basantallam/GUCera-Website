<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsViewCourse.aspx.cs" Inherits="GUCera.InsViewCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        View Courses
    </title>
    <style>
   .u {
        float:right;
         
         background-color:Transparent; 
            color:White;
           border:none;
           
           
          
        }
       .b{
            background-color:white;
             border:solid;
             Font-Size:13pt ;
             Height:30px;
             Width:200px;
             border-width:4px;
             border-color:#003366 ;
             color:#003366;
        }
        .b:hover{
            background-color:#003366;
            color:white;
            cursor:pointer;
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
           width: 750px;
           height:500px;
	       position: center;
	       top:0;
	       bottom: 0;
	        left: 0;
	        right: 0;
	        margin: auto;
    
          }
          
       
        
        
        .auto-style4 {
            width: 750px;
            height: 500px;
            position: center;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
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
            View Courses
        </h2>
         <div>
            <asp:SqlDataSource ID="SqlDataAccptCourses" runat="server"  ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="InstructorViewAcceptedCoursesByAdmin" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="instrId" SessionField="user" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="auto-style4">
        <asp:GridView ID="gridCourses" runat="server" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Size="13pt"
            Height="125px"  Width="750px" AutoGenerateColumns="False" DataSourceID="SqlDataAccptCourses" DataKeyNames="id"   >
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="creditHours" HeaderText="Credit Hours" SortExpression="creditHours" />
                   <asp:TemplateField HeaderText="Add Assignment">
                    <ItemTemplate>
                        <asp:LinkButton ID="Add" Text="Add" runat="server" CommandArgument='<%#Eval("id")%>' OnClick="Ass_Click"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="View Students' Assignments">
                    <ItemTemplate>
                        <asp:LinkButton ID="view" Text="View" runat="server" CommandArgument='<%#Eval("id")%>' OnClick="StuAss_Click"></asp:LinkButton>
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
    </form>
</body>
</html>
