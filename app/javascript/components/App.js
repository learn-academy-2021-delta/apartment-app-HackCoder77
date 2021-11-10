import React, { Component } from 'react'
import Header from './components/Header'
import Footer from './components/Footer'
import Home from './pages/Home'
import ApartmentIndex from './pages/Apartmentindex'


import {
  BrowserRouter as Router,
  Routes,
  Route
} from 'react-router-dom'


class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      apartments: []
    }
  }
  componentDidMount(){
    this.readApartment()
  }
  readApartment = () => {
    fetch("/apartments")
    .then(response => response.json())
    .then(payload => this.setState({apartments:payload}))
    .catch(errors => console.log("index errors:", errors))
  }
  render() {
    const { apartments } = this.state

    return (
      <Router>
        <Header {...this.props} />
        <Routes>
          <Route exact path="/" element= {<Home />} />
          <Route exact path="/apartmentindex"
          element={<ApartmentIndex
          apartments={apartments} /> } />
        </Routes>
        <Footer />
      </Router>
    )
  }
}

export default App