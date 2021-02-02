defmodule Handler do

  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    Appsignal.instrument "AppsignalTest.Plug.Home", fn ->
      Process.sleep(1000)
      conn
      |> put_resp_content_type("text/plain")
      |> send_resp(200, "Hello there two")
    end
  end
end
