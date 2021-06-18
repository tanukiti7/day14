defmodule Customer do

  defstruct [:keys, :vals]

def load do
  Path.expand("~/elixir_kensyu/Elixir/customer/CUSTOMER.csv")
    |> File.stream!
    |> CSV.decode
    |> Enum.to_list
    |> Enum.map(fn row -> tuple_to_list(row) end)
  end

  defp tuple_to_list(tuple_data) do
    case tuple_data do
      {:ok, list_data} -> list_data
      {:error, _list_data } -> []
    end
  end

  def csv_struct(head, tail) do
    %Customer{keys: head, vals: tail }
  end
  def keys_vals(struct) do
    Enum.map(struct.vals, fn val -> to_map(struct.keys, val) end )
  end
  def to_map(key, val) do
    List.zip([ key, val ])
    |> Enum.into(%{})
  end
  def main do
    data_list = load()
    keys_vals(csv_struct(hd(data_list), tl(data_list)))
  end

end
