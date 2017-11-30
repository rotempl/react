import React, { Component } from 'react';
import { connect } from 'react-redux';
import load from 'lodash';


import {addItemsToList} from '../../actions/actions'
import Jumbotron from '../../components/home/Jumbotron/Jumbotron'
import Search from '../../components/home/Search/search'
import Locations from '../../components/home/Locations/locations'
import css from './Home.css'


class Home extends Component {
    constructor() {
        super()
        this.state = { displayedList: []};
    }
    componentWillReceiveProps(nextProps){
       this.setState({displayedList: nextProps.locations })
    }

    reloadPage(value, guests) {
        let {locations}= this.props

        let newList = locations.filter(function (el) {
            debugger
            if (el.cityName.toLowerCase().indexOf(value.toLowerCase()) > -1 && el.maxGuests >= guests) {
                return el;
            }
        })

        this.setState({ displayedList: newList })
    }

    render() {
        let {cities} = this.props
        return (
            <div>
                <main className= {css.marginLeft}>
                    <Jumbotron />
                    <h2 className={css.boldWord}>Book Your Vacation now: </h2>
                    <Search  displayedList={this.state.displayedList} cities={cities} 
                            reloadAfterSearch={(val, guest) => this.reloadPage(val, guest)}/>
                    <Locations displayedList={this.state.displayedList} cities={cities} />
                </main>
            </div>
        )
    }
}

function mapStateToProps(state) {
	const { locations, cities, displayedList} = state
	return {
		locations, cities, displayedList
	}
} 
function mapDispatchToProps(dispatch) {
	return {
        updateDisplayesList: (locations) => dispatch(addItemsToList(locations)),
	}
}
export default connect(mapStateToProps, mapDispatchToProps)(Home)


