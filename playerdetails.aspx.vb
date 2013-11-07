
Partial Class playerdetails
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delplayer As String = e.Values("name").ToString()

        lbl_delplayer.Text = "The record <span class=deletedrecipeshight>" & delplayer & "</span> has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=./default.aspx")

    End Sub

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted

        Response.Redirect("./default.aspx")

    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

        Response.Redirect("./default.aspx")

    End Sub
End Class
