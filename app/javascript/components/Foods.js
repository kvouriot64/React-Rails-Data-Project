import React, {useEffect, useState} from "react"
import Food from './Food'

function Foods() {
  useEffect(() => {
    fetchFoods()
  }, [])

  const [foods, setFoods] = useState([])

  const fetchFoods = async () => {
    const res = await fetch('/api/foods/index')
    const foods = await res.json()
    setFoods(foods)
  }

  const data = foods.map(food => <Food food={food} />)

  return (
    <table className="table table-hover">
      <thead>
        <tr>
          <th>Dish</th>
        </tr>
      </thead>
      <tbody>
        {data}
      </tbody>
    </table>
  );

}

export default Foods