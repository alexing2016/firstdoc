<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Liste_carte.aspx.vb" Inherits="production_Liste_carte" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 90%;
        width:90%;
      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

        <script>
            function initMap() {
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 13,
                    center: { lat: -33.890542, lng: 151.274856 }
                });

                var beaches = [
                  ['Bondi Beach', -33.890542, 151.274856, 4],
                  ['Coogee Beach', -33.923036, 151.259052, 5],
                  ['Cronulla Beach', -34.028249, 151.157507, 8],
                  ['Manly Beach', -33.80010128657071, 151.28747820854187, 7],
                  ['Maroubra Beach', -33.950198, 151.259302, 6]
                  //['Luchard', 18.641400, 72.872200, 1]

                ];


                for (var i = 0; i < beaches.length; i++) {

                    var beach = beaches[i];
                    var marker = new google.maps.Marker({
                        position: { lat: beach[1], lng: beach[2] },
                        map: map,
                        draggable: true,
                        animation: google.maps.Animation.DROP,
                        title: beach[0],
                        zIndex: beach[3]
                    });
                    marker.addListener('click', toggleBounce);


                }

            }

            function toggleBounce() {
                if (marker.getAnimation() !== null) {
                    marker.setAnimation(null);
                } else {
                    marker.setAnimation(google.maps.Animation.BOUNCE);
                }
            }

    </script>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA_k8UqgRYWCYKsfdszCWSPZyjeocWHQh8&signed_in=true&callback=initMap"></script>


    <script type="text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Voulez-vous vraiment annuler ?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
      </script>
        <div class="right_col" role="main">
          <div class="">
          <div class="crumbs">
					<ol class="breadcrumb">
  <li><i class="fa fa-home"></i>
   <a href="../Demosss/Default4.aspx">Home</a></li>
  <li class="active">Liste des monuments</li>
</ol>
				</div> 
             
              <div class="page-title">
              <div class="title_left">
                 <div class="col-md-12" style="font-size: 20px;">
        Liste  des monuments
			      </div>
              </div>

            </div>
            <div class="clearfix"></div>
	



              <div class="container">
      
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#menu1">Liste</a></li>
            <li><a data-toggle="tab" href="#home">Agenda</a></li>
           
        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade">
                <h3>HOME</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            </div>
            <div id="menu1" class="tab-pane fade in active">
              <div id="map"></div>
        

            </div>
           
        </div>
    </div>





           
    
          </div>
        </div>
</asp:Content>

