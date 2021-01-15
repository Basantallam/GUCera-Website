<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsAss.aspx.cs" Inherits="GUCera.InsAss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Add Assignment
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
            height: 479px;
        }
          
       
        
        
        .auto-style5 {
            text-align: center;
            height: 52px;
        }
          
       
        
        
        .auto-style6 {
            background-color: white;
            border: 4px solid #003366;
            Font-Size: 13pt;
            color: #003366;
        }
          
       
        
        
        .auto-style7 {
            text-align: right;
            font-size: 13pt;
            height: 84px;
        }
        .auto-style8 {
            height: 84px;
        }
          
       
        
        
        .auto-style9 {
            width: 223px;
            height: 72px;
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
            Add Assignment:</h2>
        <br />
        <br />
        <div class="divcenter">

             <table class="auto-style4">
                 <tr>
                      <td class="auto-style2"><strong>Number</strong></td>
                  
                      <td>
                                        
                                        <strong>
                                        
                                        <asp:TextBox ID="number" runat="server" CssClass="auto-style3" ></asp:TextBox>
                                        </strong>
                                   </td>
                                    
                                  
                                    
                                                                     
                                  
                                    
                 </tr>
                 <tr>
                     <td class="auto-style2"><strong>Type</strong></td>
                       <td>
                                        <strong>
                                        <asp:TextBox ID="type" runat="server" CssClass="auto-style3"></asp:TextBox>
                                        </strong>
                                    </td>
                 </tr>
                 <tr>
                     <td class="auto-style2"><strong>Full Grade</strong></td>
                       <td>
                                        <strong>
                                        <asp:TextBox ID="grade" runat="server" CssClass="auto-style3"></asp:TextBox>
                                        </strong>
                                    </td>
                 </tr>
                 <tr>
                     <td class="auto-style2"><strong>Weight</strong></td>
                     <td>
                         <strong>
                            <asp:TextBox ID="weight" runat="server" CssClass="auto-style3"></asp:TextBox>
                          </strong>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style2"><strong>Deadline</strong></td>
                     <td>
                                        <strong>
                                        <asp:TextBox ID="deadline" runat="server" CssClass="auto-style3"></asp:TextBox>
                                        </strong>
                                    </td> 
                 </tr>
                 <tr>
                     <td class="auto-style7"><strong>Content</strong></td>
                     <td class="auto-style8">
                                        <strong>
                                            <asp:TextBox ID="content" runat="server" TextMode="MultiLine" />
                                        </strong>
                                    </td> 
                 </tr>
                 <tr>
                     <td colspan="2" class="auto-style5"> 
                         <asp:Button ID="ass" runat="server" Text="Add Assignment" OnClick="add_Click"  CssClass="auto-style6" Height="38px" Width="217px" />


                     </td>
                 </tr>
                
             </table>

            
            </div>
    </form>
</body>
</html>
