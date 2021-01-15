<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminViewNonAcceptedCourses.aspx.cs" Inherits="GUCera.AdminViewNonAcceptedCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Not Accepted Course List</title>
    <style type="text/css">
        
        .auto-style1 {
            width: 100%;
            height: 747px;
        }
        .auto-style13 {
            height: 1059px;
        }
        .auto-style15 {
            width: 245px;
            height: 831px;
            direction: ltr;
        }
        .auto-style16 {
            width: 215px;
            height: 831px;
        }
        .auto-style11 {
            margin-left: 39px;
            margin-top: 46px;
        }
        .auto-style17 {
            width: 245px;
            height: 73px;
            direction: ltr;
        }
        .auto-style18 {
            margin-left: 16px;
        }
        .auto-style19 {
            margin-right: 0px;
        }
        .auto-style20 {
            width: 245px;
            height: 82px;
            direction: ltr;
        }
       
        .auto-style22 {
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .auto-style23 {
            text-align: center;
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
        
        .auto-style24 {
            text-align: left;
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
        .h:hover {
            cursor: pointer;
         background-color:white ;
         color:#003366;
         border-radius: 10px;


        }
    </style>

</head>
<body class="back" style="height:100% ; width:100%;background-color:rgb(7, 30, 36)">
    <form id="nonacceptedcourselist" runat="server" autocomplete="off">
           <header style="background-color:rgb(7, 30, 36); ">
            <h1 style="color:white ">
                &nbsp;<asp:Label ID="Label1" runat="server" Font-Names="Georgia" Text="GUCera"></asp:Label>
            &nbsp;|
            <asp:Button ID="home" runat="server" OnClick="Home_Click" Text="Home" BorderStyle="None" Font-Names="SansSerif" Font-Size="12pt"   Height="24px" Width="189px" Font-Bold="True" cssClass="h" />
                <asp:Button ID="profile" runat="server" Text="User" OnClick="profile_Click" CssClass="u" Font-Bold="True" Font-Size="13pt" />
         

            </h1>
        </header>
       

        <div class="auto-style13">
               
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style16" rowspan="3">
                                  
                <asp:Panel ID="Panel1" runat="server" BackColor="Black" Height="1522px" style="margin-right: 1px; margin-top: 0px" Width="295px">
                       <br />
                       <asp:Button ID="Button1" runat="server"  Font-Bold="True" Font-Names="Courier New" cssClass="h" Height="43px" OnClick="AdminViewAllCoursesButton_Click" Text="View All Courses" Width="299px" />
                                    <br />
                                    <asp:Button ID="Button2" runat="server"  Font-Bold="True" Font-Names="Courier New" cssClass="h" Height="40px" OnClick="NewPromo_Click" style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px;" Text="Create Promocode" Width="299px" />
                                    <br />
                                    <asp:Button ID="Button3" runat="server"  Font-Bold="True" Font-Names="Courier New" cssClass="h" Height="39px" OnClick="IssuePromotoStudent_Click" style="margin-left: 2px; margin-right: 1px; margin-top: 0px; margin-bottom: 0px" Text="Issue Promocode" Width="296px" />
&nbsp;<asp:Localize ID="Localize1" runat="server"></asp:Localize>
                   
                </asp:Panel>
                                    </td>
                            <td class="auto-style17">
                                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="16pt" ForeColor="White" Text="Not Accepted Courses"></asp:Label>
                                     &nbsp;<asp:Panel ID="Panel6" runat="server" Width="742px" CssClass="auto-style19" Height="341px" ScrollBars="Vertical">
                                  
                                     &nbsp;<div class="auto-style23">
                                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style11" DataKeyNames="id" DataSourceID="SqlDataSource3" EmptyDataText=" All Courses are accepted  " Font-Bold="True" Font-Names="Courier New" Font-Size="13pt" ForeColor="Black" Height="64px" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="622px">
                                             <Columns>
                                                 <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                                 <asp:BoundField DataField="creditHours" HeaderText="creditHours" SortExpression="creditHours" />
                                                 <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                                 <asp:BoundField DataField="content" HeaderText="content" SortExpression="content" />
                                                 <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                             </Columns>
                                         </asp:GridView>
                                     </div>
                                     <br />
                                     &nbsp;&nbsp;&nbsp;
                                     <br />
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:Panel>
                           
                                 
                                    </td>
                                    </tr>
                        <tr>
                            <td class="auto-style20">
                                <asp:Panel ID="Panel7" runat="server">
                                    &nbsp;&nbsp;
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Courier New" Font-Size="13pt" ForeColor="White" Text="Course ID"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:TextBox ID="acceptCoursetb" runat="server" Height="44px" Width="225px" CssClass="auto-style18"></asp:TextBox>
                                    <br />
                                    &nbsp;&nbsp;<br /> <asp:Button ID="AcceptCourse" runat="server" Font-Bold="True" Font-Names="Courier New"  Height="34px" OnClick="AcceptCourse_Click" Text="Accept" Width="148px" CssClass="b" />
                                    &nbsp;</asp:Panel>
                           
                                 
                                    </td>
                                    </tr>
                        <tr>
                            <td class="auto-style15">
                                &nbsp;</td>
                                    </tr>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GUCera %>"  SelectCommand="Select name, creditHours, price, content, id  from Course 
Where accepted = 0 or accepted is null"></asp:SqlDataSource>
                               
                               
          </table>
               
        </div>
    </form>
</body>
</html>
