<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="ProjectAspDotNet.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PRODUCT VIEW</title>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" />
     <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css"/>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
     <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="productTable">
                <thead>
                    <tr>
                        <th> Product Name </th>
                        <th>Product Price</th>
                        <th>Product Id</th>
                    </tr>
                </thead>
            </table>
        </div>
    </form>
    <script type="text/javascript"> 
        $(document).ready(function () {
            // call for product on page load
            $.ajax({

                url: "WebForm4.aspx/GetProduct",
                method: "post",
                dataType: "json",
                contentType: "application/json",
                async: true,
                success: function (data) {
                    data = JSON.parse(data.d)
                    console.log(data)
                    productTable(data)
                }
            });
            function productTable(data) {

                $("#customerTable").dataTable({
                    data: data,
                    "paging": true,
                    "lengthChange": false,
                    "searching": true,
                    "ordering": true,
                    "info": true,
                    "autoWidth": true,
                    "bDestroy": true,
                    columns: [
                        { "data": "product_name" },
                        { "data": "price" },
                        { "data": "product_Id" },


                    ]
                });
            }
    </script>
</body>
</html>
