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
                                    zoom: 8,
                                    center: { lat: 38.61, lng: -121.26 },
                                    mapTypeControl: true,
                                    mapTypeControlOptions: {
                                        style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
                                        position: google.maps.ControlPosition.BOTTOM_CENTER
                                    }
                                });

                                var lati = document.getElementById('<%= mylat.ClientID %>').value;
                                var longi = document.getElementById('<%= mylong.ClientID %>').value;
                                var lbl ='KSFO'
                                //document.getElementById('<%= mypointdesc.ClientID %>').innerText;

                                var pininfo = new google.maps.InfoWindow({content:lbl});
                                var mymarker = new google.maps.Marker({
                                    map: mapa,
                                    position: new google.maps.LatLng(lati, longi)
                                });
                           }



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
                                <asp:HiddenField ID="mylat" runat="server" />
                                <asp:HiddenField ID="mylong" runat="server" />
                                <asp:HiddenField ID="mylbl" runat="server" />
                                <asp:Label ID="mylatitud" Visible="true" runat="server" Text=""></asp:Label>
                                <asp:Label ID="mylongitud" Visible="true" runat="server" Text=""></asp:Label>
                                <asp:Label ID="mypointdesc" Visible="true" runat="server" Text=""></asp:Label>


                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <div id="mapcanvas" style="width:100%; margin-top:10px; height:97vh; float:left"></div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
