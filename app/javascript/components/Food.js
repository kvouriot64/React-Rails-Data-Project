import React from "react"
import PropTypes from "prop-types"
import {Link} from 'react-router-dom'

function Food(props) {
  return (
    <tr>
      <td><Link to={`/Foods/${props.food.id}`}>Food: {props.food.dish}</Link></td>
    </tr>
  );
}

Food.propTypes = {
  food: PropTypes.object
};

export default Food