import React, { Component } from 'react';
import load from 'lodash';

import css from './search.css'


export default class Search extends Component {
    constructor() {
        super();
        
    }


    cityChange(e) {
        let cityName= this.citySearch.value;
        let guest= this.select.value;
        this.props.reloadAfterSearch(cityName, guest);
    }


    render() {
        let guests = [];
        for (let i = 1; i < 7; ++i) {
            guests.push(<option key={i} value={i}>{i} Guests</option>);
        }
        
        return (
            <div className={css.search}>
                <span className={css.searchBorder}>
                    <label htmlFor="city" >Choose a city for your vacation: </label>
                    <input onChange={this.cityChange.bind(this)} ref={(data) => this.citySearch= (data)}
                                    id="city" type="text" list="theSecrch" 
                                    placeholder="type a city name..." />
                    <datalist id="theSecrch">
                        {this.props.cities.map((item) => <option 
                        key={item.cityName} value={item.cityName}></option>)}
                    </datalist>
                </span>
                <span className={css.searchBorder}>
                    <label htmlFor="selectNumOfGuests">How many guests you will be?</label>
                    <div id="selectNumOfGuests"className="textCenter">
                        <select onChange={this.cityChange.bind(this)} ref={(el) => this.select= (el)}>
                            {guests}
                        </select>
                    </div>
                </span>
                <span className={css.searchSpan}>
                    <button className={`${css.searchButton} ${css.pointer}`}>Search</button>
                </span>
            </div>
        )
    }

}


