import { SAVE_LOCATIONS, FETCH_LOCATIONS_ERROR } from '../actions/fetchData'

export default function locations(state = [], action) {
  switch (action.type) {
    case SAVE_LOCATIONS:
      return action.payload
    case FETCH_LOCATIONS_ERROR:
    return state
    default:
      return state
  }
}