<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="JsonParse.aspx.vb" Inherits="TestMaster.JsonParse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Pilot Club User VATSIM Statistics</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>

    <style> .mytable > tbody > tr > td, .mytable > tbody > tr > th, .mytable > tfoot > tr > td, .mytable > tfoot > tr > th, .mytable > thead > tr > td, .mytable > thead > tr > th {
            padding: 2px;
        }
    </style>
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
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row mt-3">
                <div class="col-12">
                    <div class="card shadow">
                        <div class="card-header">
                            <h5 class="card-title">VATSIM Information  </h5>
                        </div>
                        <div class="card-body">
                            <p class="fw-bold card-subtitle">General Information</p>
                             <hr class="pt-1 mt-1" />
                            <div class="row">
                                <div class="col-6">
                                    Pilot Rating:&nbsp;
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                                    Registered On:&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
                                    Region:&nbsp;
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br />
                                    Division:&nbsp;
                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                </div>
                                <div class="col-6">
                                    <div class="row text-center text-primary fw-bold" style="color:#23527c;">
                                        <div style="color:#337ab7;">Statistics (Hours/Min)</div>
                                        <hr />
                                    </div>
                                    <div class="row ">
                                        <div class="col-12">
                                            As pilot:&nbsp;<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                        </div>
                                    </div>
                                     <div class="row">
                                        <div class="col-12">
                                            As ATC:&nbsp;<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr class="mb-1" />
                            <div class="row">
                                <div class="col-12 text-center text-primary fw-bold  mb-0">
                                    <div style="color:#337ab7;">Hours/Min as Air Traffic Controller by Categories</div>
                                    <hr class="mt-1 mb-0 pb-0" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-1 text-center">S1</div>
                                <div class="col-1 text-center">S2</div>
                                <div class="col-1 text-center">S3</div>
                                <div class="col-1 text-center">C1</div>
                                <div class="col-1 text-center">C2</div>
                                <div class="col-1 text-center">C3</div>
                                <div class="col-1 text-center">I1</div>
                                <div class="col-1 text-center">I2</div>
                                <div class="col-1 text-center">I3</div>
                                <div class="col-1 text-center">Sup.</div>
                                <div class="col-2 text-center">Adm.</div>
                            </div>
                            <div class="row">
                                <div class="col-1 text-center"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></div>
                                <div class="col-1 text-center"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></div>
                                <div class="col-1 text-center"><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></div>
                                <div class="col-1 text-center"><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></div>
                                <div class="col-1 text-center"><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></div>
                                <div class="col-1 text-center"><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></div>
                                <div class="col-1 text-center"><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></div>
                                <div class="col-1 text-center"><asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></div>
                                <div class="col-1 text-center"><asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></div>
                                <div class="col-1 text-center"><asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></div>
                                <div class="col-2 text-center"><asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></div>
                            </div>
                            <hr class="mb-1" />
                            <div class="row text-center">
                                <div class="col-12 text-center text-primary fw-bold mt-0 mb-2">
                                    <div style="color:#337ab7;">Your Fligh Plan(s) Information</div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <asp:GridView ID="GridView1" runat="server" 
                                        CssClass="table table-hover mytable 
                                        table-responsive small table-bordered" PageSize="10" AllowPaging="True" 
                                        PagerSettings-Mode="NumericFirstLast" PagerSettings-Position="Top" PagerStyle-HorizontalAlign="Right">
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </form>
</body>
</html>
