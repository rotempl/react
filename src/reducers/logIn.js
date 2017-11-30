import { LOG_IN_USER, LOG_OUT_USER } from '../actions/actions'

export default function logIn(state = { confirmDetails: false }, action) {
    switch (action.type) {
        case LOG_IN_USER:
            return action.payload
        case LOG_OUT_USER:
        debugger
            return { confirmDetails: false }
        default:
            return state
    }
}