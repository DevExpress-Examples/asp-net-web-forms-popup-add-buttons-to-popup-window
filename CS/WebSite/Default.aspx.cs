using System;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
    }

    protected void btnOK_Click(object sender, EventArgs e) {
        // Processes data on the server
        ASPxTextBox1.Text = ASPxTextBox2.Text;
    }
}
