<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Instructor.aspx.cs" Inherits="GUCera.Instructor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .log{
            font-size:13px;
            background-color:#003366 ;
         color:white;
        }
        .log:hover{
            background-color: white;
         color:#003366;
         cursor:pointer;
         font-size:15px;
        }
         .b {
            background-color: Transparent;
              
            border:none;
             border-radius: 10px;  
             font-size:20px;
            height:50px;
            text-wrap:avoid;

        }
      
        .b:hover {
            cursor: pointer;
         background-color:#003366 ;
         color:white;

        }
          
        
        .auto-style1 {
            width: 100%;
            height:625px
        }
        
        
        
        .auto-style4 {
            height: 77px;
        }
        
        .auto-style7 {
            width: 100%;
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
        .auto-style8 {
            font-size: medium;
        }
        .auto-style9 {
            text-align: right;
        }
    </style>
</head>
<body style="height:100% ; width:100%;background-color: rgb(100, 136, 145)" >
    <form id="form1" runat="server" autocomplete="off" style=" height:100%; ">
        <header style="background-color:rgb(7, 30, 36); ">
            <h1 style="color:white ">
                &nbsp;<asp:Label ID="Label2" runat="server" Font-Names="Georgia" Text="GUCera"></asp:Label>
            &nbsp;|
            <asp:Button ID="home" runat="server" OnClick="Home_Click" Text="Home" BorderStyle="None" Font-Names="SansSerif" Font-Size="12pt"   Height="24px" Width="189px" Font-Bold="True" cssClass="h" />
         <asp:Button ID="profile" runat="server" Text="User" OnClick="profile_Click" CssClass="u" Font-Bold="True" Font-Size="13pt" />

            </h1>
        </header>
         <div>

               
               <table class="auto-style1">
                           <tr>
                               <td class="auto-style4">
                                   
                                   <table class="auto-style7">
                                       <tr >
                                           <td >
                                                  <asp:Button ID="viewcourse" runat="server"  OnClick="viewCourses_Click" Text="My Courses" CssClass="b"  />
                                               </td>
                                           
                                          
                                        <td>
                                            <asp:Button ID="Button1" runat="server"  OnClick="AdCourses_Click" Text="Add Courses" CssClass="b"  />
                                           </td>
                                           <td >
                                            <asp:Button ID="log" runat="server"  OnClick="Login_Click" Text="Log Out" CssClass="b"  />

                                        </td>
                                         
                                       </tr>
                                   </table>
                                   
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style2">&nbsp;
                                    <img src="/Welcome.png" alt="Simply Easy Learning" style=" height:600px ; position:center"  />
                               </td></tr>
        
             <tr><td>
                  <div >
              &nbsp;
              <br />
              <asp:Label ID="Label1" runat="server" Text="NB: Sorry We Are Only 3 Members  Some Instructor Pages are not available" Font-Bold="True" Font-Size="14px" ForeColor="#003366" CssClass="auto-style8"></asp:Label>

          </div>                               

                               </td>
                           </tr>
                       </table>
                      
           </div>
         
    </form>
</body>
</html>
