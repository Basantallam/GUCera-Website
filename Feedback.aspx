<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="GUCera2.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FeedBack</title>
    <style type="text/css">
        #Text1 {
            height: 137px;
            width: 644px;
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
         
          .divcenter{
           width: 850px;
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
            height: 133px;
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
    <h2> Course Feedback</h2>
   
        <div class="divcenter">
            <asp:TextBox ID="Text1" runat="server" TextMode="MultiLine" />
        
        <p>
            &nbsp;</p>
        <asp:Button ID="submit" runat="server" Text="Submit Feedback" OnClick="submit_Click" CssClass="b" />
            </div>
    </form>
</body>
</html>
