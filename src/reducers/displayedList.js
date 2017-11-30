import { ADD_ITEMS_TO_LIST} from '../actions/actions'

export default function dispalydList(state = [], action) {
  switch (action.type) {
    case ADD_ITEMS_TO_LIST:
        let displayList= [];
        action.payload.map(item => displayList.push(item));
      return displayList;
    default:
      return state
  }
}
