
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_Date.Text = DateTime.Now.ToLongDateString

        lbl_Copy.Text = DateTime.Now.Year
    End Sub
End Class

