import { SAVE_COUNTRIES, FETCH_COUNTRIES_ERROR } from '../actions/fetchData'

export default function countries(state = [], action) {
  switch (action.type) {
    case SAVE_COUNTRIES:
      return action.payload
    case FETCH_COUNTRIES_ERROR:
    return state
    default:
      return state
  }
}

