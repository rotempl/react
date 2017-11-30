import React, { Component } from 'react';
import classnames from 'classnames';

import css from './rating.css';


export default function Rating({ fullStars }) {
    const max_Rating = 5;
    let stars = [];
    for (let i = 0; i < max_Rating; ++i) {
        let cl = ["fa"]
        if (fullStars >= 1) {
            cl.push("fa-star");
        } else if (fullStars > 0) {
            cl.push("fa-star-half-o");
        } else {
            cl.push("fa-star-o");
        }
        stars.push(<i key={i} className={classnames(cl)}></i>)
        fullStars--;
    }

    return (

        <span className={css.locationRating}>
            {stars}
        </span>

    )


}

