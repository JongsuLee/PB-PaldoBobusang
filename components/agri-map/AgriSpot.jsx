import React, { useEffect, useState } from 'react'
import properties from '../../public/classifiedSVG/overall_svg_settings.json'
import coordinates from '../../public/classifiedSVG/overall_coordinate.json';
import { useAtom } from 'jotai';
import curLocationAtom from '../../atoms/CurLocationAtom';
import curCitiesOnProductAtom from '../../atoms/CurCitiesOnProductAtom';
import styles from '../../styles/agri-spot.module.css';
import curProductAtom from '../../atoms/CurProductAtom';
import curProductListAtom from '../../atoms/CurProductList';
import AgriListBlackout from '../agri-details/agriListBlackout';
import AgriListDetail from '../agri-details/agri-list-detail';

const AgriSpot = (props) => {
  const list = [];
  const [curLocation, setCurLocation] = useAtom(curLocationAtom);
  const [curProduct, setCurProduct] = useAtom(curProductAtom);
  const [curProductList, setCurProductList] = useAtom(curProductListAtom);
  const [curCitiesOnProduct, setCurCitiesOnProduct] = useAtom(curCitiesOnProductAtom);
  const [modalVisible, setModalVisible] = useState(false);
  const modalChange = () => {
      setModalVisible(!modalVisible);
  };

  if (curCitiesOnProduct && curProduct) {
    for (let city of curCitiesOnProduct) {
      if (city.localEngName === curLocation) {
        list.push(coordinates[curLocation][city.cityEngName]);
      }
    }
  }

  let productImage;
  let modalProduct;
  if (curProductList) {
    for (let product of curProductList) {
      if (product.itemName === curProduct) {
        productImage = product.itemImage;
        modalProduct = product;
      }
    }
  }

  return (
    <>
      <svg viewBox={properties[curLocation]['viewBox']} xmlns="http://www.w3.org/2000/svg" width="80%"  className={`${styles.position} ${styles[`position-${curLocation}`]}`}>
        <g transform={properties[curLocation]['transform']} onClick={modalChange}>
          {curCitiesOnProduct? list.map(item => {
            return curLocation === 'jeonbuk' ? 
              <image href={productImage} x={item[0]} y={item[1]} width='10rem' height='10rem' onClick={modalChange} className={styles['image']}/>:
              <image href={productImage} x={item[0]} y={item[1]} width='2.5rem' height='2.5rem' onClick={modalChange} className={styles['image']}/>
          }) : <></>}
        </g>
      </svg>
          {modalVisible && <AgriListBlackout setIsModal={modalChange}/>}
          {modalVisible && <AgriListDetail object={modalProduct}/>}
    </>
  )
}

export default AgriSpot