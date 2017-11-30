export const ADD_ITEMS_TO_LIST = 'ADD_ITEMS_TO_LIST';
export const LOG_IN_USER = 'LOG_IN_USER';
export const LOG_OUT_USER = 'LOG_OUT_USER'

export const addItemsToList= (Locationsarr)=> ({type: ADD_ITEMS_TO_LIST, payload: Locationsarr});

export const logInUser= (userDetails)=> ({type: LOG_IN_USER, payload: userDetails});
export const logOutUser= ()=> ({type: LOG_OUT_USER});