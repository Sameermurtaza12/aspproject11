<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ProjectAspDotNet.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
     <title>WELCOME</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" />
     <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- This is my styling classes -->
     <style type="text/css">  
        body                     
        {   
        background-color:deepskyblue;  
        }  
        .main                      
    {  
        position:absolute;  
        top:150px;  
        left:150px;  
        right:150px;  
        height:150px;  
        bottom:150px;  
        background-color:white;  
        } 
        .button  
    {  
        position:absolute;  
        top:150px;  
        left:150px;  
        right:150px;  
        height:150px;  
        bottom:150px;    
        }
      .input  
    {  
        position:absolute;  
        top:250px;  
        left:30px;  
        right:600px;  
        height:500px;  
        bottom:100px;    
        }  
  .main2 {
  border: 5px outset blue;
  background-color: white;    
  text-align: left;
   margin-right:1200px; 
}
         </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <!-- This div is for making a banner to greet the user and welcome him  -->
            <div class="main">
            <h1 id="head" runat="server"> </h1><hr />
            <h1>Greetings from CUREMD, Have a nice day</h1><br />
                
                 <!-- This div is for taking input -->
            <div class="main2"> 
              <asp:Label for="l" Text="Add a new accountant" runat="server" style="font-size:larger"  ></asp:Label><hr />  
                <!-- This div is for taking user name -->
            <asp:Label for="labelId" runat="server" >Accountant Name</asp:Label> 
            <asp:TextBox ID="value1" runat="server" ToolTip="enter a valid name"></asp:TextBox><br />
                <!-- This div is for taking password -->
                <asp:Label for="labelId" runat="server" >Accountant ID</asp:Label> 
            <asp:TextBox ID="value2" runat="server" ToolTip="enter a valid password"></asp:TextBox><br />
                <asp:Button ID="Button1" runat="server" Text="Add"   onClick="AddAccountant"/><br />
                <asp:Button ID="Button6" runat="server" Text="View Accountant"   onClick="ViewAccountant" /><br />

                 <asp:Label for="l" Text="Add a new Customer" runat="server" style="font-size:larger"  ></asp:Label><hr />  
                <!-- This div is for taking user name -->
            <asp:Label for="labelId" runat="server" >Customer Name</asp:Label> 
            <asp:TextBox ID="value3" runat="server" ToolTip="enter a valid name"></asp:TextBox><br />
                <!-- This div is for taking password -->
                <asp:Label for="labelId" runat="server" >Customer ID</asp:Label> 
            <asp:TextBox ID="value4" runat="server" ToolTip="enter a valid ID"></asp:TextBox><br />
                  <!-- This div is for taking contact -->
                <asp:Label for="labelId" runat="server" >Customer Contact</asp:Label> 
            <asp:TextBox ID="value5" runat="server" ToolTip="enter a valid contact"></asp:TextBox><br />

                 <asp:Button ID="Button2" runat="server" Text="Add"   onClick="AddCustomer"/><br />
                <asp:Button ID="Button3" runat="server" Text="View Customers"   onClick="ViewCustomers" /><br />

                 <asp:Label for="l" Text="Add a new Product" runat="server" style="font-size:larger"  ></asp:Label><hr />
                 <!-- This div is for taking product name -->
            <asp:Label for="labelId" runat="server" >Product Name</asp:Label> 
            <asp:TextBox ID="value6" runat="server" ToolTip="enter a valid name"></asp:TextBox><br />
                <!-- This div is for taking price -->
                <asp:Label for="labelId" runat="server" >Product Price</asp:Label> 
            <asp:TextBox ID="value7" runat="server" ToolTip="enter a valid price"></asp:TextBox><br />
                  <!-- This div is for taking product id -->
                <asp:Label for="labelId" runat="server" >Product Id</asp:Label> 
            <asp:TextBox ID="value8" runat="server" ToolTip="enter a valid id"></asp:TextBox><br />

               <asp:Button ID="Button4" runat="server" Text="Add"   onClick="AddProduct"/><br />

               <asp:Button ID="Button5" runat="server" Text="View Product"   onClick="ViewProduct" /><br />
                 </div>      
                </div>
          
        </div>
    </form>
</body>
</html>
