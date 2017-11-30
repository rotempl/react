import React, { Component } from 'react';
import {Link} from 'react-router-dom';
import { connect } from 'react-redux';
import css from './TopBar.css';

class TopBar extends Component {
    constructor() {
        super();
        
    }

    render() {
        if(this.props.logIn.confirmDetails){
            var welcome=    <span className={css.welcome}>
                                {`Welcome ${this.props.logIn.firstName} ${this.props.logIn.lastName}`}
                            </span>
            var logInButton= <button className={`${css.topBarMenu} ${css.pointer}`}
                                onClick={() => this.props.isLoginOpen()}> Log Out 
                            </button>
        }else{
            var welcome= <span className={css.welcome}></span>
            var logInButton= <button className={`${css.topBarMenu} ${css.pointer}`}
                                onClick={() => this.props.isLoginOpen()}> Log In 
                            </button>
        }
        return (
            <div className={css.topBar}>
                <span className= {css.topBarLogo}>
                    <a href="/">
                        <img className= {css.logo} src="https://s3.amazonaws.com/freebiesupply/large/2x/airbnb-logo-black-transparent.png" alt="" />
                    </a>           
                </span>
                {welcome}
                <div className={css.menu}>
                    <Link to="/wishList" className={`${css.topBarMenu} ${css.pointer}`}> 
                        <button className={css.inTopBarMenu} > Wish list </button> 
                    </Link> 
                    <Link to="/reservations" className={`${css.topBarMenu} ${css.pointer}`}>
                        <button className={css.inTopBarMenu}> Reservations </button>
                    </Link> 
                    <button className={`${css.topBarMenu} ${css.pointer}`} 
                            onClick={() => this.props.isSingInOpen()}> Sign Up 
                    </button>
                    {logInButton}
                </div>
            </div>
        )
    }

}

function mapStateToProps(state) {
	const { logIn } = state;
	return {
		logIn
	}
}
 
function mapDispatchToProps(dispatch) {
	return {

	}
}

export default connect(mapStateToProps, mapDispatchToProps)(TopBar);

