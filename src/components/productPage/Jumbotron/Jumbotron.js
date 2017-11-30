import React, { Component } from 'react';
import css from './Jumbotron.css'

export default class Jumbotron extends Component {
    constructor() {
        super()
        this.backgroundImage = null
    }
    render() {

        let divStyle = {
            backgroundImage: `url(${this.props.pic})`
        };
        this.backgroundImage = divStyle
        return (
            <div style={this.backgroundImage} className={css.productJumbotron}></div>
        )
    }

}


