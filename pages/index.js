import { useAtom } from 'jotai'
import { useEffect, useState } from 'react';
import { useRouter } from 'next/router'
import curAppAtom from '../atoms/curAppAtom';
import styles from '../styles/main.module.css';

export default function Home() {
  const [curApp, setCurApp] = useAtom(curAppAtom);
  const [curView, setCurView] = useState([false, false]);
  const router = useRouter();
  useEffect(() => setCurApp(''), []);

  const mouseOverHandler = event => {
    const view = event.target.id;
    view === 'agri-list' ? setCurView([true, false]) : setCurView([false, true]);
  };

  const listClickHandler = event => {
    router.push('agri-list');
  };

  const mapClickHandler = event => {
    router.push('agri-map');
  };

  return (
    <div className={styles.body}>
      <div className={styles.main}>
      <div className={styles.logo}>
          <div className={styles.back}></div>
          <p className={styles['logo-desc']}>제철 농산물 정보 제공 플랫폼</p>
          <h1 className={styles['ko-logo']}>팔도 보부상</h1>
          <h2 className={styles['en-logo']}>Paldo Bobusang</h2>
        </div>
        <div className={styles.apps}>
          <div className={styles.button} id='agri-list' onMouseOver={mouseOverHandler} onClick={listClickHandler} >보부상 봇짐</div>
          <div className={styles.button} id='agri-map' onMouseOver={mouseOverHandler} onClick={mapClickHandler} >보부상 지도</div>
        </div>
        <div className={styles['practice-video-frame']}>
          <div className={styles['frontier']}></div>
          {curView[0] ? <div className={styles['video-frame']}>
                          <img className={styles['video']} src='/images/video-agri-list.gif'/>
                        </div> : 
                        <div className={styles['question-mark']} id='agri-list'
                        onMouseOver={mouseOverHandler}>?</div>}
          {curView[1] ? <div className={styles['video-frame']}>
                          <img className={styles['video']} src='/images/video-agri-map.gif'/>
                        </div> : 
                        <div className={styles['question-mark']} id='agri-map'
                             onMouseOver={mouseOverHandler}>?</div>}
        </div>
      </div>
    </div>
  )
}
