﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="6ProductsGridViewSortPageEditDelete.aspx.cs" Inherits="UpdateDeleteInsert" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
             <asp:GridView ID="GridView1" 
                 runat="server" 
                 DataSourceID="sourceProductDetails"  
                 AllowSorting="True" 
                 AllowPaging="True"
                 AutoGenerateDeleteButton="True"
                 DataKeyNames="ProductID"
                 AutoGenerateEditButton="True">
        </asp:GridView>
           
            <asp:SqlDataSource ID="sourceProductDetails" runat="server"
                ProviderName="System.Data.SqlClient"
                ConnectionString="<%$ ConnectionStrings:Northwind %>"
                SelectCommand="SELECT ProductID, ProductName, UnitPrice FROM Products" 
                DeleteCommand ="DELETE Products where ProductID=@ProductID"
                UpdateCommand ="UPDATE Products SET ProductName=@ProductName, UnitPrice=@UnitPrice WHERE ProductID=@ProductID"
                >
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
