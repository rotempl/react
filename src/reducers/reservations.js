import { GET_RESERVATIONS_LIST, FETCH_RESERVATIONS_ERROR } from '../actions/fetchData'

export default function cities(state = [], action) {
  switch (action.type) {
    case GET_RESERVATIONS_LIST:
      return action.payload
    case FETCH_RESERVATIONS_ERROR:
    return state
    default:
      return state
  }
}

