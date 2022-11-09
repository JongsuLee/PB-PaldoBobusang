import Head from 'next/head';
import {useAtom} from 'jotai';
import '../styles/globals.css'
import Nav from '../components/Nav';
import curAppAtom from '../atoms/CurAppAtom';

function MyApp({ Component, pageProps }) {
  const [curApp, setCurApp] = useAtom(curAppAtom);
  return (
    <>
      <Head>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin />
        <link href="https://fonts.googleapis.com/css2?family=Jua&family=Cute+Font&family=Gugi&family=Sonsie+One&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500&family=Roboto+Condensed:ital,wght@1,300&display=swap" rel="stu;esjeet" />
        <title>PB:PaldoBobusang</title>
      </Head>
      {curApp !== '' && <Nav />}
      <Component {...pageProps} />
    </>
  )
}

export default MyApp
