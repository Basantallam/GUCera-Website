<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplyCourse.aspx.cs" Inherits="GUCera.ApplyCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>
            Apply Courses
        </title>
        <style>
   
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
            Course Details:</h2>
        <div class="divcenter">
            <div class="auto-style1">
            <asp:GridView ID="gridInfo" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataViewDetail"  Width="866px" AutoGenerateColumns="False" Height="126px">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Course ID" SortExpression="id" />
                    <asp:BoundField DataField="creditHours" HeaderText="Credit Hours" SortExpression="creditHours" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="courseDescription" HeaderText="Course Description" SortExpression="courseDescription" />
                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                    <asp:BoundField DataField="instructorId" HeaderText="Instructor Id" SortExpression="instructorId" />
                    <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                    <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                    
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
            <asp:SqlDataSource ID="SqlDataViewDetail" runat="server" ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="courseInformation" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="3" Name="id" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <h3>
            Instructors teaching the course:
        </h3>
        <div class="divcenter">


            <asp:SqlDataSource ID="SqlDataInstCourse" runat="server" ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="SELECT I.insid, U.firstName, U.lastName FROM InstructorTeachCourse AS I INNER JOIN Users AS U ON I.insid = U.id WHERE (I.cid = @cid)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="3" Name="cid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <div class="auto-style1">
            <asp:GridView ID="gridInstCourse" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataInstCourse" AutoGenerateColumns="False" Height="114px" Width="509px" >
                <Columns>
                    <asp:BoundField DataField="insid" HeaderText="Instructor ID" SortExpression="insid" />
                    <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                    <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                    <asp:TemplateField HeaderText="Enroll">
                    <ItemTemplate>
                        <asp:LinkButton ID="apply" Text="enroll" runat="server" CommandArgument='<%#Eval("insid")%>' OnClick="ApplyCourse_Click"></asp:LinkButton>
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


        </div>

    </form>
</body>
</html>
