import React, {useEffect, useState} from "react"
import {useParams} from 'react-router-dom'

function FoodDetail() {
  useEffect(() => {
    fetchFood()
  }, [])

  const { id } = useParams()

  const [food, setFood] = useState({})

  const fetchFood = async () => {
    const res = await fetch(`/api/foods/show/${id}`)
    const food = await res.json()
    setFood(food)
  }
  return (
    <h1>Food: {food.dish}</h1>
  );
}

export default FoodDetail
