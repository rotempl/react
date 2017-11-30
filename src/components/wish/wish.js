import React, { Component } from 'react';
import css from './wish.css'

export default function wish({data, cityName}){

        return (

            <div className={css.reservation}>
                <div className={css.imageReservation}>
                    <img src={data.imageUrl} className={css.smallImg}/>
                </div>    
                <div className={css.details}>
                    <span className={css.locationName}>{data.name}, <span>{cityName}</span></span>                  
                    <span>Max guests: {data.maxGuests}</span>
                    <span className={css.locationPrice}>{data.price} pre night</span>
                </div>       
            
            </div>
        )
    }


