<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4BasicGridViewSqlDataSource.aspx.cs" Inherits="BasicGridView" %>

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
            DataSourceID="sourceProductList">
        </asp:GridView>
    
        <asp:SqlDataSource ID="sourceProductList" 
            runat="server"
                ConnectionString="<%$ ConnectionStrings:Northwind %>"
                ProviderName="System.Data.SqlClient"
                SelectCommand="SELECT ProductID, ProductName, UnitPrice FROM Products">
            </asp:SqlDataSource>




    </div>
    </form>
</body>
</html>
