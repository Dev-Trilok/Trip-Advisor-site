<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 1100px;
            color:red;
            
        }
        .style2
        {
            color:#fff;
            width: 1100px;
        }
        .book1:hover span {
  padding-right: 25px;
}
.book1:hover span:after {
  opacity: 1;
  right: 0;
}
       
        .book1
        {
            border-radius: 7px;
  background-color:black;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 10px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
            }
            .book1 span
            {cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
                }
                .book1 span:after
                {content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
                    }
                
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
    <div class="w3-content w3-section" style="max-width:1100px; max-height:400px; background-position:center; padding-top:50px; ">
  
  <img class="mySlides w3-animate-fading" src="images/corbett.jpg" style="width:100%">
 <img class="mySlides w3-animate-fading" src="new img/10.jpg" style="width:100%">
 <img class="mySlides w3-animate-fading" src="new img/8.jpg" style="width:100%">
 <img class="mySlides w3-animate-fading" src="new img/6.jpg" style="width:100%">
 <img class="mySlides w3-animate-fading" src="new img/1.jpg" style="width:100%">
  <img class="mySlides w3-animate-fading" src="images/hawa-mahal.jpg" style="width:100%">
  <img class="mySlides w3-animate-fading" src="images/kerala.jpg" style="width:100%">
  <img class="mySlides w3-animate-fading" src="images/rafting.jpg" style="width:100%">
  <img class="mySlides w3-animate-fading"  src="images/skiing.jpg" style="width:100%">
  <img class="mySlides w3-animate-fading" src="images/thailand.jpg" style="width:100%">
   <img class="mySlides w3-animate-fading"  src="images/goa.jpg" style="width:100%">
   <img class="mySlides w3-animate-fading" src="images/andaman.jpg" style="width:100%">
    <img class="mySlides w3-animate-fading" src="images/dubai.jpg" style="width:100%">
</div>

<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) { myIndex = 1 }
        x[myIndex - 1].style.display = "block";
        setTimeout(carousel, 5000);
    }
</script>

      </div>
    <div  style=" text-align:center; background-color:#99ebff ">
    <h2 class="style2">Amazing Holiday Experience With Shivaay Holidays</h2>
<h3 class="style1">Customized Packages Best Prices Personalized Services Most Trusted Happy Memories</h3></div>


    <div class="why">
    <div style=" text-align:center;">
        <asp:HyperLink ID="HyperLink1" runat="server" class="book1" 
            NavigateUrl="~/Domestic tour.aspx" ><span>Book Your tour</span></asp:HyperLink>
        <asp:HyperLink class="book1" ID="HyperLink2" runat="server" 
            NavigateUrl="~/Default3.aspx" ><span>Enquiry About Tour</span></asp:HyperLink>
    </div>
  <div style=" border-bottom-color:Black; border-width:1px;">  <h3>Why Book Holidays with Shivaay HoliDays?</h3>
    <p style="padding: 10px; font-family: Rockwell; line-height: 25px">ShivaayHoliDays.com, India's leading online travel company, has a profound understanding of Indian consumers travel needs and preferences. It offers a wide range of holiday packages in India and across the world, catering to various segments of travellers. While the dynamic or customized tour and travel packages give consumers an option to create and design their own holiday, the fixed departure holiday packages have a pre-designed itinerary; thus ensuring there is something to meet the holiday needs of every kind of traveller.</p>
    </div>
    <div>
    
       <h3> What does Shivaay HoliDays offer?</h3>
   
       <p style="padding: 10px; font-family: Rockwell; line-height: 25px"> Shivaay Holidays offers a hassle-free holiday wherein all your travel needs are 
        taken care of.Be it your accommodation in comfortable hotels, convenient 
        transfers, varied sightseeing options and an array of activities to choose from, 
        delectable meals and niche experiences - the holiday packages are designed such 
        to offer you an unparalleled experience. Be it popular destinations such as 
        Andaman, Kerala, Rajasthan and Kashmir, or more offbeat ones like North East, 
        Ladakh and Uttarakhand, there are tailor-made packages for destinations from all 
        over India. From distinctive honeymoon packages to exclusive tour packages for 
        women, from itineraries designed for solo travellers, families with kids and for 
        those who are young at heart -Shivay Holidays has an answer to all our holiday 
        needs.</p>
        </div>
    
    <h3>How to book Holidays with Shivaay HoliDays?</h3>
    <p style="padding: 10px; font-family: Rockwell; line-height: 25px">The user-friendly Shivaay HoliDays website make it easy for enthusiastic travellers to plan and book a holiday simply at the click of a button. Just use the filters and select the city you want to visit along with your travel dates, travel duration, specific preferences, if any, on hotels, kind of holiday, etc. and MakeMyTrip offers you an extensive list of holiday packages to choose from. Pick any package that meets your needs. Else, you could also choose hotels of your choice, add sightseeing and activities to your list and have a package ready that best suits your requirement. You can choose to book your tour packages offline by dropping a query or chatting with our travel experts for immediate support. With MakeMyTrip, planning and buying your ideal holiday has never been easier.</p>
    </div>
    </div>
</asp:Content>

