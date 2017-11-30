import React, { Component } from 'react';
import { connect } from 'react-redux'
import css from './SignUp.css'

class SignIn extends Component {
    constructor() {
        super();
        this.state = {
            emailValid: true,
            firstNameValid: true,
            lastNameValid: true,
            PasswordValid: true,
            userEmail: true,
            registerComplete: false
        }

    }
    checkDetails() {
        var valid = true;
        let email = this.email.value;
        valid = valid && this.validateEmail(email);
        valid = valid && this.validateFirstName();
        valid = valid && this.validateLastName();
        valid = valid && this.validatePassword();

        if (valid === true) {
            this.rgisterUserOnDataBase();
        }
    }
    validateEmail(email) {
        var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        if (re.test(email)) {
            this.checkIfEmailInUse(email);
            if (this.state.userEmail) {
                this.setState({ emailValid: true })
                return true;
            } else {
                return false;
            }
        } else {
            this.setState({ emailValid: false });
            return false;
        }
    }
    validateFirstName() {
        if (this.firstName.value.length > 0) {
            this.setState({ firstNameValid: true });
            return true;
        } else {
            this.setState({ firstNameValid: false });
            return false;
        }
    }
    validateLastName() {
        if (this.lastName.value.length > 0) {
            this.setState({ lastNameValid: true });
            return true;
        } else {
            this.setState({ lastNameValid: false });
            return false;
        }
    }
    validatePassword() {
        if (this.password.value.length > 0) {
            this.setState({ PasswordValid: true });
            return true;
        } else {
            this.setState({ PasswordValid: false });
            return false;
        }
    }
    checkIfEmailInUse(emailAddress) {
        return fetch('/users/checkEmail/' + emailAddress)
            .then((data) => data.json())
            .then((data) => this.setState({ userEmail: data.result }));
    }
    rgisterUserOnDataBase() {
        var userData={
            email: this.email.value,
            firstName: this.firstName.value,
            lastName: this.lastName.value,
            password: this.password.value
        }
        userData= JSON.stringify(userData)       
        fetch('/users/registerNewUser',
            {
                method: "POST",
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                body: userData
            });      
        this.email.value= "";
        this.firstName.value= "";
        this.lastName.value= "";
        this.password.value= "";
        this.setState({registerComplete: true})
    }
    render() {
        return (
            <div className={this.props.open ? css.singInBox : css.hidden}>
                <div className={this.state.registerComplete? css.wellocme: css.hidden}>
                    Your register was complete welcome to our site!
                </div>
                <div className={css.heaer}>Sign Up</div>
                <input className={this.state.emailValid ? css.input : css.redBorder} type="text"
                    placeholder="Email address"
                    ref={(el) => this.email = el} />
                <input className={this.state.firstNameValid ? css.input : css.redBorder} type="text"
                    placeholder="First Name"
                    ref={(el) => this.firstName = el} />
                <input className={this.state.lastNameValid ? css.input : css.redBorder} type="text"
                    placeholder="Last Name"
                    ref={(el) => this.lastName = el} />
                <input className={this.state.PasswordValid ? css.input : css.redBorder} type="password"
                    placeholder="Creat a Password"
                    ref={(el) => this.password = el} />
                <div className={this.state.userEmail ? css.hidden : css.emailAlert}>*this email is already in use</div>
                <button className={css.singUpButton} onClick={() => this.checkDetails()}>Sign Up</button>
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

export default connect(mapStateToProps, mapDispatchToProps)(SignIn)