import React, { Component } from 'react';
import css from './Map.css'

export default class GoogleMaps extends Component {
    constructor(){
        super()
        this.coordinates= {lat:1, lng:2}

        
        
    }
    shouldComponentUpdate() {
        return false;
    }

    componentWillReceiveProps(props){
        let {lat, lng}= this.props
        this.coordinates.lat= lat;
        this.coordinates.lng= lng;
            this.map = new google.maps.Map(this.$map, {
        center: { lat: this.coordinates.lat, lng: this.coordinates.lng },
        zoom: 10
    });
    var marker = new google.maps.Marker({
          position: this.coordinates,
          map: this.map,
          title: this.props.name
        });
    }


render() {
    
    return (
        <div id="Location">
            <div ref={(el) => this.$map = el} className={css.map}></div>
        </div>
    )
}

}