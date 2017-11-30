import { GET_REVIEWS, FETCH_REVIEWS_ERROR } from '../actions/fetchData'

export default function reviews(state = [], action) {
  switch (action.type) {
    case GET_REVIEWS:
      return action.payload
    case FETCH_REVIEWS_ERROR:
    return state
    default:
      return state
  }
}
