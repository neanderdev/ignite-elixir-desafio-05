defmodule Exmeal.Meals.Index do
  alias Exmeal.{Meal, Repo}

  def call(), do: Repo.all(Meal)
end
