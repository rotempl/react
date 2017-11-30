import { SAVE_CITIES, FETCH_CITY_ERROR } from '../actions/fetchData'

export default function cities(state = [], action) {
  switch (action.type) {
    case SAVE_CITIES:
      return action.payload
    case FETCH_CITY_ERROR:
    return state
    default:
      return state
  }
}

