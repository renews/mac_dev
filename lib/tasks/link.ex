defmodule Macdev.Symlink do
  import Loki.Shell
  import Loki.Cmd
  import Loki.Directory
  import Loki.File
  import Loki.FileManipulation
  @moduledoc """
  Create all the symlinks that we need.
  """
  def symlink_it(source, link) do
    create_link(source, link)
  end

end
