import React, { Component } from 'react';
import css from './Jumbotron.css'


export default function Jumbotron(){
        return (
            <div className={css.Jumbotron}>
                <div className={css.jumbotronText}>
                    <span className={css.boldWord}>HOTEL </span>
                    Book unique homes and feel like you are in a hotel.
                </div>
            </div>
        )
    }
