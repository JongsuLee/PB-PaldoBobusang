import React, {useState, useEffect} from 'react'
import Agri from '../../components/agri-details/agri';
import styles from '/styles/agriList.module.css';
import { useAtom } from 'jotai';
import curAppAtom from '../../atoms/CurAppAtom';
import constant from '../../public/constant.json'

const AgriList = (props) => {
  const [fruitList, setFruitgriList] = useState([]);
  const [VegetableList, setVegetableList] = useState([]);
  const [curApp, setCurApp] = useAtom(curAppAtom);

  useEffect(() => {
    setCurApp('agri-list');
    fetch(`${constant.backend_url}/fruits/list/harvest`)
    .then(response => response.json())
    .then(data => setFruitgriList(data))

    fetch(`${constant.backend_url}/vegetables/list/harvest`)
    .then(response => response.json())
    .then(data => setVegetableList(data))
  },[]);

  const agriList = [...fruitList, ...VegetableList];

  const onClickHandler = (id) => {
    props.onClickHandler(id);
  };

  return (
    <div className={styles.body}>
      <div className={styles['background-1-1']}></div>
      <div className={styles['background-1-2']}></div>
      <div className={styles['background-2-1']}></div>
      <div className={styles['background-2-2']}></div>
      <div className={styles['background-2-3']}></div>
      <div className={styles['background-3-1']}></div>
      <div className={styles['background-3-2']}></div>
      <div className={styles['background-4-1']}></div>
      <div className={styles['background-4-2']}></div>
      <div className={styles['background-5-1']}></div>
      <div className={styles['background-5-2']}></div>
      <div className={styles['background-main']}></div>
      <div className={styles['agri-list']}>
          {agriList.map(agri => {
            return(
              <Agri object={agri} onClickHandler={onClickHandler} id={agri.key}/>
            )
          })}
      </div>
    </div>
  )
}

export default AgriList