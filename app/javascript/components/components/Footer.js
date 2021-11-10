import React, { Component } from 'react'
import { NavLink } from 'react-router-dom'
import { faHome, faCity } from "@fortawesome/fontawesome-svg-core"
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome"
import apts1 from '../assets/apts1.jpg'



class Footer extends Component {
    render() {
        return (
            <footer>
             <NavLink to="/">
         <img src={apts1} alt="logo for Apt Finder" className="apts"/>
        </NavLink>
        <div className="footer">
           
            </div>
            <FontAwesomeIcon icon= {faHome} />
            <FontAwesomeIcon icon= {faCity} />
            </footer>
        )
    }
}

export default Footer