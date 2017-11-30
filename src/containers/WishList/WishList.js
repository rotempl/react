import React, { Component } from 'react';
import { connect } from 'react-redux'
import {feachWishList} from '../../actions/fetchData'
import Wish from '../../components/wish/wish';
import css from './WishList.css'


class WishList extends Component {
    constructor() {
        super();
        // this.state = { wishList: [], locations: [], cities: [] }

    }
    componentWillMount() {
        this.props.feachWishList();
    }


    render() {

        let { wishList, locations, cities } = this.props
      
        let allWishes = []

        wishList.map((item) =>
            locations.map((obj) => {
                if (obj.id == item) {
                    let cityName = null;
                    cities.map((cityObj) => {
                        if (obj.city == cityObj.cityId) {
                            cityName = cityObj.cityName
                        }
                    })
                    allWishes.push(<Wish data={obj} key={obj.id} cityName={cityName} />)
                }
            })
        )
        return (
            <div className={`${css.marginLeft} ${css.marginTop}`}>
                <span className={css.header}>Your Wish List...</span>
                <div className={css.body}>
                    {allWishes}
                </div>
            </div>
        )
    }

}
function mapStateToProps(state) {
	const { locations, cities, wishList} = state
	return {
		locations, cities, wishList
	}
}
 
function mapDispatchToProps(dispatch) {
	return {
        feachWishList: () => dispatch(feachWishList()),
	}
}

export default connect(mapStateToProps, mapDispatchToProps)(WishList)
