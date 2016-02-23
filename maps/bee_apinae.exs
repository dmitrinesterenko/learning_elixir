defmodule BeeApinae do
  @moduledoc """
    This is a bee with a name, some wings and maybe she's a queen
    Usage:
      %BeeStruct{name: "BeezelBub", wings: false, queen: false}
  """
  defstruct name: "", wings: true, queen: false

  def flying?(bee = %BeeApinae{}) do
    bee.wings == true && bee.queen == false
  end


end

