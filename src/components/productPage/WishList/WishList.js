import React, { Component } from 'react';

import css from './WishList.css'
export default class WishList extends Component {
    constructor() {
        super();

    }


    render() {
       
        return (
            <div className={css.wishList}>
                <button className={css.saveWish}>
                    <i className="fa fa-heart-o" aria-hidden="true"></i>&nbsp;
                    <span>Save to Wish List</span>
                </button>
                <span>98974 travelers saved this place</span>
                <div className={css.icons}>
                    <span className={css.space}>
                        <i className="fa fa-facebook-square" aria-hidden="true"></i>
                    </span>
                    <span className={css.space}>
                        <i className="fa fa-twitter-square" aria-hidden="true"></i>
                    </span>
                    <span className={css.space}>
                        <i className="fa fa-envelope-o" aria-hidden="true"></i>
                    </span>
                </div>
            </div>
        )
    }

}