<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeStudent.aspx.cs" Inherits="GUCera.HomeStudent" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
     

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
            height: 54px;
        }
       
        
        
        .auto-style9 {
            text-align: center;
        }
       
        
        
        .auto-style11 {
            height: 54px;
            text-align: right;
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
           <div>

               
               <table class="auto-style1">
                           <tr>
                               <td class="auto-style4">
                                   
                                   <table class="auto-style7">
                                       <tr >
                                           <td class="auto-style8" >
                                               <asp:Button ID="EnCourses" runat="server" Text="View Enrolled Courses" OnClick="enCourses_Click" CssClass="b"  />

                                           </td>
                                           <td class="auto-style8" >
                                              <asp:Button ID="AvCourses" runat="server"  OnClick="AvCourses_Click" Text="View Available Courses" CssClass="b"  />

                                           </td>
                                           <td class="auto-style8">
                                               <asp:Button ID="payment" runat="server" Text="Payment" OnClick="payment_Click" CssClass="b"   />

                                           </td>
                                           <td class="auto-style11">
                                               <asp:Button ID="log" runat="server" Text="Log Out" OnClick="logout_Click" CssClass="b"   />

                                           </td>
                                         
                                       </tr>
                                   </table>
                                   
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style9">&nbsp;
                                    <img src="/Welcome.png" alt="Simply Easy Learning" style=" height:600px ; position:center"  />
                               </td>
                           </tr>
                       </table>
                      
           </div>
                 

    </form>
</body>
</html>
