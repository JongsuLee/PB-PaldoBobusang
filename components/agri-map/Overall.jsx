import { useAtom } from 'jotai';
import React from 'react'
import curLocationAtom from '../../atoms/CurLocationAtom';
import Map from '../../public/classifiedSVG/overall_classified.svg';

const Overall = props => {
  const [curLocation, setCurLocation] = useAtom(curLocationAtom)
  const className = 'overall_classified_svg__' + curLocation;
  const size = props.size;
  const clickHandler = event => {
    const location = event.target.classList[0];
    props.clickHandler(location);
  }

  const mouseOverHandler = event => {
    const map = document.getElementsByClassName('Overall-small')[0];
    map ? map.style.transform = 'scale(1.3)' : <></>;
    const origin = document.getElementsByClassName(className);
    if (event.target.localName === 'path' && event.target.classList[0] !== className) {
      const spots = document.getElementsByClassName(event.target.classList[0]);
      event.target.style.cursor = 'pointer';
      for (let spot of spots) spot.style.fill = '#fdcb6e';
    }
  }
  
  const mouseOutHandler = event => {
    const map = document.getElementsByClassName('Overall-small')[0];
    map ? map.style.transform = 'scale(1)' : <></>;
    const origin = document.getElementsByClassName(className);
    if (event.target.localName === 'path' && event.target.classList[0] !== className) {
      const spots = document.getElementsByClassName(event.target.classList[0]);
      for (let spot of spots) spot.style.fill = '#85B66F';
    }
  }

  return (
    size !== 'small' ? <Map onClick={clickHandler} 
                            className={`Overall-${size}`} 
                            width='100%' height='100%'
                            onMouseOver={mouseOverHandler}
                            onMouseOut={mouseOutHandler}
                            style={{'position': 'inherit'}}/> :
                       <Map onClick={clickHandler} 
                            className={`Overall-${size}`} 
                            width='15%' height='15%' 
                            onMouseOver={mouseOverHandler} 
                            onMouseOut={mouseOutHandler}
                            style={{'position': 'absolute', 'z-index': '3'}}/>
  )
}

export default Overall