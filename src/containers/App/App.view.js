import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import {Route} from 'react-router-dom';
import { withRouter } from 'react-router';
import {fetchLocationsData, fetchCitiesData, fetchCountriesData} from '../../actions/fetchData';
import {logInUser, logOutUser} from '../../actions/actions'
import TopBar from '../TopBar/TopBar';
import Footer from '../../components/shared/Footer/Footer';
import ProductPage from '../ProductPage/ProductPage';
import WishList from '../WishList/WishList';
import Home from '../Home/Home';
import Reservations from '../Reservations/Reservations';
import SignUp from '../../components/shared/SignUp/SignUp';
import LogIn from '../../components/shared/LogIn/LogIn'


import css from './App.css';

class App extends Component {
	constructor() {
		super();
		this.state= {isSignInOpen:false,
					isLogInOpen: false,
					isLogOutOpen: false,
					blockScreen: false,
					wrongDetails: false}
	}

	isSingInOpen(){
		if(this.state.isLogInOpen === true){
			this.setState({isLogInOpen: false})
		}
		this.setState({isSignInOpen: !this.state.isSignInOpen});
	}
	isLogInOpen(){
		if(this.state.isSignInOpen === true){
			this.setState({isSignInOpen: false})
		}
		this.setState({isLogInOpen: !this.state.isLogInOpen})
	}

	closePopUps(){
		if(this.state.isSignInOpen === true){
			this.setState({isSignInOpen: false});
		}else if(this.state.isLogInOpen === true){
			this.setState({isLogInOpen: false})
		}
	}

	componentWillMount(){
		this.props.getLocations();
		this.props.getCities();
		this.props.getCountries();
	}

	componentDidMount(){
		this.body.addEventListener("click", () => this.closePopUps())

	}
	logInUser(userData){
		this.setState({isLogInOpen: false});
		debugger
		if(userData.confirmDetails){
			this.props.logInUser(userData);
		}else{
			this.props.logOutUser();
		}

	}

	render() {
		const { locations, cities, countries, logIn} = this.props;
		return (
			<div>
				<TopBar isSingInOpen={() => this.isSingInOpen()} 
						isLoginOpen={() => this.isLogInOpen()}/>
				<switch ref= {(el) => this.body= el} >
					<Route exact path="/" component={Home} />
					<Route path="/product/:id" component={ProductPage}/>
					<Route path="/reservations" component={Reservations}/>
					<Route path="/wishList" component={WishList}/>
					<Route path="/sign-up" component={SignUp}/>
				</switch>
				<SignUp open={this.state.isSignInOpen}/>
				<LogIn open={this.state.isLogInOpen} 
						logInUser={(userData)=> this.logInUser(userData)}
						isLoginOpen={() => this.isLogInOpen()}/>
				<Footer/>
			</div>
		)
	}
}

function mapStateToProps(state) {
	const { locations, cities, countries, logIn } = state
	return {
		locations, cities, countries, logIn
	}
}
 
function mapDispatchToProps(dispatch) {
	return {
		getLocations:  () => dispatch(fetchLocationsData()),
		getCities: () => dispatch(fetchCitiesData()),
		getCountries: () => dispatch(fetchCountriesData()),
		logInUser: (userDetails) => dispatch(logInUser(userDetails)),
		logOutUser: () => dispatch(logOutUser())
	}
}

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(App))
