import React, { Component } from 'react';
import Reservastion from '../reservation/Reservation'
import css from './body.css'

export default class Reservations extends Component {
    constructor() {
        super();
        this.reservations= [];
    }
        componentWillReceiveProps(){
            this.reservations= this.props.reservations;
        }

    render() {
        let {locations, reservations} = this.props;
       
        for (let reservastion of reservations) {
            locations.map((item) => {
                if (item.id == reservastion.id) {
                    reservastion.name = item.name;
                    reservastion.img= item.imageUrl;
                    reservastion.price= item.price;
                }
            })
        }


        return (
            <div className={css.allBookings}>
                {reservations.map((item) => <Reservastion details={item} key={item.id}/>)}

            </div>
        )
    }

}