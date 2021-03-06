<%@ Page Language="C#" AutoEventWireup="true" CodeFile="1CRUD_ProductDetailView.aspx.cs" Inherits="UpdateDeleteInsert" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="lstProduct"
                runat="server"
                AutoPostBack="True"
                Width="280px"
                DataSourceID="sourceProductList"
                DataTextField="ProductName"
                DataValueField="ProductID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sourceProductList" runat="server"
                ConnectionString="<%$ ConnectionStrings:Northwind %>"
                ProviderName="System.Data.SqlClient"
                SelectCommand="SELECT ProductID, ProductName FROM Products">
            </asp:SqlDataSource>

            <br />
            <br />

            <asp:DetailsView ID="detailsProduct"
                runat="server" Height="50px"
                Width="125px"
                DataSourceID="sourceProductDetails" 
                AutoGenerateInsertButton="True"
                AutoGenerateEditButton="True" 
                AutoGenerateDeleteButton="True" 
                DataKeyNames="ProductID"
                OnItemDeleted="productDeleted"
                OnItemInserted="productInserted"
                >
            </asp:DetailsView>
            <asp:SqlDataSource ID="sourceProductDetails" runat="server"
                ProviderName="System.Data.SqlClient"
                ConnectionString="<%$ ConnectionStrings:Northwind %>"
                SelectCommand="SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued FROM Products WHERE ProductID=@ProductID"
                UpdateCommand="UPDATE Products SET ProductName=@ProductName, UnitPrice=CONVERT(money, @UnitPrice), UnitsInStock=@UnitsInStock, UnitsOnOrder=@UnitsOnOrder, ReorderLevel=@ReorderLevel, Discontinued=@Discontinued WHERE ProductID=@ProductID"
                DeleteCommand="DELETE Products WHERE ProductID=@ProductID"
                InsertCommand="INSERT INTO Products (ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES (@ProductName, CONVERT(money, @UnitPrice), @UnitsInStock, @UnitsOnOrder, @ReorderLevel, @Discontinued)">
            <SelectParameters>
                    <asp:ControlParameter 
                        ControlID="lstProduct" 
                        Name="ProductID"
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
