<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CallSignRequest.aspx.vb" Inherits="TestMaster.CallSignRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Call Sign Request</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="Content/jquery.validate.tooltips.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js"></script>
    <script src="Scripts/jquery.validate.tooltips.min.js"></script>

</head>
<script>
    function onlyNumberKey(evt) {
        // Only ASCII character in that range allowed
        var ASCIICode = (evt.which) ? evt.which : evt.keyCode
        if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57))
            return false;
        return true;
    }

</script>
    <style>
        .logo-color {
            background-color: #37B6FF;
        }
    </style>

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container-fluid w-75">
                    <div id="modalalerts" class="modal fade" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
                        <div class="modal-dialog modal-dialog-centered" >
                            <div class="modal-content">
                                <div class="modal-body text-center">
                                    <asp:Label ID="ptextmodal" runat="server" Text=""></asp:Label>
                                    <hr />
                                    <asp:Button ID="btnclosedialog" runat="server" CssClass="btn" Text="Ok" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card shadow mt-3">
                        <div class="card-header logo-color text-white pb-0">
                            <div class="row">
                                <div class="col-6">
                                     <h4 class="card-title"><strong><img src="../images/8080tpc.png" class="img-fluid " width="30" /></strong>&nbsp;&nbsp;Callsign Request</h4>
                                </div>
<%--                                <div class="col-6 text-end">
                                      <asp:LoginStatus ID="LoginStatus1" runat="server" CssClass="btn btn-link  fw-bold   text-white"  LogoutPageUrl="login.aspx" />
                                </div>--%>
                                </div>
                      </div>
                        <div class="card-body">
                            <div id="division"  class="row pb-0 pt-0 mt-0 mb-0 text-end " runat="server">
                                     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="PilotScores.aspx" CssClass="font-logo-color fw-bold"><i class="fa fa-table-list"></i> Pilot/ATC Information Grid</asp:HyperLink>
                            </div>
                            <hr class="mt-2 mb-2" />
                            <div class="row">
                                <div class="col-md-5 col-lg-5 col-sm-12">
                                    <div class="input-group input-group-sm mb-2 ">
                                        <span class="input-group-text logo-color bg-opacity-75 text-white"><i class="fa fa-user-lock"></i>&nbsp;VATSIM ID: &nbsp;</span>
                                        <asp:TextBox ID="txtvatsimid" onkeypress="return onlyNumberKey(event);" placeholder="Ex: 12345678" CssClass="form-control text-center"  MaxLength="8" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-5 col-lg-5 col-sm-12">
                                    <div class="input-group input-group-sm mb-2 ">
                                        <span class="input-group-text logo-color bg-opacity-75 text-white"><i class="fa fa-plane-departure"></i>&nbsp;Callsign: &nbsp;<strong>TPC</strong></span>
                                        <asp:TextBox ID="txtcallsign" Width="60px" onkeypress="return onlyNumberKey(event);" placeholder="Ex: 1234" CssClass="form-control text-center" MaxLength="4" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-7 col-sm-12 col-lg-7">
                                    <div class="input-group input-group-sm mb-2">
                                        <span class="input-group-text logo-color bg-opacity-75 text-white"><i class="fa fa-user-pen"></i>&nbsp;Full Name:&nbsp;</span>
                                        <asp:TextBox ID="txtfirstname"
                                            MaxLength="30"
                                            CssClass="form-control text-uppercase" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-5 col-sm-12 col-lg-5">
                                    <div class="input-group input-group-sm mb-2">
                                        <span class="input-group-text logo-color bg-opacity-75 text-white"><i class="fa-brands fa-discord"></i>&nbsp;Discord ID:&nbsp;</span>
                                        <asp:TextBox ID="txtlastname"
                                            MaxLength="25"
                                            CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group input-group-sm">
                                        <span class="input-group-text logo-color bg-opacity-75 text-white"><i class="fa fa-envelope"></i>&nbsp;Email Address:&nbsp;</span>
                                        <asp:TextBox ID="txtemail" MaxLength="50" CssClass="form-control" placeholder="Ex: johndoe@yourdomainemail.com" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-12 text-center">
                                    <asp:LinkButton ID="lnkcheked" runat="server" CssClass=" btn fa fa-toggle-off"></asp:LinkButton>Turn On/Off to auto generate your callsign with The Pilot Club.
                                </div>
                            </div>
                            <hr class="mb-1" />
                            <div class="row">
                                <div class="col-12 text-center">
                                    <asp:Label ID="lblmessage" runat="server" Text="" CssClass="text-primary small" Visible="False"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer ">
                            <div class="row">
                                <div class="col-12">
                                    <asp:Button ID="btnrequest" runat="server" Text="Request Callsign" CssClass="btn btn-primary float-end" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
            </form>
<%--    <script type="text/javascript">
        function pageLoad() {
            fn_init();
        }
    </script>--%>
</body>
</html>
