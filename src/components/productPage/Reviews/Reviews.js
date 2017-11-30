import React, { Component } from 'react';
import Rating from '../../shared/Rating/rating'

import css from './Reviews.css'

export default class Reviews extends Component {
    constructor() {
        super();
    }


    render() {
        let {amountOfReviews, fullStars, reviews}= this.props;
        let allReviews = [];
            

        return (
            <div id="Reviews">
                <div className={css.border}>
                    <span className={css.bold}>
                        {amountOfReviews} Reviews
                    </span>
                    <span className={css.stars}>
                        <Rating fullStars={fullStars} />
                    </span>
                </div>
                <div>
                    {reviews.map((item) => 
                        <div className={css.oneReview} key={item.idReview}>
                            <div className={css.authorName}>{item.author}</div>
                            <span className={css.caption}>{item.caption}</span>
                            <Rating fullStars={fullStars}/>
                            <div className={css.desctip}>{item.description}</div>
                        </div>
                    )}
                </div>
            </div>
        )
    }

}