defmodule CloudIServiceZeromq do
  use Mix.Project

  def project do
    [app: :cloudi_service_zeromq,
     version: "1.5.4",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:erlzmq,
      [git: "https://github.com/zeromq/erlzmq2.git",
       branch: "master"]},
     {:cloudi_core, "~> 1.5.4"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework ZeroMQ Service"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_zeromq"}]
   end
end
