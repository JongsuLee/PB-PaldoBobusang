import { useRouter } from 'next/router';
import React from 'react'
import styles from '../styles/nav.module.css';
import curLocationAtom from '../atoms/curLocationAtom';
import { useAtom } from 'jotai';

const Nav = () => {
  const router = useRouter();
  const [curLocation, setCurLocation] = useAtom(curLocationAtom);
  
  const clickHandler = event => {
    const id = event.target.id;
    console.log(id);
    id === 'home' ? router.push('/') : router.push(`/${id}`);
    setCurLocation('');
  }

  const mouseOverHandler = event => {
    const className = event.target.classList[0];
    document.getElementsByClassName(className)[1].style.display = 'block';
  }

  const mouseOutHandler = event => {
    const className = event.target.classList[0];
    document.getElementsByClassName(className)[1].style.display = 'none';
  }


  return (
    <div className={styles['nav-frame']}>
      <div className={styles['logo']} id='home' onClick={clickHandler}>
        <div className={styles['logo-background']}></div>
        <div className={styles['logo-desc']}>제철 농산물 플랫폼</div>
        <div className={styles['ko-logo']}>팔도 보부상</div>
        <div className={styles['en-logo']}>PaldoBobusang</div>
      </div>
      <div className={styles['menus']}>
        <div className={`home ${styles['menu']}`} id='home' onClick={clickHandler} onMouseOver={mouseOverHandler} onMouseOut={mouseOutHandler}>홈</div>
        <div className={`agri-list ${styles['menu']}`} id='agri-list' onClick={clickHandler} onMouseOver={mouseOverHandler} onMouseOut={mouseOutHandler}>보부상 봇짐</div>
        <div className={`agri-map ${styles['menu']}`} id='agri-map' onClick={clickHandler} onMouseOver={mouseOverHandler} onMouseOut={mouseOutHandler}>보부상 지도</div>
        <div className={`home ${styles['home']} ${styles['menu-spot']}`}></div>
        <div className={`agri-list ${styles['agri-list']} ${styles['menu-spot']}`}></div>
        <div className={`agri-map ${styles['agri-map']} ${styles['menu-spot']}`}></div>
      </div>
    </div>
  )
}

export default Nav