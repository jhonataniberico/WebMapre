<%@ page title="Bienvenido" language="VB" masterpagefile="~/Site.Master" autoeventwireup="true" inherits="_Default, App_Web_aofv2bk4" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">



<div id="myCarousel" class="carousel slide">
	 

	 <ol class="carousel-indicators">
<li class="" data-target="#myCarousel" data-slide-to="0"></li>
<li data-target="#myCarousel" data-slide-to="1" class=""></li>
<li data-target="#myCarousel" data-slide-to="2" class="active"></li>
</ol>
	
      <div class="carousel-inner">
        <div class="item">
                    <img src="Images/bg_Logo.png" />          
        </div>
        <div class="item">
        <img src="Images/bg_Logo.png" />   
                   
        </div>
       <div class="item active">
           <img src="Images/bg_Logo.png" />   
                   
        </div>
		<div class="item">
            <a href="#">content</a>
           <img src="Images/bg_Logo.png" />   
                     
        </div>
      </div>
    
    </div>
</asp:Content>
