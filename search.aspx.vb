
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tb_findPlayer_TextChanged(sender As Object, e As EventArgs) Handles tb_findPlayer.TextChanged
        Dim searchWord As String        searchWord = "Select * From playerTable where (name Like '%" + tb_findPlayer.Text.ToString() + "%')"        SqlDataSource1.SelectCommand = searchWord
    End Sub

    Protected Sub tb_findAnotherPlayer_TextChanged(sender As Object, e As EventArgs) Handles tb_findAnotherPlayer.TextChanged

        Dim searchWord As String        searchWord = "Select * From playerTable where (name Like '%" + tb_findAnotherPlayer.Text.ToString() + "%')"        SqlDataSource1.SelectCommand = searchWord

    End Sub
End Class
