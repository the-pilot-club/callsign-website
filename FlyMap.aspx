<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FlyMap.aspx.vb" Inherits="TestMaster.FlyMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FlyMap</title>
    <meta charset="utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <style>
        html,body {
            height:100%;
        }
        #myMap {
            height:100%;
            width:100%;
        }
     </style>

   <script type='text/javascript'>
       var map
       var pinfrom
        function GetMap() {
            map = new Microsoft.Maps.Map('#myMap', {
                zoom: 4,
                credentials: 'AtabBMnziG3M5M1ZUZrt-TRqMsYY429IwnOX6pIn6FJe3vCwxOmMwAeVvQD7QORs',
                disableBirdseye: true,
                disableMapTypeSelectorMouseOver: true,
                showDashboard: false,
                center: new Microsoft.Maps.Location(47.6149, -122.1941)
            });

            //Add your post map load code here.
            function fromAirport(Arpt, ArptLat, ArptLong) {
              var arptCord = new Microsoft.Maps.Location(ArptLat, ArptLong);
                pinfrom = new Microsoft.Maps.Pushpin(arptCord, {
                    tittle: Arpt,
                    text: Arpt
                });
               map.entities.push(pinfrom);
             }

           

            //var arptCord = new Microsoft.Maps.Location(37.62,-122.37);
            //var pin = new Microsoft.Maps.Pushpin(arptCord, { tittle: 'KSFO',text: 'KSFO' });
            //map.entities.push(pin);
            //alert(arptCord);

        }
   </script>
   <script type='text/javascript' src='https://www.bing.com/api/maps/mapcontrol?callback=GetMap' async defer ></script>    <%-- defer--%>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container-fluid ">
                    <div class="row">
                        <div class="col-12">
                          <div style="width:100%; margin-top:10px; height:97vh; float:left">
                            <div id="myMap" style="position:relative;width:100%;height:100%;"></div>
                          </div>
                        </div>
                    </div>
               </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:Button ID="Button1" runat="server" Text="Button" />


    </form>
</body>
</html>
