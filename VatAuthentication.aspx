<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="VatAuthentication.aspx.vb" Inherits="TestMaster.VatAuthentication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Vatsim-Discord Authorization</title>
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
                    <div class="col-sm-1 col-md-2 col-lg-2"></div>
                    <div class="col-sm-10 col-md-8 col-lg-8">
                    <div class="card shadow-lg rounded-3">
                        <div class="card-header text-center logo-color text-white">
                            
                        </div>
                        <div class="card-body">

                        </div>
                        <div class="card-footer">

                        </div>
                    </div>
                    </div>
                    <div class="col-sm-1 col-md-2 col-lg-2"></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
