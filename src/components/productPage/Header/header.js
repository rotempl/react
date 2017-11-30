import React, { Component } from 'react';
import Rating from '../../shared/Rating/rating'
import css from './header.css'

export default class Header extends Component {
    constructor() {
        super();

    }


    render() {
        let {location} = this.props;
        let {city, country}= this.props;

        return (
            <div>
                <div className={css.hotelName}>{location.locationName}</div>
                <br />
                <span>{location.cityName}, </span>
                <span className={css.countyName}>{location.countryName}</span>
                <Rating fullStars={location.reviewsAverage}/>
                <span> {location.numbersOfReviews}  reviews </span>
            </div>
        )
    }

}

