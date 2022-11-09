import {React, useEffect} from 'react'
import Overall from './Overall';
import Specific from './Specific';
import { useAtom } from 'jotai'
import curLocationAtom from '../../atoms/CurLocationAtom'
import styles from '../../styles/agri-map.module.css'
import AgriSpot from './AgriSpot';
import curCitiesOnProductAtom from '../../atoms/CurCitiesOnProductAtom';

const AgriMap = () => {
  const [curLocation, setCurLocation] = useAtom(curLocationAtom);
  const [curCitiesOnProduct, setCurCitiesOnProduct] = useAtom(curCitiesOnProductAtom);
  useEffect(() => {
    if (curLocation !== '') {
      const className = 'overall_classified_svg__' + curLocation;
      const locals = document.getElementsByClassName(className);
      const overalls = document.getElementsByClassName('overall_classified_svg__overall');
      for (let overall of overalls) overall.style.fill = '#85B66F';
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