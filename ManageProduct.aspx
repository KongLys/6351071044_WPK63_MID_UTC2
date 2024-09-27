<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="de1.ManageProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table style="width:100%;">
    <tr>
        <td>Course&nbsp; name:</td>
        <td><asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Duration</td>
        <td>
            <asp:TextBox ID="TextBoxPrice" runat="server"></asp:TextBox></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Category</td>
        <td><asp:DropDownList ID="DropDownListCategory" runat="server"></asp:DropDownList></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
    <td>Description</td>
    <td>
        <asp:TextBox ID="TextBoxDescription" TextMode="MultiLine" runat="server"></asp:TextBox></td>
       
    <td>&nbsp;</td>
</tr>
    <tr>
     <td>Picture</td>
     <td>
         <asp:FileUpload ID="FileUploadPicture" runat="server" /></td>
     <td>&nbsp;</td>
 </tr>

    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="ButtonAddNew" runat="server" Text="Add new"/></td>
    </tr>
</table>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="MangeCourseEntityDataSource">
        <Columns>
<asp:TemplateField HeaderText="No.">
        <ItemTemplate>
            <%# Container.DataItemIndex+1 %>
        </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Images">
        <ItemTemplate>
            <asp:Image ID="imgCourseImage" Width="88" ImageUrl='<%# "~/images/Courses/" + Eval("ImageFilePath") %>' runat="server" />
        </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Name">
        <ItemTemplate>
            <asp:HyperLink ID="hplCourseName" runat="server" NavigateUrl='<%# "~/Details.aspx?id=" + Eval("ID") %>' Text='<%# Eval("Name") %>'></asp:HyperLink>
        </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField>
        <ItemTemplate>
            <asp:Button ID="btnDelete" OnClientClick="return confirm('Delete?');" runat="server" Text="Delete" CommandName="DeleteProduct" CommandArgument='<%#Eval("ID") %>' />
        </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField>
        <ItemTemplate>
            <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="EditProduct" CommandArgument='<%# Eval("ID") %>'/>
        </ItemTemplate>
    </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="MangeCourseEntityDataSource" runat="server" ConnectionString="name=QLKhoaHocEntities" DefaultContainerName="QLKhoaHocEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Courses">
    </asp:EntityDataSource>
</asp:Content>
