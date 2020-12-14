<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="Stylesheet" type="text/css" href="style/default2css.css" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="contact" ></asp:RequiredFieldValidator>
<form onsubmit="return validateForm()" name="booking-form" id="booking-form" action="http://tiagoholidays.com/mail.php" method="post">

        <table cellspacing="0" cellpadding="0" rules="all" style="border: 1px solid #e0e0e0; background-color:#f2f2f2;">
          <tbody style="display: table-row-group; vertical-align: middle; border-color: inherit;">
    <tr style="display: table-row;vertical-align: inherit;border-color: inherit;">
    <td class="title" colspan="2" style="display: table-cell; vertical-align: inherit;">Tour Details</td></tr>
          <tr>
           <td class="left-block">Date of Travel</td>
           <td class="right-block" style="background-color: #F2f2f2">
               <select style="width:26%" id="date" name="date">
               <option value="date" id="d">Date</option>
                                   <option value="01">01</option>
                                   <option value="02">02</option>
                                   <option value="03">03</option>
                                   <option value="04">04</option>
                                   <option value="05">05</option>
                                   <option value="06">06</option>
                                   <option value="07">07</option>
                                   <option value="08">08</option>
                                   <option value="09">09</option>
                                  <script type="text/javascript">
                                      for (var jj = 10; jj < 32; jj++) document.write("<option value=" + jj + ">" + jj + "</option>");
                                    </script><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
                                  </select>
                                  <select style="width:27%" id="month" name="month">
                                   <option value="month" id="m">Month</option>
                                   <option value="01">January</option>
                                  <option value="02">Feburary</option>
                                  <option value="03">March</option>
                                  <option value="04">April</option>
                                  <option value="05">May</option>
                                  <option value="06">Jun</option>
                                  <option value="07">July</option>
                                  <option value="08">August</option>
                                  <option value="09">September</option>
                                  <option value="10">October</option>
                                  <option value="11">November</option>
                                  <option value="12">December</option>
                                  </select>
                                  <select style="width:27%" id="year" name="year">
                                   <option value="year" id="y">Year</option>
                                   <script type="text/javascript">
                                       for (var kk = cyear; kk <= cyear + 1; kk++)
                                           document.write("<option value=" + kk + ">" + kk + "</option>");
                                    </script><option value="2018">2018</option><option value="2019">2019</option>
                                  </select>

          </td></tr>
          <tr>
           <td class="left-block">Travel Destination</td>
           <td class="right-block"><input type="text" class="txtbox" placeholder="Enter Destination Name" name="destination" id="destination"></td>
          </tr>
          <tr>
           <td class="left-block">Duration of Travel</td>
           <td class="right-block">
           <select class="select" id="duration" name="duration">+
            <option value="duration" selected="selected">Select Travel Duration</option>
           <option>02 Days / 01 Night</option>
            <option>03 Days / 02 Nights</option>
 <option>04 Days / 03 Nights</option>
<option>05 Days / 04 Nights</option>
<option>06 Days / 05 Nights</option>
<option>07 Days / 06 Nights</option>
<option>08 Days / 07 Nights</option>
<option>09 Days / 08 Nights</option>
<option>10 Days / 09 Nights</option>
<option>Above 10 Days </option>
</select></td>
</tr>
<tr>
<td class="left-block">No. of Traveller </td>
<td class="right-block">
<select class="select" id="adults" name="adults">
<option value="adults" selected="selected">No. of Adults</option>
<option>01</option>
<option>02</option>
<option>03</option>
<option>04</option>
<option>05</option>
<option>06</option>
 </select>
 <select class="select" id="children" name="children">
 <option value="children" selected="selected">No. of Kids</option>
<option>00</option> 
 <option>01</option>
<option>02</option>
<option>03</option>
 <option>04</option>
<option>05</option>
<option>06</option>
<option>07</option>
 </select> 
 </td>
 </tr><tr><td class="left-block">Accommodation Type</td>
<td class="right-block">
<select class="select" id="hoteltype" name="hoteltype">
<option selected="selected" value="hotel">Types of Hotel</option>
<option value="Luxury Hotels">Luxury Hotel</option>
 <option value="5* Premium Hotel">5* Premium Hotel</option>
<option value="5* Heritage Hotel">5* Heritage Hotel</option>
<option value="4* Premium Hotel">4* Premium Hotel</option>
<option value="4*Heritage Hotel">4*Heritage Hotel</option>
<option value="3* Hotel">3* Hotel</option>
<option value="Standard/Budget">Standard/Budget</option>
 </select>
</td>
 </tr><tr><td class="left-block">Other Services</td>
<td class="right-block">
<input type="checkbox" value="Transportation" id="req" name="req[]">Transportation
<input type="checkbox" value="Air Booking" id="req" name="req[]">Air Ticket Booking&nbsp;
<input type="checkbox" value="Guide" id="req" name="req[]">Guide
</td></tr><tr> <td class="left-block">Your Requirements</td>
<td class="right-block">
<textarea class="txtarea" id="requirement" name="requirement"></textarea>
</td></tr><tr><td class="title" colspan="2">Your Contact Details</td></tr>
<tr><td class="left-block">Name</td>
<td class="right-block"><input type="text" class="txtbox" placeholder="Enter Your Name" name="name" id="name"></td>
</tr> <tr> <td class="left-block">Email Id</td>
<td class="right-block"><input type="text" class="txtbox" placeholder="Enter Your Email Id" name="email" id="email"></td>
</tr><tr>
<td class="left-block">City</td>
<td class="right-block"><input type="text" class="txtbox" placeholder="Enter Your Present City" name="city" id="city"></td>
</tr><tr> <td class="left-block">Mobile Number</td>
<td class="right-block"><input type="text" class="txtbox" placeholder="Enter Your Contact Number" name="contact" id="contact"></td>
</tr> <tr>
 <td style="padding:5px 10px;" colspan="2">
 <center><input type="submit" class="btn" value="Submit" name="Submit">
 <input type="reset" class="btn" value="Reset" name="Reset"></center>
</td> </tr>
 </tbody></table>

</form>


</asp:Content>

