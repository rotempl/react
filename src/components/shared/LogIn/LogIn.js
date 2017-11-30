import React, { Component } from 'react';
import { connect } from 'react-redux'
import css from './LogIn.css'

class LogIn extends Component {
    constructor() {
        super();
        this.state = {
            validateEmail: true,
            validatePassword: true,
            wrongDetails: false,
            userIsLoggIn: false
        }
    }
    
    checkLoginDetails(){
        var valid = true;
        let email = this.email.value;
        valid = valid && this.validateEmail(email);
        valid= valid && this.validatePassword();
        if (valid){
            this.checkDetailsOnDataBase();
        }
    }
    validateEmail(email) {
        var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        if (re.test(email)) {
            this.setState({validateEmail: true});
            return true;
        }else{
            this.setState({validateEmail: false});
            return false;
        }
    }
    validatePassword(){
        if(this.password.value.length >0){
            this.setState({validatePassword: true});
            return true; 
        }else{
            this.setState({validatePassword:false});
            return false;
        }
    }
    checkDetailsOnDataBase(){
        var logInDetails={
            email: this.email.value,
            password: this.password.value
        }
        logInDetails= JSON.stringify(logInDetails)       
        fetch('/users/checkLoginDetails',
            {
                method: "POST",
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                body: logInDetails
            }).then((data) => data.json())
                .then((data)=> this.logInUser(data))
    }

    logInUser(logInData){
        if(!logInData.confirmDetails){
            this.setState({wrongDetails: true})
            this.password.value= ""
        }else if(logInData.confirmDetails){
            this.setState({wrongDetails: false, userIsLoggIn: true});
            this.props.logInUser(logInData);    
        }
    }
    closeWindow(){
        this.props.isLoginOpen();
    }
    LogOut(){
        this.setState({userIsLoggIn: false})
        this.props.logInUser({confirmDetails: false });
    }

    render() {
        if(this.state.userIsLoggIn){
            var logInOrOut= <div className={this.props.open ? css.logOutBox: css.hidden}>
                                <div className={css.heaer}>Log Out</div>
                                <div className= {css.margin}>
                                    <div className={css.logOutText}>Are you sure you want to Log Out?</div>
                                    <div className={css.logOutButtons}>
                                        <button className={css.largeButton}
                                                onClick={()=> this.closeWindow()}>Cancel</button>
                                        <button className={css.smallButton}
                                                onClick={()=> this.LogOut()}>Log Out</button>
                                    </div>
                                </div>
                            </div>
        }else{
            var logInOrOut= <div className={this.props.open ? css.logInBox: css.hidden}>
                                <div className={css.heaer}>Log In</div>
                                <input className={this.state.validateEmail ? css.input : css.redBorder} type="text"
                                    placeholder="Email address"
                                    ref={(el) => this.email = el} />
                                <input className={this.state.validatePassword ? css.input: css.redBorder} 
                                        type="password"
                                        placeholder="Password"
                                        ref={(el) => this.password = el} />
                                    <div className={this.state.wrongDetails ? css.alert : css.hidden}>
                                            *Wrong Email address of Password
                                    </div>
                                <button className={css.logInButton}
                                        onClick={()=> this.checkLoginDetails()}>Log In</button>
                            </div>
        }
        return (
            <div>
            {logInOrOut}
            </div>
        )
    }

}

function mapStateToProps(state) {
    const { locations } = state
    return {
        locations
    }
}

function mapDispatchToProps(dispatch) {
    return {

    }
}

export default connect(mapStateToProps, mapDispatchToProps)(LogIn)