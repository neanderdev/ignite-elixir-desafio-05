defmodule Exmeal.Meals.IndexTest do
  use Exmeal.DataCase

  describe "Index Meal" do
    test "when call, return all meals" do
      params = %{
        calories: 20,
        date: ~D[2001-05-02],
        description: "Banana"
      }

      params2 = %{
        calories: 30,
        date: ~D[2001-05-01],
        description: "abacate"
      }

      Exmeal.create_meal(params)
      Exmeal.create_meal(params2)

      response = Exmeal.all()

      assert [
               %Exmeal.Meal{
                 calories: 20,
                 date: ~D[2001-05-02],
                 description: "Banana",
                 id: _id
               },
               %Exmeal.Meal{
                 calories: 30,
                 date: ~D[2001-05-01],
                 description: "abacate"
               }
             ] = response
    end
  end
end
