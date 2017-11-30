import React, { Component } from 'react';

import css from './Footer.css'
export default function Footer(){
        return (
            <div className={css.footer}>
                <span>
                    <i className="fa fa-copyright" aria-hidden="true"></i> Rotem Plaut
                </span>
                <div className={css.footerSigns}>
                    <i className="fa fa-facebook-square" aria-hidden="true"></i>
                    <i className="fa fa-twitter-square" aria-hidden="true"></i>
                </div>
            </div>
        )
    }