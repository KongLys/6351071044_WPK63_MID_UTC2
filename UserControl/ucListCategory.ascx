﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucListCategory.ascx.cs" Inherits="de1.UserControl.ucListCategory" %>
<asp:DataList ID="DataList1" runat="server" DataKeyField="CatID" DataSourceID="ListCategoryEntityDataSource">
    <ItemTemplate>
        <div>
            <li><asp:HyperLink ID="HyperLink1" runat="server"  Text='<%# Eval("CatName") + "("+ Eval("Courses.Count")+")" %>' NavigateUrl='<%# "~/Category.aspx?id=" + Eval("CatID")%>' ></asp:HyperLink></li>
        </div>                    
    </ItemTemplate>
</asp:DataList>
<asp:EntityDataSource ID="ListCategoryEntityDataSource" runat="server" ConnectionString="name=QLKhoaHocEntities" DefaultContainerName="QLKhoaHocEntities" EnableFlattening="False" EntitySetName="Categories" EntityTypeFilter="Category" Include="Courses">
</asp:EntityDataSource>

