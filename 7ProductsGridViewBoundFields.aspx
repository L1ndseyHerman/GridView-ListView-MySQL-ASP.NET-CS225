<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7ProductsGridViewBoundFields.aspx.cs" Inherits="UpdateDeleteInsert" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
             <asp:GridView ID="GridView1" runat="server" 
                 DataSourceID="sourceProductDetails"  AutoGenerateColumns="False">
                 <Columns>
                     <asp:BoundField DataField="ProductID" HeaderText="Product_ID" />
                     <asp:BoundField DataField="UnitPrice" DataFormatString="{0:C}" HeaderText="Price" />
                     <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                 </Columns>
        </asp:GridView>
           
            <asp:SqlDataSource ID="sourceProductDetails" runat="server"
                ProviderName="System.Data.SqlClient"
                ConnectionString="<%$ ConnectionStrings:Northwind %>"
                SelectCommand="SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued FROM Products " >
            
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
