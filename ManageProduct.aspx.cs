using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace de1
{
    public partial class ManageProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAddNew_Click(object sender, EventArgs e)
        {
            string fileName = "";
            if (FileUploadPicture.HasFile)
            {
                fileName = FileUploadPicture.FileName;
                FileUploadPicture.SaveAs(Server.MapPath("~/images/Courses/" + fileName));
            }
            QLKhoaHocEntities context = new QLKhoaHocEntities();
            Course p = new Course();
            p.Name = TextBoxName.Text;
            p.Duration = int.Parse(TextBoxDuration.Text);
            p.CatID = int.Parse(DropDownListCategory.SelectedValue);
            p.Description = TextBoxDescription.Text;
            p.ImageFilePath = fileName;

            context.Courses.Add(p);
            context.SaveChanges();
            BindGridView(); //Cap nhat du lieu lai trong grid view
            Page.Master.DataBind();
        }
    }
}