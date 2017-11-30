import { combineReducers } from 'redux';
import locations from './locations';
import cities from './cities';
import countries from './countries';
import displayedList from './displayedList';
import wishList from './wishList';
import reservations from './reservations'
import reviews from './reviews'
import logIn from './logIn'

const rootReducer = combineReducers({
  locations,
  cities,
  countries,
  displayedList,
  wishList,
  reservations,
  reviews,
  logIn
  //place other reducers here...
  
})

export default rootReducer

