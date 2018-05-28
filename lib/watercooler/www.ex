defmodule Watercooler.WWW do
  use Ace.HTTP.Service, [port: 8080, cleartext: true]
  
  use Raxx.Router, [
    {%{method: :GET, path: []}, Watercooler.WWW.HomePage},
    {_, Watercooler.WWW.NotFoundPage}
  ]
  
  @external_resource "lib/watercooler/public/main.css"
  @external_resource "lib/watercooler/public/main.js"
  use Raxx.Static, "./public"
  use Raxx.Logger, level: :info
end
