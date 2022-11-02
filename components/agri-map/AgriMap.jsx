import {React, useEffect, useState} from 'react'
import Overall from './Overall';
import Specific from './Specific';
import { useAtom } from 'jotai'
import curAppAtom from '../../atoms/curAppAtom'
import curLocationAtom from '../../atoms/curLocationAtom'
import styles from '../../styles/agri-map.module.css'
import AgriSpot from './AgriSpot';
import curCitiesOnProductAtom from '../../atoms/curCitiesOnProductAtom';
// import curCategoryAtom from '../../atoms/curCategoryAtom';

const AgriMap = () => {
  const [curLocation, setCurLocation] = useAtom(curLocationAtom);
  // const [curCategory, setCurCategory] = useAtom(curCategoryAtom);
  const [curCitiesOnProduct, setCurCitiesOnProduct] = useAtom(curCitiesOnProductAtom);
  useEffect(() => {
    if (curLocation !== '') {
      const className = 'overall_classified_svg__' + curLocation;
      const locals = document.getElementsByClassName(className);
      const overalls = document.getElementsByClassName('overall_classified_svg__overall');
      for (let overall of overalls) overall.style.fill = '#55efc4';
      for (let local of locals) local.style.fill = '#aa33ff';
    }

  }, [curLocation]);
  
  const clickHandler = location => {
    if (location) {
      setCurLocation(location.replace('overall_classified_svg__', ''));
      setCurCitiesOnProduct(null);
    };
  }

  return (
    <div className={styles['agri-map']}>
      {curLocation === '' ? <Overall size='large' clickHandler={clickHandler}/> :
                            <>
                              <Overall size='small' clickHandler={clickHandler}/> 
                              <AgriSpot />
                              <Specific />
                            </>}
    </div>
  )
}

export default AgriMap