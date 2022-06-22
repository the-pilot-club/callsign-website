<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FMap.aspx.vb" Inherits="TestMaster.FMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <style>
        html, body {
            height: 100%;
        }

        #mapcanvas {
            height: 100%;
        }
    </style>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
                        <script>
                            function initMap() {
                                var mapa;
                                mapa = new google.maps.Map(document.getElementById('mapcanvas'), {
                                    zoom: 12,
                                    center: { lat: 38.61, lng: -121.26 },
                                    mapTypeControl: true,
                                    mapTypeControlOptions: {
                                        style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
                                        position: google.maps.ControlPosition.BOTTOM_CENTER
                                    }
                                });


                                var fromlati = document.getElementById('<%= frommylat.ClientID %>').value;
                                var fromlongi = document.getElementById('<%= frommylong.ClientID %>').value;
                                var fromlbl = document.getElementById('<%= frommylbl.ClientID %>').value;
                                var tolati = document.getElementById('<%= tomylat.ClientID %>').value;
                                var tolongi = document.getElementById('<%= tomylong.ClientID %>').value;
                                var tolbl = document.getElementById('<%= tolbl.ClientID %>').value;
                                var latiplane = document.getElementById('<%= plane_latitud.ClientID %>').value;
                                var longiplane = document.getElementById('<%= plane_longitud.ClientID %>').value;
                                var lblplane = document.getElementById('<%= plane_info.ClientID %>').value;
                                var hdg = document.getElementById('<%= plane_hdg.ClientID %>').value;
                              

                                var myimagetakeoff = {
                                    url: '../images/takeoff1.png',
                                    scaledSize: new google.maps.Size(33,46),
                                };

                                var myimagelanding = {
                                    url: '../images/landing_1.png',
                                    scaledSize: new google.maps.Size(33, 46),
                                };


                                var myplane = {
                                    url: '../images/plane_'+hdg+'.png',
                                    scaledSize: new google.maps.Size(24, 24),
                                };

                                var pininfo = new google.maps.InfoWindow({content:frommylbl});
                                var mymarkertakeoff = new google.maps.Marker({
                                    map: mapa,
                                    position: new google.maps.LatLng(fromlati, fromlongi),
                                    icon: myimagetakeoff,
                                    title: frommylbl,
                                    InfoWindow: pininfo
                                });

                                var pininfolanding = new google.maps.InfoWindow({ content: tolbl });
                                var mymarkerlanding = new google.maps.Marker({
                                    map: mapa,
                                    position: new google.maps.LatLng(tolati, tolongi),
                                    icon: myimagelanding,
                                    title: tolbl,
                                    InfoWindow: pininfolanding
                                });

                                var planeinfo = new google.maps.InfoWindow({ content: lblplane });
                                var myplaneposition = new google.maps.Marker({
                                    map: mapa,
                                    position: new google.maps.LatLng(latiplane, longiplane),
                                    icon:  myplane,
                                    title: lblplane,
                                    optimize: false,
                                    InfoWindow: planeinfo
                                   
                                });


                            }


                            //google.maps.event.addListener(map, 'zoom_changed', function () {
                            //    var pixelSizeAtZoom0 = 8; //the size of the icon at zoom level 0
                            //    var maxPixelSize = 350; //restricts the maximum size of the icon, otherwise the browser will choke at higher zoom levels trying to scale an image to millions of pixels

                            //    var zoom = map.getZoom();
                            //    var relativePixelSize = Math.round(pixelSizeAtZoom0 * Math.pow(2, zoom)); // use 2 to the power of current zoom to calculate relative pixel size.  Base of exponent is 2 because relative size should double every time you zoom in

                            //    if (relativePixelSize > maxPixelSize) //restrict the maximum size of the icon
                            //        relativePixelSize = maxPixelSize;

                            //    //change the size of the icon
                            //    marker.setIcon(
                            //        new google.maps.MarkerImage(
                            //            marker.getIcon().url, //marker's same icon graphic
                            //            null,//size
                            //            null,//origin
                            //            null, //anchor
                            //            new google.maps.Size(relativePixelSize, relativePixelSize) //changes the scale
                            //        )
                            //    );
                            //});


                        </script>    
    <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD08tFJ4QyO13pD0clmtVT2yytET3md4bw&callback=initMap" async defer>
    </script>

</head>
<body >
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div style="width: 100%; height: 97vh; float: left">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:HiddenField ID="frommylat" runat="server" />
                                <asp:HiddenField ID="frommylong" runat="server" />
                                <asp:HiddenField ID="frommylbl" runat="server" />
                                <asp:HiddenField ID="tomylat" runat="server" />
                                <asp:HiddenField ID="tomylong" runat="server" />
                                <asp:HiddenField ID="tolbl" runat="server" />
                                <asp:HiddenField ID="plane_latitud" runat="server" />
                                <asp:HiddenField ID="plane_longitud" runat="server" />
                                <asp:HiddenField ID="plane_info" runat="server" />
                                <asp:HiddenField ID="plane_hdg" runat="server" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <canvas id="carCanvas" width="50" height="50" style="display:none"></canvas>
                        <div id="mapcanvas" style="width:100%; margin-top:10px; height:97vh; float:left"></div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
