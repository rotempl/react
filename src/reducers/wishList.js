import { GET_WISH_LIST, FETCH_WISHLIST_ERROR } from '../actions/fetchData'

export default function cities(state = [], action) {
  switch (action.type) {
    case GET_WISH_LIST:
      return action.payload
    case FETCH_WISHLIST_ERROR:
    return state
    default:
      return state
  }
}

