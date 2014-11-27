using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KryptonAccessController.AccessDataBase;

namespace AccessControllerBS.Main
{
    public partial class AddController : System.Web.UI.Page
    {
        KryptonAccessController.AccessDataBase.BLL.ControllerInfo bllControllerInfo = new KryptonAccessController.AccessDataBase.BLL.ControllerInfo();
        KryptonAccessController.AccessDataBase.Model.ControllerInfo modelControllerInfo = new KryptonAccessController.AccessDataBase.Model.ControllerInfo();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int packageControllerInfo(ref KryptonAccessController.AccessDataBase.Model.ControllerInfo modelControllerInfo)
        {
            modelControllerInfo = new KryptonAccessController.AccessDataBase.Model.ControllerInfo();
             
            int controllerID;
            bool ret = int.TryParse(TextBoxControllerID.Text.Trim(), out controllerID);
            if (ret == false)
            {
                Response.Write("<script>alert('控制器编号不能为空，且必须为数字!')</script>");
                return -1;
            }
                
            modelControllerInfo.ControllerID = controllerID;

            return 0;
        }
            
        protected void ButtonSaveControllerInfo_Click(object sender, EventArgs e)
        {
            int ret = packageControllerInfo(ref  modelControllerInfo);

            if (ret != 0)
                return;
        }

    }
}