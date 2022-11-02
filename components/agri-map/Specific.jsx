import {React} from 'react'
import { ReactSVG } from 'react-svg';
import {css} from 'glamor'
import { useAtom } from 'jotai';
import curLocationAtom from '../../atoms/curLocationAtom';

const Specific = (props) => {
  const [curLocation, useCurLocation] = useAtom(curLocationAtom);
  const loc = `/classifiedSVG/${curLocation}_classified.svg`;
  const styles = css({
    ' svg': {
      width: '90%',
      height: '90%',
      margin: '20vh 0 0 3vw'
    }
  })

  return (
    <ReactSVG src={loc} className={curLocation} {...styles} />
    )
}

export default Specific