import React, { isValidElement, useEffect, useMemo, useRef } from 'react'
import styles from '../../styles/agri-info.module.css';
import { useState } from 'react';
import { useAtom } from 'jotai';
import curLocationAtom from '../../atoms/curLocationAtom';
import LocationTable from './LocationTable';
import curProductAtom from '../../atoms/curProductAtom';
import curCitiesOnProductAtom from '../../atoms/curCitiesOnProductAtom';
import curProductListAtom from '../../atoms/curProductList';


const AgriInfo = () => {
  const [curCategory, setCurCategory] = useState(null);
  const [isCategory, setIsCategory] = useState([false, false]);
  const [curList, setCurList] = useState(null);
  const [curProductList, setCurProductList] = useAtom(curProductListAtom);
  const [curProduct, setCurProduct] = useAtom(curProductAtom); 
  const [curLocation, setCurLocation] = useAtom(curLocationAtom);
  const [curCitiesOnProduct, setCurCitiesOnProduct] = useAtom(curCitiesOnProductAtom);

  useEffect(() => {
    // setCurProductList(null);
    if (curCategory && !curProductList) {
      setIsCategory([false, false]);
      fetch(`http://localhost:8090/${curCategory}s/localEngName/${curLocation}`)
      .then(response => response.json())
      .then(data => {
          const curList = [];
          console.log(data);
          data.map(item => curList.push({...item}));
          setCurProductList(curList);
        })
        .catch(error => console.error(error));
        curCategory === 'vegetable' ? setIsCategory([true, false]) : setIsCategory([false, true]);
      }
      
      if (curProduct && !curCitiesOnProduct) {
        fetch(`http://localhost:8090/${curCategory}s/itemNameAndLocalEngName/${curProduct}/${curLocation}`)
        .then(response => response.json())
        .then(data => {
            const curList = [];
            console.log("data:", data);
            console.log('location:', data.locations);
            data.locations.map(item => curList.push(item));
            console.log(curList);
            setCurCitiesOnProduct(curList);
          })
          .catch(error => console.error(error));
    }

  }, [curCategory, curProduct]);

  curProductList? console.log('curLocation:', curLocation,'curCategory:', curCategory, 'curProductList:', curProductList, 'curCitiesOnProduct:', curCitiesOnProduct, 'curProduct:', curProduct) : <></>;
  // curProductList? console.dir(curProductList) : <></>;
  
  const clickHandler = event => {
                        setCurCategory(event.target.id);
                        setCurProduct(null);
                        setCurProductList(null);
                        setCurCitiesOnProduct(null);
                      }
  const selectHandler = event => {
    setCurProduct(event.target.textContent);
    setCurCitiesOnProduct(null);
    const items = document.getElementsByClassName('item');
    for (let item of items) item.style = 'background-color: rgba(255, 234, 167, 0.5);';
    event.target.style = 'border-radius: 1rem 1rem 0 0; background-color: rgba(211, 214, 218, 0.5);'
  }
  const mouseOverHandler = event => event.target.style
                                     = 'background-color: rgba(211, 214, 218, 0.5);'
  const mouseOutHandler = event => {
   if (event.target.id === curProduct){
     event.target.style = 'border-radius: 1rem 1rem 0 0; background-color: rgba(211, 214, 218, 0.5);';
   } else {
     event.target.style = 'border: 1px solid rgba(255, 234, 167, 1);';
   }
  }

  return (
    <div className={styles['agri-info']}>
      <div className={styles.categories}>
        <div className={styles[`category-${isCategory[0]}`]} id='vegetable' onClick={clickHandler}>야채</div>
        <div className={styles[`category-${isCategory[1]}`]} id='fruit' onClick={clickHandler}>과일</div>
      </div>
      {curProductList ? <div className={styles['products-true']} id='products'>
                        {curProductList.map((item, index) => <>
                                            <div onClick={selectHandler} 
                                                onMouseOver={mouseOverHandler}
                                                onMouseOut={mouseOutHandler}
                                                className={`item ${styles.item}`}
                                                id={item.itemName} key={index}>{item.itemName}
                                            </div>
                                            {curProduct === item.itemName? <LocationTable 
                                                                    array={curCitiesOnProduct}
                                                                    local={curLocation} /> : <></>}
                                          </>
                                          )}
                        </div> : 
                     <div className={styles['products-false']}></div>}
      
    </div>
  )
}

export default AgriInfo