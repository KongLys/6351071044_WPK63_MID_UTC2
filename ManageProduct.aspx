<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="de1.ManageProduct" %>

<%@ Register Src="~/UserControl/ucMangeProduct.ascx" TagPrefix="uc1" TagName="ucMangeProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucMangeProduct runat="server" id="ucMangeProduct" />
</asp:Content>
