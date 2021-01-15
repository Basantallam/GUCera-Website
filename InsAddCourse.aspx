<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsAddCourse.aspx.cs" Inherits="GUCera.InsAddCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Add Courses
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
          
       
        
        
        .auto-style2 {
            text-align: right;
            font-size: 13pt;
        }
        .auto-style3 {
            font-size: 13pt;
        }
          
       
   
        
        
        .auto-style4 {
            width: 100%;
            height: 326px;
        }
        
        
        .auto-style7 {
            text-align: right;
        }
        
        
    </style>
</head>
<body style="height:100% ; width:100%;background-color: rgb(100, 136, 145)" >
    <form id="form1" runat="server" autocomplete="off" style=" height:100%; ">
        <header style="background-color:rgb(7, 30, 36); ">
            <h1 style="color:white ">
                &nbsp;<asp:Label ID="Label1" runat="server" Font-Names="Georgia" Text="GUCera"></asp:Label>
            &nbsp;|
            <asp:Button ID="home" runat="server" OnClick="Home_Click" Text="Home" BorderStyle="None" Font-Names="SansSerif" Font-Size="12pt"   Height="24px" Width="189px" Font-Bold="True" cssClass="h" />
                <asp:Button ID="profile" runat="server" Text="User" OnClick="profile_Click" CssClass="u" Font-Bold="True" Font-Size="13pt" />
         

            </h1>
        </header>
        <h2>
            Add Courses
        </h2>
        <br />
        <br />
        <div class="divcenter">
           
             <table class="auto-style4">
                 <tr>
                      <td class="auto-style2"><strong>Credit Hours</strong></td>
                     <td>
                                        
                                        <strong>
                                        
                                        <asp:TextBox ID="hours" runat="server" CssClass="auto-style3" ></asp:TextBox>
                                        </strong>
                                    </td>
                 </tr>
                 <tr>
                     <td class="auto-style2"><strong>Name</strong></td>
                     <td>
                                        <strong>
                                        <asp:TextBox ID="name" runat="server" CssClass="auto-style3"></asp:TextBox>
                                        </strong>
                                    </td>
                 </tr>
                 <tr>
                     <td class="auto-style2"><strong>Price</strong></td>
                       <td >
                                        <strong>
                                        <asp:TextBox ID="price" runat="server" CssClass="auto-style3"></asp:TextBox>
                                        </strong>
                                    </td>
                 </tr>
                 <tr>
                     <td class="auto-style7">&nbsp;</td>
                     <td>
                                        <asp:Button ID="course" runat="server" Text="Add Course" OnClick="add_Click"  CssClass="b" />
                                    </td>
                 </tr>
             </table>
            </div>
    </form>
</body>
</html>
