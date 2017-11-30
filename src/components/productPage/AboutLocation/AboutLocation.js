import React, { Component } from 'react'
import css from './AboutLocation.css'

export default function about({about}) {
    

  return (
    
       <span id="Overview">
           <h1 className={css.aboutHeader}>About this listing</h1>
           <span className={css.aboutText}>
              {about}
           </span>
       </span>
  )
}