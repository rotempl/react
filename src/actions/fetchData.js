export const SAVE_LOCATIONS = 'SAVE_LOCATIONS';
export const FETCH_USER_ERROR = 'FETCH_LOCATIONS_ERROR';
export const SAVE_CITIES = 'SAVE_CITIES';
export const FETCH_CITY_ERROR = 'FETCH_CITY_ERROR';
export const SAVE_COUNTRIES = 'SAVE_COUNTRIES';
export const FETCH_COUNTRIES_ERROR = 'FETCH_COUNTRIES_ERROR';
export const FETCH_LOCATIONS_ERROR = 'FETCH_LOCATIONS_ERROR';
export const GET_WISH_LIST = 'GET_WISH_LIST';
export const FETCH_WISHLIST_ERROR = 'FETCH_WISHLIST_ERROR';
export const GET_RESERVATIONS_LIST = 'GET_RESERVATIONS_LIST';
export const FETCH_RESERVATIONS_ERROR = 'FETCH_RESERVATIONS_ERROR';
export const GET_REVIEWS = 'GET_REVIEWS';
export const FETCH_REVIEWS_ERROR = 'FETCH_REVIEWS_ERROR';


export const fetchLocationsData = () => (
    dispatch => {
        return fetch('/api/data/locations')
            .then((res) => res.json())
            .then(res => dispatch({
                type: SAVE_LOCATIONS,
                payload: res
            }))
            .catch(err => dispatch({
                type: FETCH_LOCATIONS_ERROR,
                payload: err
            }))
    }
)

export const fetchCitiesData = () => (
    dispatch => {
        return fetch('/api/data/Cities')
            .then((data) => data.json())
            .then(data => dispatch({
                type: SAVE_CITIES,
                payload: data
            }))
            .catch(err => dispatch({
                type: FETCH_CITY_ERROR,
                payload: err
            }))
    }
)

export const fetchCountriesData = () => (
    dispatch => {
        return fetch('/api/data/country')
            .then((data) => data.json())
            .then(data => dispatch({
                type: SAVE_COUNTRIES,
                payload: data
            }))
            .catch(err => dispatch({
                type: FETCH_COUNTRIES_ERROR,
                payload: err
            }))
    }
)
export const fetchReviews = (tableName) => (
    dispatch => {
        return fetch('/api/data/reviews/'+tableName)
            .then((data) => data.json())
            .then(data => dispatch({
                type: GET_REVIEWS,
                payload: data
            }))
            .catch(err => dispatch({
                type: FETCH_REVIEWS_ERROR,
                payload: err
            }))
    }
)
export const fetchWishList = () => (
    dispatch => {
        return fetch('/data/wishList.json')
            .then((data) => data.json())
            .then(data => dispatch({
                type: GET_WISH_LIST,
                payload: data
            }))
            .catch(err => dispatch({
                type: FETCH_WISHLIST_ERROR,
                payload: err
            }))
    }
)

export const fetchReservations = () => (
    dispatch => {
        return fetch('/data/reservations.json')
            .then((data) => data.json())
            .then(data => dispatch({
                type: GET_RESERVATIONS_LIST,
                payload: data
            }))
            .catch(err => dispatch({
                type: FETCH_RESERVATIONS_ERROR,
                payload: err
            }))
    }
)

