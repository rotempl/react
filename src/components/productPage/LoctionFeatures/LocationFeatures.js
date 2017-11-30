import React, { Component } from 'react';
import css from './LocationFeatures.css'

export default class LocationFeatures extends Component {
    constructor() {
        super();

    }


    render() {
        let { guests, bed, bedroom } = this.props;

        return (
            <div className={css.LocationFeatures}>
                <span className={css.colum}>
                    <span className={css.center}>
                        <i className="fa fa-home" aria-hidden="true"></i>
                    </span>
                    <span className={css.inliner}> Entire home/apt </span>
                </span>
                <span className={css.colum}>
                    <span className={css.center}>
                        <i className="fa fa-users" aria-hidden="true"> </i>
                    </span >
                    <span className={css.inliner}> {guests} guests</span>
                </span>
                <span className={css.colum}>
                    <span className={css.center}>
                        <i className="icon icon-rooms icon-size" aria-hidden="true" data-reactid="290"></i>
                    </span>
                    <span className={css.inliner}> {bedroom} bedroom</span>
                </span>
                <span className={css.colum}>
                    <span className={css.center}>
                        <i className="icon icon-double-bed icon-size" aria-hidden="true" data-reactid="300"></i>
                    </span>
                    <span className={css.inliner}>{bed} bed</span>
                </span>
            </div>
        )
    }

}