defmodule EnchanterShop do
  @enchanter_name "Edwin"

  def enchant_for_sale(items) do
    Enum.map(items, &enchant_item/1)
  end

  defp enchant_item(item = %{magic: true}), do: item
  defp enchant_item(item) do
    %{
      title: "#{@enchanter_name}'s #{item.title}",
      price: item.price * 3,
      magic: true
    }
  end

  def items do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true},
    ]
  end

end