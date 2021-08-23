﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="2CRUD_AllProductDetailView.aspx.cs" Inherits="UpdateDeleteInsert" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:DetailsView ID="detailsProduct"
                runat="server" Height="50px"
                Width="125px"
                DataSourceID="sourceProductDetails" 
                AutoGenerateInsertButton="True"
                AutoGenerateEditButton="True" 
                AutoGenerateDeleteButton="True" 
                DataKeyNames="ProductID"
                AllowPaging="True">
                <PagerSettings PageButtonCount="25" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="sourceProductDetails" runat="server"
                ProviderName="System.Data.SqlClient"
                ConnectionString="<%$ ConnectionStrings:Northwind %>"
                SelectCommand="SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued FROM Products"
                UpdateCommand="UPDATE Products SET ProductName=@ProductName, UnitPrice=CONVERT(money, @UnitPrice), UnitsInStock=@UnitsInStock, UnitsOnOrder=@UnitsOnOrder, ReorderLevel=@ReorderLevel, Discontinued=@Discontinued WHERE ProductID=@ProductID"
                DeleteCommand="DELETE Products WHERE ProductID=@ProductID"
                InsertCommand="INSERT INTO Products (ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES (@ProductName, CONVERT(money, @UnitPrice), @UnitsInStock, @UnitsOnOrder, @ReorderLevel, @Discontinued)">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
