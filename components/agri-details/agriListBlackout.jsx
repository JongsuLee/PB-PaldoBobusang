import styles from '/styles/agriList.module.css';

const AgriListBlackout = ({setIsModal})=> {
    return(
        <>
            <div className={styles['blackout-style']} onClick={() => {setIsModal()}} />
        </>
    )
}

export default AgriListBlackout