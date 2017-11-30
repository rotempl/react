import React, { Component } from 'react';
import { connect } from 'react-redux'
import {feachReservations} from '../../actions/fetchData'

import css from './Reservations.css'
import Body from '../../components/reservations/body/body'


class Reservations extends Component {
    constructor() {
        super();
    }
    componentWillMount() {
        this.props.feachReservations();
    }

    render() {

        let {reservations, locations} = this.props;
        
        return (
            <div className={css.marginLeft}>
                <h1 className={css.marginTop}>Your Bookings:</h1>
                <Body reservations={reservations} locations={locations} />
            </div>
        )
    }

}

function mapStateToProps(state) {
	const { locations, reservations} = state
	return {
		locations, reservations
	}
}
 
function mapDispatchToProps(dispatch) {
	return {
        feachReservations: () => dispatch(feachReservations()),
	}
}

export default connect(mapStateToProps, mapDispatchToProps)(Reservations)

