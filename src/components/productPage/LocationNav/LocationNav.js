import React, { Component } from 'react'
import css from './LocationNav.css'


export default function header() {
    let propertyOnHeader= ["Overview", "Reviews", "Location"];
    let properties =[];
    propertyOnHeader.map((item) => 
                properties.push(<a key={item} className={css.headerButton} href={`#${item}`}>{item} </a>))

  return (
    
      <span className={css.headerButtonsContaier}>
        {properties}
      </span>
  )
}