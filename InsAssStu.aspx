<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsAssStu.aspx.cs" Inherits="GUCera.InsAssStu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>
        View Assignments
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
            View Students&#39; Assignments:</h2>
        <div class="divcenter">
            <asp:SqlDataSource ID="SqlDataAss" runat="server" ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="InstructorViewAssignmentsStudents" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="instrId" SessionField="user" Type="Int32" />
                    <asp:QueryStringParameter DefaultValue="1" Name="cid" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <div class="auto-style1">

                
                <asp:Panel ID="Panel6" runat="server"  CssClass="auto-style19" Height="341px" ScrollBars="Vertical" style="margin-top: 0px">

            <asp:GridView ID="GridAssignments" runat="server" BackColor="White" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" AlternatingRowStyle-BorderColor="#66CCFF" AlternatingRowStyle-BackColor="#CCFFFF" 
                AutoGenerateColumns="False"  DataKeyNames="sid,cid,assignmentNumber,assignmenttype" DataSourceID="SqlDataAss" Width="837px" OnSelectedIndexChanged="GridAssignments_SelectedIndexChanged" Height="120px" >
                
                <AlternatingRowStyle BackColor="#CCFFFF" BorderColor="#66CCFF" />
                <Columns>
                    <asp:BoundField DataField="sid" HeaderText="Student ID" ReadOnly="True" SortExpression="sid" />
                    <asp:BoundField DataField="cid" HeaderText="Course ID" ReadOnly="True" SortExpression="cid" />
                    <asp:BoundField DataField="assignmentNumber" HeaderText="Assignment Number" ReadOnly="True" SortExpression="assignmentNumber" />
                    <asp:BoundField DataField="assignmenttype" HeaderText="Assignment Type" ReadOnly="True" SortExpression="assignmenttype" />
                    <asp:BoundField DataField="grade" HeaderText="Grade" SortExpression="grade" />
                    
                      <asp:TemplateField HeaderText="Add Grade">
                    <ItemTemplate>
                        <asp:LinkButton ID="Add" Text="Add" runat="server" CommandArgument='<%#Eval("sid")+";"+ Eval("cid")+ ";" +Eval("assignmentNumber")+ ";" +Eval("assignmenttype")%>' OnClick="grade_Click"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Issue Certificate">
                    <ItemTemplate>
                        <asp:LinkButton ID="view" Text="Issue" runat="server" CommandArgument='<%#Eval("sid")+";"+ Eval("cid")%>' OnClick="issue_Click"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                </Columns>
                
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#009999" Font-Bold="True" ForeColor="White" />
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
            <div>
                <h3>Type The Grade:</h3>
            </div>
            <div class="divcenter">
                
                <asp:TextBox ID="g" runat="server" placeholder="Type The Grade"></asp:TextBox>
                
            </div>
        </div>
    </form>
</body>
</html>
