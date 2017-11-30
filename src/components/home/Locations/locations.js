import React, { Component } from 'react';
import Location from '../Location/location'
import load from 'lodash';
import css from './locations.css'

export default class Locations extends Component {

    render() {     
        debugger 
        return (
            <div className= {css.locations}>
                {this.props.displayedList.map((item,i) => 
                   <Location 
                        city= {item.cityName}
                        key={item.id} 
                        name={item.locationName}
                        price= {item.price}
                        img= {item.imageUrl}
                        id= {item.id}
                        rating= {item.reviewsAverage}
                        numbersOfReviews= {item.numbersOfReviews}
                        />)             
                }     
            </div>
        )
    }

}