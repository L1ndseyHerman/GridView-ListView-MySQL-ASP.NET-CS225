<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8GridViewSelectCommandField - Copy.aspx.cs" Inherits="GridViewSelect" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Categories:<br />
        <asp:SqlDataSource ID="sourceCategories" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Northwind %>"
            SelectCommand="SELECT * FROM Categories"></asp:SqlDataSource>
        <asp:GridView ID="gridCategories" 
            runat="server" DataSourceID="sourceCategories" 
            BackColor="White" BorderColor="#CC9966" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataKeyNames="CategoryID"
            >
            
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <Columns>
                <asp:CommandField />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <br />
        Products in this category (currently lists all products, need to restrict based on categoryID):<br />

      
        <asp:SqlDataSource ID="sourceProducts" runat="server" ConnectionString="<%$ ConnectionStrings:Northwind %>"
            SelectCommand="SELECT ProductID, ProductName, UnitPrice FROM Products WHERE CategoryID = @CategoryID">
           <SelectParameters>
               <asp:ControlParameter Name="CategoryID" ControlID="gridCategories" PropertyName="SelectedDataKey.Value"
                   />
           </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="gridProducts" runat="server" 
            DataSourceID="sourceProducts" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="None" 
            BorderWidth="1px" CellPadding="4"
         >
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
    
          
    </div>
    </form>
</body>
</html>
