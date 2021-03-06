<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Pilots.aspx.vb" Inherits="TestMaster.Pilots" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pilots Statistics</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>--%>

    <style> .mytable > tbody > tr > td, .mytable > tbody > tr > th, .mytable > tfoot > tr > td, .mytable > tfoot > tr > th, .mytable > thead > tr > td, .mytable > thead > tr > th {
            padding: 2px;
        }
    </style>
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
        /*gridview*/
.table table  tbody  tr  td a ,
.table table  tbody  tr  td  span {
position: relative;
float: left;
padding: 6px 12px;
margin-left: -1px;
line-height: 1.42857143;
color: #337ab7;
text-decoration: none;
background-color: #fff;
border: 1px solid #ddd;
}

.table table > tbody > tr > td > span {
z-index: 3;
color: #fff;
cursor: default;
background-color: #337ab7;
border-color: #337ab7;
}

.table table > tbody > tr > td:first-child > a,
.table table > tbody > tr > td:first-child > span {
margin-left: 0;
border-top-left-radius: 4px;
border-bottom-left-radius: 4px;
}

.table table > tbody > tr > td:last-child > a,
.table table > tbody > tr > td:last-child > span {
border-top-right-radius: 4px;
border-bottom-right-radius: 4px;
}

.table table > tbody > tr > td > a:hover,
.table   table > tbody > tr > td > span:hover,
.table table > tbody > tr > td > a:focus,
.table table > tbody > tr > td > span:focus {
z-index: 2;
color: #23527c;
background-color: #eee;
border-color: #ddd;
}
/*end gridview */
    </style>
    <style>
        .logo-color {
            background-color: #37B6FF;
        }
        .font-logo-color {
            color: #37B6FF;
        }
        a:visited {
            color: #37B6FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="modal fade" tabindex="-1" id="errores">
                        <div class=" modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <p runat="server" id="errtext" class="text-primary text-center"></p>
                                    <asp:Button ID="btncloseerror" runat="server" CssClass="btn btn-danger " Text="Close" />
                                </div>
                                </div>
                            </div>
                    </div>
                <div class="container-fluid">
                    <div class="modal fade" tabindex="-1" id="editingproperties">
                        <div class=" modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header logo-color text-white">
                                    <h4 class="card-title">Pilot Information&nbsp; <asp:Label ID="lblid" CssClass=" text-uppercase" runat="server" Text=""></asp:Label></h4>
                                </div>
                                <div class="modal-body small">
                                    <div class="row mb-1">
                                        <div class="col-3">
                                            VATSIM ID:
                                        </div>
                                        <div class="col-auto">
                                            <asp:TextBox ID="txtvatid" MaxLength="8" onkeypress="return onlyNumberKey(event);" CssClass="form-control form-control-sm text-center" runat="server"></asp:TextBox>
                                        </div>
                                        
                                    </div>
                                    <div class="row mb-1">
                                        <div class="col-3">
                                            Callsign(TPC):
                                        </div>
                                        <div class="col-auto">
                                            <asp:TextBox ID="txtcallsign" MaxLength="4" onkeypress="return onlyNumberKey(event);" CssClass="form-control form-control-sm text-center" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row mb-1">
                                        <div class="col-3">
                                            Discord ID:
                                        </div>
                                        <div class="col-auto">
                                            <asp:TextBox ID="txtdiscord" MaxLength="25" CssClass="form-control form-control-sm text-center" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                     <div class="row mb-1">
                                        <div class="col-3">
                                            Full Name:
                                        </div>
                                        <div class="col-9">
                                            <asp:TextBox ID="txtname" MaxLength="25" CssClass="form-control form-control-sm text-start text-uppercase" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                     <div class="row">
                                        <div class="col-3">
                                            Email:
                                        </div>
                                        <div class="col-9">
                                            <asp:TextBox ID="txtemail" MaxLength="50" CssClass="form-control form-control-sm text-start" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-auto">
                                            <asp:Label ID="lblerrormessage" runat="server" cssclass="text-danger "></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer text-center">
                                    <asp:Button ID="btnupdatedetails" runat="server" CssClass="btn logo-color text-white" Text="Update Info" />
                                    <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn btn-danger" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card  shadow mt-3">
                        <div class="card-header logo-color text-white">
                            <h4 class="card-title"><img src="../images/8080tpc.png" class="img-fluid " width="30px" />&nbsp;&nbsp;Pilot/ATC Rank of Members by Hours on VATSIM Network</h4>
                        </div>
                            <div class="card-body">
                                <div class="row mt-2">
                                    <div class="col-sm-12 col-md-12 col-lg-12">
                                        <div style="overflow-x:auto">
                                <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover table-responsive-md table-responsive mytable small"
                                     AllowPaging="false" PagerSettings-Mode="NumericFirstLast" PageSize="15"
                                    PagerSettings-Position="TopAndBottom" PagerStyle-HorizontalAlign="Right"
                                    HeaderStyle-CssClass="bg-light bg-opacity-75 text-white text"  AutoGenerateColumns="false" AllowSorting="true"  >
                                    <Columns>
                                        <asp:BoundField DataField="CALLSIGN" SortExpression="CALLSIGN" HeaderText="CALLSIGN" HeaderStyle-CssClass="text-center font-logo-color " />
                                        <asp:BoundField DataField="FULL NAME" SortExpression="[FULL NAME]" HeaderText="FULL NAME" HeaderStyle-CssClass="text-center" itemstyle-cssclass=" text-uppercase" />
                                        <asp:BoundField DataField="VATSIM ID" SortExpression="[VATSIM ID]" HeaderText="VATSIM ID" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" />
                                        <asp:BoundField DataField="PILOT HRS" SortExpression="[PILOT HRS]" HeaderText="PILOT HRS" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-end" DataFormatString="{0:N2}" />
                                        <asp:BoundField DataField="ATC HRS" SortExpression="[ATC HRS]" HeaderText="ATC HRS" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-end" DataFormatString="{0:N2}" />
                                        <asp:BoundField DataField="TTL HRS" SortExpression="[TTL HRS]" HeaderText="TTL HRS" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-end" DataFormatString="{0:N2}" />
                                        <asp:BoundField DataField="DISCORD" SortExpression="[DISCORD]" HeaderText="DISCORD ID" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" Visible="false"  />
                                    </Columns>
                                </asp:GridView>
</div>
                                    </div>
                                </div>
                                   <hr class="mt-1 mb-1" />                             
                                    <div class="row text-center text-xl-center ">
                                    <div class="col-12">
                                        <asp:Label ID="lblttlmembers" runat="server" Text="" CssClass="font-logo-color card-title fw-bold" Font-Size="Larger"></asp:Label>
                                    </div>
                                </div>
                               
                            </div>
                    
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                    <img src="images/white.gif" />
            </ProgressTemplate>
        </asp:UpdateProgress>
    </form>
</body>
</html>
