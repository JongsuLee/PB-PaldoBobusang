import React, { useEffect, useState } from 'react'
import styles from '../../styles/agriList.module.css';
import { Line } from 'react-chartjs-2';
import Chart from 'chart.js/auto';

const AgriChart = (props) => {

  // const [AgriData, setAgriData] = useState({});
  // setAgriData(props.object);

  // const [productCondition, setProductCondition] = useState(true);
  // const [productCode, setProductCode] = useState(0);

  // if(typeof AgriData.fruitCode !== 'undefined'){
  //   setProductCode(AgriData.fruitCode);
  //   console.log('과일', productCondition, productCode);
  // } else{
  //   setProductCode(AgriData.vegetableCode);
  //   setProductCondition(false);
  //   console.log('야채', productCondition, productCode);
  // }

  const AgriData = props.object;
  let productCondition = true;
  let productCode = 0;

  if(typeof AgriData.fruitCode !== 'undefined'){
    productCode = AgriData.fruitCode;
    console.log('과일', productCondition, productCode);
  } else{
    productCode = AgriData.vegetableCode;
    productCondition = false;
    console.log('야채', productCondition, productCode);
  }

  const [locationId, setLocationId] = useState(0);
  const [priceData, setPriceData] = useState([]);

  useEffect(() => {
      const fetchData = async () => {
        let data = {};
        if (productCondition) {
          const rawRes = await fetch(`http://localhost:8090/prices/list/fruitCode/${productCode}`)
          data = await rawRes.json();
        } else {
          const rawRes = await fetch(`http://localhost:8090/prices/list/vegetableCode/${productCode}`)
          data = await rawRes.json();
        }

        if(data.length !== 0){
          setLocationId(data[0].locationId);
        } else {
          setLocationId(0);
        }

        if (locationId !== 0) { 
          if(productCondition){
            const rawRes2 = await fetch(`http://localhost:8090/prices/list/fruitCodeAndLocationId/${productCode}/${locationId}`)
            const data = await rawRes2.json();
            setPriceData(data);
          } else {
            const rawRes2 = await fetch(`http://localhost:8090/prices/list/vegetableCodeAndLocationId/${productCode}/${locationId}`)
            const data = await rawRes2.json();
            setPriceData(data);
          }
        }

      };
      
      setTimeout(() => {
        fetchData(); 
      }, 500);
      
  },[locationId]);

  const dataLength = priceData.length;

  const priceDate = ['2021-10-07', '2022-09-06', '2022-09-29', '2022-10-05'];
  const priceKey = ['1년전', '1달전', '1주일전', '당일'];
  const arrPrice = {};

  let listCityName = '';
  for (let index = 0; index < dataLength; index++) {
    for (let j = 0; j < priceDate.length; j++) {
      if (priceData[index].priceDate === priceDate[j]) {
        arrPrice[priceKey[j]] = priceData[index].priceValue;
        listCityName = priceData[index].location.cityName;
      }
    }
    // if(priceDate[index] === priceData[index].priceDate){
    //   if(priceData[index].priceValue) {
    //     arrPrice[priceKey[index]] = priceData[index].priceValue;
    //   } else {
    //     arrPrice[priceKey[index]] = 0;
    //   }
    // }
  }
  console.log('AgriData:', AgriData)
  const data = {
    labels: Object.keys(arrPrice),
    datasets: [
      {
        type: 'line',
        label: AgriData.itemName + ' - ' + listCityName,
        borderColor: 'rgb(54, 162, 235)',
        borderWidth: 2,
        data: Object.values(arrPrice),
      }
    ]
  }

  console.log('data:', data);

  return (
    <>
      <div className={`${props.className} ${styles['agri-chart']}`}>
        <div className={styles['container']}>
          <Line data={data} className={styles['chart']}/>
        </div>
      </div>
    </>
  );
};

export default AgriChart