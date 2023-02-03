import React, { useState } from "react";
import AgriListDetail from "./Agri-list-detail";
import AgriListBlackout from "./AgriListBlackout";
import styles from "/styles/agri.module.css";

const Agri = (props) => {
  const agri = props.object;
  const [modalVisible, setModalVisible] = useState(false);

  const modalChange = () => {
    setModalVisible(!modalVisible);
  };

  return (
    <>
      <div className={styles["agri"]} onClick={modalChange}>
        <div className={styles["agri-frame"]}>
          <div className={styles["picture-frame"]}>
            <img
              className={styles["picture"]}
              id="modalImage"
              src={agri.itemImage}
            />
          </div>
          <div className={styles["title"]}>{agri.itemName}</div>
          <div className={styles["pot"]}></div>
        </div>
      </div>
      {modalVisible && <AgriListBlackout setIsModal={modalChange} />}
      {modalVisible && <AgriListDetail object={agri} />}
    </>
  );
};

export default Agri;
