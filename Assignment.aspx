<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment.aspx.cs" Inherits="GUCera.Assignment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            Assignments
        </h2>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="viewAssign" SelectCommandType="StoredProcedure" >
                <SelectParameters>
                    <asp:QueryStringParameter Name="courseId" QueryStringField="id" Type="Int32" DefaultValue="null" />
                    <asp:SessionParameter DefaultValue="0" Name="Sid" SessionField="user" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="auto-style1">
            <asp:Panel ID="Panel6" runat="server"  CssClass="auto-style19" Height="341px" ScrollBars="Vertical" style="margin-top: 0px">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="cid,number,type" DataSourceID="SqlDataSource1"  Width="1132px" style="margin-left: 120px" Font-Size="13" Height="119px">
            <Columns>
                <asp:BoundField DataField="cid" HeaderText="Course ID" ReadOnly="True" SortExpression="cid" />
                <asp:BoundField DataField="number" HeaderText="Assignment Number" ReadOnly="True" SortExpression="number" />
                <asp:BoundField DataField="type" HeaderText="Type" ReadOnly="True" SortExpression="type" />
                <asp:BoundField DataField="fullGrade" HeaderText="Full Grade" SortExpression="fullGrade" />
                <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
                <asp:BoundField DataField="deadline" HeaderText="Deadline" SortExpression="deadline" />
                <asp:BoundField DataField="content" HeaderText="Content" SortExpression="content" />
                <asp:TemplateField HeaderText="Submit">
                    <ItemTemplate>
                        <asp:LinkButton ID="submit" Text="Submit" runat="server" CommandName="submit" CommandArgument='<%#Eval("cid") + ";" +Eval("number") + ";" +Eval("type")%>' OnClick="submit"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Grade">
                    <ItemTemplate>
                        <asp:LinkButton ID="grade" Text="View" runat="server" CommandName="grade" CommandArgument='<%#Eval("cid") + ";" +Eval("number") + ";" +Eval("type") %>' OnClick="grade"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Height="40px" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" Height="40px" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
                </asp:Panel>
        </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
