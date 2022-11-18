defmodule ExmealWeb.RouterTest do
  # test the /dashboard route from router
  use ExmealWeb.ConnCase

  describe "GET /" do
    test "renders the index.html template", %{conn: conn} do
      conn = get(conn, "/dashboard")

      assert html_response(conn, 302) =~
               "<html><body>You are being <a href=\"/dashboard/home\">redirected</a>.</body></html>"
    end
  end
end
