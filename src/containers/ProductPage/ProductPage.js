import React, { Component } from 'react';
import load from 'lodash';
import { connect } from 'react-redux';
import Jumbotron from '../../components/productPage/Jumbotron/Jumbotron'
import Header from '../../components/productPage/Header/header'
import LocationNav from '../../components/productPage/LocationNav/LocationNav'
import Booking from '../../components/productPage/Booking/Booking'
import LocationFeatures from '../../components/productPage/LoctionFeatures/LocationFeatures'
import AboutLocation from '../../components/productPage/AboutLocation/AboutLocation'
import Reviews from '../../components/productPage/Reviews/Reviews'
import Map from '../../components/productPage/Map/Map'
import WishList from '../../components/productPage/WishList/WishList'
import {fetchReviews} from '../../actions/fetchData'
import css from './ProductPage.css'

class ProductPage extends Component {
    constructor() {
        super()
        this.location= {};
        this.gotReviews= false;        
    }

    fetchReviews(){
        if(Object.keys(this.location).length >0 && !this.gotReviews){
            this.props.getReviews(this.location.reviewsTable)
            this.gotReviews= true;
        }

    }

    render() {
        let {locations} = this.props;
        let locationId = this.props.match.params.id;
        for (let location of locations){
                if(location.id == locationId){
                    this.location = location;
                    break;
                }
        }
        this.fetchReviews()
        let {location} = this;

        return (
            <div> 
                <Jumbotron pic={location.imageUrl} />
                <div className={css.marginOnTheSides}>
                    <span className={css.leftSide}>
                        <LocationNav />
                        <Header location={location}/>
                        <LocationFeatures   guests= {location.maxGuests}
                                            bedroom= {location.Bedroom}
                                            bed={location.bed}/>
                        <AboutLocation about={location.about}/>
                        <Reviews reviews={this.props.reviews} 
                                fullStars={location.reviewsAverage}
                                amountOfReviews={location.numbersOfReviews}/>
                    </span>
                    <div className={`${css.rightSide} ${css.clearfix}`}>
                        <div ref={(el) => this.booking = el}>
                            <Booking price={location.price} maxGuests= {location.maxGuests}/>
                            < WishList/>
                        </div>
                    </div>
                </div>
                <Map lat={location.lat} 
                    lng={location.lng}
                    name= {location.locationName}/>
            </div>
        )
    }

}

function mapStateToProps(state) {
	const { locations, reviews} = state
	return {
		locations, reviews
	}
}
 
function mapDispatchToProps(dispatch) {
	return {
        getReviews: (tableName) => dispatch(fetchReviews(tableName)),
	}
}

export default connect(mapStateToProps, mapDispatchToProps)(ProductPage)
