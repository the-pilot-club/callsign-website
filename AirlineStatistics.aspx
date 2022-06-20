<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AirlineStatistics.aspx.vb" Inherits="TestMaster.AirlineStatistics" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Pilot Club VATSIM Statistics</title>
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
<div class="row">
                                <div class="col-12">
                                    <asp:GridView ID="GridView1" runat="server" 
                                        CssClass="table table-hover mytable 
                                        table-responsive small table-bordered" PageSize="10" AllowPaging="True" 
                                        PagerSettings-Mode="NumericFirstLast" PagerSettings-Position="Top" PagerStyle-HorizontalAlign="Right">
                                    </asp:GridView>
                                </div>
                            </div>
    </form>
</body>
</html>
