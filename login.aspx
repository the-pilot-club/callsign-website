<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="TestMaster.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Login Info</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style>
        .logo-color {
            background-color: #37B6FF;
        }
        .font-logo-color {
            color: #37B6FF;
        }
        .myback {
             background-image: url("../images/bckground.jpg" );
             background-position:center;
             background-repeat:no-repeat;
             background-size:auto;
             opacity: .80;
        }
    </style>
</head>
<body class="myback">
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="vh-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-sm-1 col-md-3 col-lg-4"></div>
                    <div class="col-sm-10 col-md-6 col-lg-4">
                    <div class="card shadow-lg rounded-3">
                        <div class="card-header text-center logo-color text-white">
                            <h4 class="card-title"><i class="fa fa-lock-open"></i>&nbsp; Login Information</h4>
                        </div>
                        <div class="card-body">
                            <div class="row mb-2">
                                <div class="col-12">
                                        Username:
                                        <asp:TextBox ID="txtuser" runat="server" MaxLength="15" CssClass="form-control text-center"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                        Password: (case sensitive)
                                        <asp:TextBox ID="txtpassword" runat="server"  TextMode="Password" MaxLength="15" CssClass="form-control text-center"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="card-footer">
                            <!-- <asp:Button ID="btncreate" runat="server" CssClass="btn btn-success" Text="Insert User" /> -->
                            <asp:Button ID="btnlogin" runat="server" CssClass="btn logo-color text-white float-end" Text="Login ..." />
                        </div>
                    </div>
                    </div>
                    <div class="col-sm-1 col-md-3 col-lg-4"></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
