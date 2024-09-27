﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDetailCourse.ascx.cs" Inherits="de1.UserControl.ucDetailCourse" %>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="DetailCourseEntityDataSource">
    <EditItemTemplate>
        ID:
        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
        <br />
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        ImageFilePath:
        <asp:TextBox ID="ImageFilePathTextBox" runat="server" Text='<%# Bind("ImageFilePath") %>' />
        <br />
        Description:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        Duration:
        <asp:TextBox ID="DurationTextBox" runat="server" Text='<%# Bind("Duration") %>' />
        <br />
        CatID:
        <asp:TextBox ID="CatIDTextBox" runat="server" Text='<%# Bind("CatID") %>' />
        <br />
        NumViews:
        <asp:TextBox ID="NumViewsTextBox" runat="server" Text='<%# Bind("NumViews") %>' />
        <br />
        Category:
        <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        ID:
        <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
        <br />
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        ImageFilePath:
        <asp:TextBox ID="ImageFilePathTextBox" runat="server" Text='<%# Bind("ImageFilePath") %>' />
        <br />
        Description:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        Duration:
        <asp:TextBox ID="DurationTextBox" runat="server" Text='<%# Bind("Duration") %>' />
        <br />
        CatID:
        <asp:TextBox ID="CatIDTextBox" runat="server" Text='<%# Bind("CatID") %>' />
        <br />
        NumViews:
        <asp:TextBox ID="NumViewsTextBox" runat="server" Text='<%# Bind("NumViews") %>' />
        <br />
        Category:
        <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        <div class="product_detail_box">
            <div class ="product_image"> <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageFilePath", "~/images/courses/{0}") %>' />
        </div>
            <div>
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="product_name" Text='<%# Eval("Name") %>'></asp:Label><br />
                <asp:Label runat="server" ID="Label5">------------</asp:Label><br/>
                Category: 
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Category.CatName") %>'></asp:Label>&nbsp;
        <asp:Label ID="Label2" runat="server" CssClass="product_price" Text='<%# Eval("Duration") %>'></asp:Label><br />
        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>'></asp:Label><br />
                Number of course registrations: <asp:Label ID="Label6" runat="server" Text='<%# Eval("NumViews") %>'></asp:Label><br />
 </div></div>


    </ItemTemplate>
</asp:FormView>
<asp:EntityDataSource ID="DetailCourseEntityDataSource" runat="server" ConnectionString="name=QLKhoaHocEntities" DefaultContainerName="QLKhoaHocEntities" EnableFlattening="False" EntitySetName="Courses" EntityTypeFilter="Course" Include="Category" Where="it.ID = @ID">
    <WhereParameters>
        <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
    </WhereParameters>
</asp:EntityDataSource>

