defmodule Mix.Tasks.Macdev.Setup do
  use Mix.Task
  import Loki.File

  @shortdoc "Setup macdev."

  def run(_1) do
    [".aliases", ".gemrc", ".gitignore_global", ".functions"]
    |> Enum.map(fn x -> download_and_send_to_dropbox(x) end)
    |> Enum.map(fn x -> create_symlinks(x) end)

    {:ok, "Done"}
  end

  def download_and_send_to_dropbox(file) do
    case Download.from(append_origin_path(file), path: append_target_path(file)) do
      {:ok, file} -> IO.puts("Sucesso #{file}")
      {:error, :eexist} -> IO.puts("Arquivo já existe. #{file}")
      {:error, :download_failure} -> IO.puts("Falha no download.")
      true -> {:error, "Pau"}
    end

    file
  end

  def create_symlinks(file) do
    create_link(append_target_path(file), "/Users/coder/#{file}")
  end

  def append_origin_path(file) do
    "https://raw.githubusercontent.com/renews/dot-files/master/#{file}"
  end

  def append_target_path(file) do
    "/Users/coder/Dropbox/dotfiles/#{file}"
  end
end
