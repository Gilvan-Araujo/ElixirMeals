defmodule ExmealWeb.MealsView do
  use ExmealWeb, :view

  alias Exmeal.Meal

  def render("create.json", %{meal: %Meal{} = meal}) do
    %{
      message: "Meal created!",
      meal: %{
        meal: %Meal{
          id: meal.id,
          description: meal.description,
          date: meal.date,
          calories: meal.calories
        }
      }
    }
  end

  def render("show.json", %{meal: %Meal{} = meal}), do: %{meal: meal}

  def render("meal.json", %{meal: %Meal{} = meal}), do: %{meal: meal}
end
