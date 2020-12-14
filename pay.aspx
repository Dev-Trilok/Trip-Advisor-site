<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pay.aspx.cs" Inherits="pay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 736px;
            height:auto;
           
            padding:20px;
        }
       
        .style4
        {
            height: auto;
            width: 1100px;
            padding-bottom:30px;
        }
       
        .style5
        {
            width: 148px;
            background-color:#ff66ff;
            text-align:center;
        }
       
        .style6
        {
            width: 241px;
            background-color:#ff66ff;
            text-align:center;
        }
        .style7
        {
            width: 102px;
            text-align:center;
            background-color:#ff66ff;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" padding-top:55px;" class="style4">
  
  <h2 style="background-color: #999999; padding-left: 50px; font-family: Algerian;">&nbsp;&nbsp;&nbsp; Pay Online</h2>
  <p style=" text-align:center;">Please complete the fields below.
All fields are required.
</p>
    <table class="style1" align="center" bgcolor="#ff66ff" >
        <tr>
            <td class="style6" align="center">
                Enter Amount To Pay</td>
            <td class="style7">
                <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="197px" 
                    BackColor="#FFB3FF" ></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*">Enter Amount to pay</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter in Numbers" 
                    ValidationExpression="\d+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                First Name</td>
            <td class="style7">
                <asp:TextBox ID="TextBox2" runat="server" Height="39px" Width="196px" 
                    BackColor="#FFB3FF"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*">Enter First Name Here</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Last Name</td>
            <td class="style7">
                <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="197px" 
                    BackColor="#FFB3FF"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*">Enter Last Name Here</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Mobile Number</td>
            <td class="style7">
                <asp:TextBox ID="TextBox4" runat="server" Height="41px" Width="196px" 
                    BackColor="#FFB3FF" ></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Invalid Mobile Number" 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Email
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox5" runat="server" Height="41px" Width="197px" 
                    BackColor="#FFB3FF"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Invalid Email Address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Payment Description(Tour Name)</td>
            <td class="style7">
                <asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="201px" 
                    BackColor="#FFB3FF"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="*">Enter Tour Name Here</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="#FF66FF">
                &nbsp;</td>
            <td class="style5" bgcolor="#FF66FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2" bgcolor="#FF66FF">
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="99px" 
                    onclick="Button1_Click" Height="45px" /> &nbsp;&nbsp;&nbsp;                <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" 
                    Height="45px" Width="91px" />
            </td>
            <td align="center" class="style5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                    SelectCommand="SELECT * FROM [payonline]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" bgcolor="#FF66FF">
                &nbsp;</td>
        </tr>
    </table>
    </div>
</asp:Content>

