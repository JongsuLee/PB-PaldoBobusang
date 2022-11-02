import React from 'react'
import styles from '../../styles/location-table.module.css';

const LocationTable = (props) => {
  const array = props.array;
  console.log(array);
  const local = props.local
  console.log(local);

  return (
    <div className={`cities-frame ${styles['cities-frame']}`}>
      <table className={styles.cities}>
        <tr>
          <th>도</th>
          <th>시(군)</th>
        </tr>
        {array? array.map((city, index) => {
                  return index === 0 ? <tr>
                                        <td rowSpan={array.length}>{city.localName}</td>
                                        <td>{city.cityName}</td>
                                      </tr> :
                                      <tr>
                                        <td>{city.cityName}</td>
                                      </tr>
                }) : <></>}
      </table>
    </div>
  )
}

export default LocationTable