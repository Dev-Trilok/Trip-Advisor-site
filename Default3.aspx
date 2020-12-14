<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            table-layout: fixed;
            width: 600px;
            border-radius:10px;
         
        }
        .style2
        {
            width: 300px;
            height:auto;
        }
        .style3
        {
            height: 40px;
        }
        .style tr td
        {
            text-align:center;
        
            }
        .style4
        {
            width: 200px;
            height: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div style=" height:auto; width:100%; background-position:center; line-height: normal; visibility: visible; display: inline-table; padding-top:55px;">
 <p style=" text-align:center;">Please complete the fields below.
All fields are required.
</p> 
 <table class="style1" align="center" 
        
            style="background-color: #4DA6FF; empty-cells: hide; margin-bottom:20px; margin-top:10px">
        <tr>
            <td colspan="2" align="center" bgcolor="#FF6600" height="20px" class="style3" 
                style="font-weight: bolder">
                <h2>Tour Details</h2></td>
        </tr>
        <tr>
            <td class="style4" bgcolor="#4DA6FF" align="center">
                Date Of Travel</td>
            <td bgcolor="#4DA6FF" class="style2">
                <asp:TextBox ID="TextBox1" runat="server" Height="41px" Width="250px" 
                    BackColor="#99C2FF"></asp:TextBox>
                <asp:ImageButton ID="ImageButton5" runat="server" Height="30px" 
                    ImageUrl="~/images/download (1).jpg" onclick="ImageButton5_Click" 
                    Width="35px" />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="200px" Width="220px" 
                    onselectionchanged="Calendar1_SelectionChanged">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style4" bgcolor="#4DA6FF" align="center">
                Travek Destination</td>
            <td bgcolor="#4da6ff" class="style2">
                <asp:TextBox ID="destination" runat="server" Height="39px" 
                    ToolTip="Enter Your Travel Destination Here..." Width="251px" 
                    ForeColor:black ForeColor="Black" BackColor="#99C2FF"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="destination" ErrorMessage="Destination is Empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" bgcolor="#4DA6FF" align="center">
                Duration Of Travel</td>
            <td bgcolor="#4da6ff" class="style2">
                <asp:DropDownList ID="DropDownduration" runat="server" 
                    ToolTip="Duration Of Travel" Height="40px" Width="251px" 
                    BackColor="#99C2FF">
                    <asp:ListItem Selected="True">none</asp:ListItem>
                    <asp:ListItem>02 Days / 01 Night</asp:ListItem>
                    <asp:ListItem>03 Days / 02 Night</asp:ListItem>
                    <asp:ListItem>04 Days / 03 Night</asp:ListItem>
                    <asp:ListItem>05 Days / 04 Night</asp:ListItem>
                    <asp:ListItem>06 Days / 05 Night</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropDownduration" ErrorMessage="Enter Duration Of Travels"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" bgcolor="#4da6ff" align="center">
                No. OF Travelers</td>
            <td bgcolor="#4da6ff" class="style2">
                <asp:DropDownList ID="DropDownperson" runat="server" 
                    ToolTip="Enter No. Of Persons Here..." Height="37px" Width="249px" 
                    BackColor="#99C2FF">
                    <asp:ListItem Selected="True">None</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DropDownperson" ErrorMessage="Enter No Of Travelers"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" bgcolor="#4da6ff" align="center">
                Accomdation Type</td>
            <td bgcolor="#4da6ff" class="style2">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    ToolTip="Enter Types Of Hotel You Want Here..." Height="39px" 
                    Width="249px" BackColor="#99C2FF">
                    <asp:ListItem>Luxary Hotel</asp:ListItem>
                    <asp:ListItem>5 Star Premium Hotel</asp:ListItem>
                    <asp:ListItem>4 Star Premium Hotel</asp:ListItem>
                    <asp:ListItem>3 Star Premium Hotel</asp:ListItem>
                    <asp:ListItem>Standard/Budget</asp:ListItem>
                    <asp:ListItem Selected="True">None</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DropDownList2" 
                    ErrorMessage="Enter Accomdation Type You Have"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" bgcolor="#4da6ff" align="center">
                Other Services</td>
            <td bgcolor="#4da6ff" class="style2">
                <asp:CheckBoxList ID="CheckBoxservice" runat="server" ToolTip="Other Services">
                    <asp:ListItem>Transportation</asp:ListItem>
                    <asp:ListItem>Air Ticket Booking</asp:ListItem>
                    <asp:ListItem>Guide</asp:ListItem>
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td class="style4" bgcolor="#4da6ff" align="center">
                Your Requirement</td>
            <td bgcolor="#4da6ff" class="style2">
                <asp:TextBox ID="TextBoxrequirement" runat="server" Height="95px" 
                    ToolTip="Your Requirement...." Width="271px" BackColor="#99C2FF"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="#FF6600" align="center">
                Your Contact Details</td>
        </tr>
        <tr>
            <td class="style4" bgcolor="#4da6ff" align="center">
                Name</td>
            <td bgcolor="#4da6ff" class="style2">
                <asp:TextBox ID="TextBoxname" runat="server" Height="39px" 
                    ToolTip="Enter Your Name Here..." Width="252px" BackColor="#99C2FF"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBoxname" ErrorMessage="Enter Name  Here"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" bgcolor="#4da6ff" align="center">
                Email ID</td>
            <td bgcolor="#4da6ff" class="style2" align="center">
                <asp:TextBox ID="TextBoxemail" runat="server" Height="38px" 
                    ToolTip="Enter Your Email Address Here..." Width="251px" 
                    BackColor="#99C2FF"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBoxemail" ErrorMessage="Enter Email plz"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxemail" ErrorMessage="Invalid Email Address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" bgcolor="#4da6ff" align="center">
                City</td>
            <td bgcolor="#4da6ff" class="style2">
                <asp:TextBox ID="TextBoxcity" runat="server" Height="39px" 
                    ToolTip="Enter your City Name" Width="250px" BackColor="#99C2FF"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBoxcity" ErrorMessage="Enter Your City Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" bgcolor="#4da6ff" align="center">
                Mobile Number</td>
            <td bgcolor="#4da6ff" class="style2">
                <asp:TextBox ID="TextBoxphno" runat="server" Height="40px" 
                    ToolTip="Enter Your contact Number Here..." Width="248px" 
                    BackColor="#99C2FF"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBoxphno" ErrorMessage="Mobile number is nessesary"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="#4da6ff" align="center">
                <asp:Button ID="Button1" runat="server" Text="Submit" ToolTip="Submit Info" 
                    onclick="Button1_Click" Height="47px" Width="106px" />
                <asp:Button ID="Button2" runat="server" Text="Reset" ToolTip="Reset info" 
                    Height="45px" Width="105px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="#4da6ff" align="center">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
</div>
</asp:Content>

