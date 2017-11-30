import React, { Component } from 'react';

import css from './Reservation.css'

export default class Reservation extends Component {
    constructor() {
        super();
        this.details = [];
        this.price = null;
    }

    render() {
        let details = this.props.details;
        this.price = details.nights * details.price;
        return (
            <div className={css.reservation}>
                <div className={css.imageReservation}>
                    <img src={details.img} className={css.smallImg} />
                </div>
                <div className={css.details}>
                    <div className={css.locationName}>{details.name}</div>
                    <div className={css.dataContainer}>
                        <div className="Check">
                            <span> CHECK-­IN: {details.from} </span>&nbsp;
                            <span> CHECK­-OUT: {details.to} </span>
                        </div>
                        <div className="nights">
                            <span> Number Of Guests: {details.guests} </span>&nbsp;
                            <span> NIGHTS: {details.nights}</span>
                        </div>
                    </div>
                    <span className={css.priceContainer}>
                    <span className={css.boldWord}>Total Price:  &nbsp;
                        <span className={css.addDollar}>{this.price} </span>
                        </span>
                    </span>
                </div>

            </div>
        )
    }

}