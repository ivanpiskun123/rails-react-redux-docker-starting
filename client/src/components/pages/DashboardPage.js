import React, {useEffect} from 'react';
import { MDBRow } from 'mdbreact';
import AdminCardSection1 from './sections/AdminCardSection1';
import AdminCardSection2 from './sections/AdminCardSection2';
import TableSection from './sections/TableSection';
import BreadcrumSection from './sections/BreadcrumSection';
import ChartSection1 from './sections/ChartSection1';
import ChartSection2 from './sections/ChartSection2';
import MapSection from './sections/MapSection';
import ModalSection from './sections/ModalSection';

const DashboardPage =  () => {

//   useEffect(
//       ()=>{
//         fetch('http://localhost:3000/api/v1/tests')
//         .then(response => console.log(response))
//         .then(response => console.log(response));


//   }
//   ,[]
// )


  return (
    <React.Fragment>
      <BreadcrumSection />
      <AdminCardSection1 />
      <ChartSection1 />
      <TableSection />
      <ChartSection2 />
      <MDBRow className="mb-4">
          <MapSection />
          <ModalSection />
      </MDBRow>
      <AdminCardSection2 />
    </React.Fragment>
  )
}

export default DashboardPage;
