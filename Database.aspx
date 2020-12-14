<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Database.aspx.cs" Inherits="Database" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div >
<h2 style="background-color: #999999; padding-left: 50px; font-family: Algerian;">Enquiry Data</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id"
        DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." AllowPaging="True" 
        AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="traveldate" HeaderText="traveldate" SortExpression="traveldate" />
            <asp:BoundField DataField="destination" HeaderText="destination" SortExpression="destination" />
            <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
            <asp:BoundField DataField="nooftravelers" HeaderText="nooftravelers" SortExpression="nooftravelers" />
            <asp:BoundField DataField="accomdation" HeaderText="accomdation" SortExpression="accomdation" />
            <asp:BoundField DataField="requirement" HeaderText="requirement" SortExpression="requirement" />
            <asp:BoundField DataField="otherservice" HeaderText="otherservice" SortExpression="otherservice" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>"
        DeleteCommand="DELETE FROM [enquiry] WHERE [id] = @id" InsertCommand="INSERT INTO [enquiry] ([traveldate], [destination], [duration], [nooftravelers], [accomdation], [requirement], [otherservice], [name], [city], [mobile], [email]) VALUES (@traveldate, @destination, @duration, @nooftravelers, @accomdation, @requirement, @otherservice, @name, @city, @mobile, @email)"
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [traveldate], [destination], [duration], [nooftravelers], [accomdation], [requirement], [otherservice], [name], [city], [mobile], [email] FROM [enquiry]"
        UpdateCommand="UPDATE [enquiry] SET [traveldate] = @traveldate, [destination] = @destination, [duration] = @duration, [nooftravelers] = @nooftravelers, [accomdation] = @accomdation, [requirement] = @requirement, [otherservice] = @otherservice, [name] = @name, [city] = @city, [mobile] = @mobile, [email] = @email WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="traveldate" Type="String" />
            <asp:Parameter Name="destination" Type="String" />
            <asp:Parameter Name="duration" Type="String" />
            <asp:Parameter Name="nooftravelers" Type="String" />
            <asp:Parameter Name="accomdation" Type="String" />
            <asp:Parameter Name="requirement" Type="String" />
            <asp:Parameter Name="otherservice" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="traveldate" Type="String" />
            <asp:Parameter Name="destination" Type="String" />
            <asp:Parameter Name="duration" Type="String" />
            <asp:Parameter Name="nooftravelers" Type="String" />
            <asp:Parameter Name="accomdation" Type="String" />
            <asp:Parameter Name="requirement" Type="String" />
            <asp:Parameter Name="otherservice" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
<div>
       <h2 style="background-color: #999999; padding-left: 50px; font-family: Algerian;">Pay Online Data</h2>
      

</div>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id"
        DataSourceID="SqlDataSource2" 
        EmptyDataText="There are no data records to display." AllowPaging="True" 
        AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
            <asp:BoundField DataField="number" HeaderText="number" SortExpression="number" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="tourname" HeaderText="tourname" SortExpression="tourname" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>"
        DeleteCommand="DELETE FROM [payonline] WHERE [id] = @id" InsertCommand="INSERT INTO [payonline] ([fname], [lname], [number], [email], [tourname]) VALUES (@fname, @lname, @number, @email, @tourname)"
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [fname], [lname], [number], [email], [tourname] FROM [payonline]"
        UpdateCommand="UPDATE [payonline] SET [fname] = @fname, [lname] = @lname, [number] = @number, [email] = @email, [tourname] = @tourname WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="fname" Type="String" />
            <asp:Parameter Name="lname" Type="String" />
            <asp:Parameter Name="number" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="tourname" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="fname" Type="String" />
            <asp:Parameter Name="lname" Type="String" />
            <asp:Parameter Name="number" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="tourname" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

