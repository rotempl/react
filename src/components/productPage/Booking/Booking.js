import React, { Component } from 'react';
import DatePicker from 'react-datepicker';
import moment from 'moment';
import css from './Booking.css'
import 'react-datepicker/dist/react-datepicker.css';
import 'react-datepicker/dist/react-datepicker-cssmodules.css'; 

export default class Booking extends Component {
    constructor() {
        super();
        this.state = { startDate: moment(), endDate: moment() };
        this.handleChangeIn = this.handleChangeIn.bind(this);
        this.handleChangeOut = this.handleChangeOut.bind(this);
    }
    handleChangeIn(date) {
        this.setState({ startDate: date });
    }
    handleChangeOut(date) {
        this.setState({ endDate: date });
    }

    render() {

        let guests = []
        for (let i = 1; i <= this.props.maxGuests; ++i) {
            guests.push(<option key={i} value={i}>{i} Guests</option>)
        }      
        return (
            <div className={css.booking}>
                <div className={css.bookingPrice}>
                    <span>$ {this.props.price} </span>
                    <span className={css.pricePerNight}> per night</span>
                </div>
                <div className={css.padding}>
                    <div className={css.datePicker}>
                        <div className="checkIn">
                            <label  className={css.bookingLable} htmlFor="checkIn">Check In</label>
                            <DatePicker className={css.inputDate}
                                highlightDates={moment().add(7, "days")}
                                dateFormat="DD/MM/YYYY"
                                selected={this.state.startDate}
                                onChange={this.handleChangeIn} />
                        </div>
                        <div className="checkOut">
                            <label className={css.bookingLable} htmlFor="chechOut">Check Out</label>
                            <DatePicker className={css.inputDate}
                                highlightDates={moment().add(7, "days")}
                                dateFormat="DD/MM/YYYY"
                                selected={this.state.endDate}
                                onChange={this.handleChangeOut} />
                        </div>
                        <br />
                    </div>
                    <div className={css.guests}>
                        <label className={`${css.paddingFromLabel} ${css.bookingLable}`} htmlFor="guestsnum">Guests</label>
                        <select className={css.pointer} id="guestsnum">
                            {guests}
                        </select>
                    </div>
                    <button className={css.searchButton}>Book</button>
                </div>
            </div>
        )
    }

}