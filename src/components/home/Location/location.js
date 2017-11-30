import React, { Component } from 'react';
import {Link} from 'react-router-dom';

import Rating from '../../shared/Rating/rating'
import css from './location.css'



export default class Location extends Component {
    constructor() {
        super();

    }


    render() {
        let { name, price, city, img, id, rating, numbersOfReviews } = this.props;
        let address= `/product/${id}`;

        return (
            <div className={`${css.location} ${css.clearfix}`}>
                <span className={css.locationName}>{name}</span>
                <Link to={address}> <img className={css.locationImag} src={img}/> </Link>       
                <span className={css.locationCity}>{city}</span>
                <span className={css.locationPrice}>{price}</span><br/>                    
                <Rating fullStars={rating} />
                <span className={css.reviews}> {numbersOfReviews} Reviews</span>
            </div>
        )
    }

}

