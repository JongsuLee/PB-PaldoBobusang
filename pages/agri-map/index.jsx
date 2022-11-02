import { useAtom } from 'jotai'
import React, { useEffect } from 'react'
import AgriMap from '../../components/agri-map/AgriMap'
import AgriInfo from '../../components/agri-map/AgriInfo';
import curLocationAtom from '../../atoms/curLocationAtom'
import styles from '../../styles/agri-map-index.module.css';
import curAppAtom from '../../atoms/curAppAtom';

const index = () => {
  const [curLocation, setCurLocation] = useAtom(curLocationAtom);
  const [curApp, setCurApp] = useAtom(curAppAtom);

  useEffect(() => {
    setCurApp('agri-map');

  }, []);

  return (
    <div className={styles.frame}>
      {curLocation === '' ? <AgriMap /> :
                            <>
                              <AgriMap /> 
                              <AgriInfo />
                            </>}
    </div> 
  )
}

export default index