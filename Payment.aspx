<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="GUCera.Payment" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <style type="text/css">
        .b{
            background-color:white;
             border:solid;
             Font-Size:13pt ;
             Height:35px;
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
        .div-left {
            float:left;
            width:15%;
            height: 240px;
        }
        .div-right {
            float:right;
            width:85%;
            height: 98px;
        }
        .auto-style2 {
            text-align: left;
            }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 283px;
        }
        .auto-style9 {
            width: 283px;
            height:85px;
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
       .divcenter{
           width: 850px;
	       position: center;
	       top:0;
	       bottom: 0;
	        left: 0;
	        right: 0;
	        margin: auto;
    
          }
        
        
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            font-size: 13pt;
        }
        .auto-style14 {
            text-align: left;
            color: #003366;
        }
        .auto-style15 {
            text-decoration: underline;
            font-size: 20pt;
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
        <h2 class="auto-style14"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style15">Payment: </span> </h2>
        <h2 class="auto-style2"> &nbsp;</h2>
        <div>

            <table class="auto-style7">
                <tr>
                    <td class="auto-style9">
                        <asp:Button ID="credit" runat="server" Text="Add Credit Card" OnClick="credit_Click"  CssClass="b" />
                        
                        <br />

                    </td>
                    <td class="auto-style12">
                        <div>

                            <table class="auto-style7">
                                <tr>
                                    <td class="auto-style13">Credit Card Numberr</td>
                                    <td class="auto-style13">Card Holder Name</td>
                                    <td class="auto-style13">Expiary Date</td>
                                    <td class="auto-style13">CVV</td>
                                </tr>
                                <tr>
                                    <td>
                                        
                                        <asp:TextBox ID="number" runat="server" ></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="holdername" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="expdate" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="cvv" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>

                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" >
                        <br />

                        <asp:Button ID="promo" runat="server" Text="View Promo Codes" OnClick="promo_Click" CssClass="b"/>
                    </td>
                    <td class="auto-style12" rowspan="2">
                        
                         <div class="divcenter">
                             <asp:Panel ID="Panel6" runat="server"  CssClass="auto-style19" Height="341px" ScrollBars="Vertical" style="margin-top: 0px ;margin-left:25pt">
                                    <br />
                                 <br />
                        <asp:GridView ID="GridPromo" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" DataKeyNames="code" DataSourceID="SqlDataPromo" Visible="False" Width="603px">
                            <Columns>
                                <asp:BoundField DataField="code" HeaderText="Code" ReadOnly="True" SortExpression="code" />
                                <asp:BoundField DataField="isuueDate" HeaderText="Issue Date" SortExpression="isuueDate" />
                                <asp:BoundField DataField="expiryDate" HeaderText="Expiry Date" SortExpression="expiryDate" />
                                <asp:BoundField DataField="discount" HeaderText="Discount" SortExpression="discount" />
                                <asp:BoundField DataField="adminId" HeaderText="Admin ID" SortExpression="adminId" />
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
                                    <asp:SqlDataSource ID="SqlDataPromo" runat="server" ConnectionString="<%$ ConnectionStrings:GUCera %>" SelectCommand="viewPromocode" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:SessionParameter DefaultValue="null" Name="sid" SessionField="user" Type="Int32" />
                                        </SelectParameters>
                            </asp:SqlDataSource>

                            </div>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">

                    </td>
                </tr>
            </table>

        </div>
        
    </form>
</body>
</html>
