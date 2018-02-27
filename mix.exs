#-*-Mode:elixir;coding:utf-8;tab-width:2;c-basic-offset:2;indent-tabs-mode:()-*-
# ex: set ft=elixir fenc=utf-8 sts=2 ts=2 sw=2 et nomod:

defmodule CloudIServiceZeromq do
  use Mix.Project

  def project do
    [app: :cloudi_service_zeromq,
     version: "1.7.3",
     language: :erlang,
     description: description(),
     package: package(),
     deps: deps()]
  end

  defp deps do
    [{:erlzmq,
      [git: "https://github.com/zeromq/erlzmq2.git",
       branch: "master"]},
     {:cloudi_core, "~> 1.7.3"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework ZeroMQ Service"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["MIT"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_zeromq"}]
   end
end
