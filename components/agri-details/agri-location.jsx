import { useAtom } from 'jotai';
import React from 'react'
import curAppAtom from '../../atoms/curAppAtom';
import curCitiesOnProductAtom from '../../atoms/curCitiesOnProductAtom';
import styles from '../../styles/agri-detail.module.css';

const AgriLocation = (props) => {
  const [curApp, setCurApp] = useAtom(curAppAtom);
  const [curCitiesOnProduct, setCurCitiesOnProduct] = useAtom(curCitiesOnProductAtom);
  const agriLoc = props.object.locations;
  const localList = {'수도권': [],
                     '강원도': [],
                     '충청북도': [],
                     '충청남도': [],
                     '전라북도': [],
                     '전라남도': [],
                     '경상북도': [],
                     '경상남도': [],
                     '제주도': [],
                    }
  curApp === 'agri-list' ? agriLoc.map(item => localList[item.localName].push(item.cityName)) : curCitiesOnProduct.map(item => localList[item.localName].push(item.cityName));

  const localKey = Object.keys(localList);

  return (
    <div className={`${props.className} ${styles['agri-loc-frame']}`}>
      <table className={styles['agri-loc-table']}>
        <tr>
          <th className={styles['th-left']}>도</th>
          <th className={styles['th-right']}>시(군)</th>
        </tr> 
          {
            localKey.map(key => {
              return (
                localList[key].map((city, index) => {
                  return index === 0 ? <tr>
                                          <td className={styles['local-name']} rowSpan={localList[key].length}>{key}</td>
                                          <td className={styles['city-name']}>{city}</td>
                                       </tr>:
                                       <tr>
                                          <td className={styles['city-name']}>{city}</td>
                                       </tr>
                })  
              )
              
            })
          }
      </table>
    </div>
  )
}


export default AgriLocation