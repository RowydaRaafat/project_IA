import Sidebar from "./components/sidebar/Sidebar";
import Topbar from "./components/topbar/Topbar"
import "./app.css"
import Home from "./pages/home/Home";
import UserList from "./pages/userList/UserList";
import {BrowserRouter as Router , Routes ,Route} from "react-router-dom"
import User from "./pages/user/User"
import NewUser from "./pages/newUser/NewUser";
import ProductList from "./pages/productList/ProductList";
import Product from "./pages/product/Product";
import NewProduct from "./pages/newProduct/NewProduct"
import  Mail  from "./pages/mails/mail";
import Report from "./pages/reports/Report";
import Warehouse from "./pages/warehouse/Warehouse";
import WarehouseList from "./pages/warehouseList/WarehouseList";
import NewWarehouse from "./pages/newWarehouse/NewWarehouse";
import UserSidebar from "./components/userSidebar/UserSidebar";
import Requests from "./pages/requests/Requests";
import Supervisor from "./pages/Supervisor/Supervisor";
import SendEmail from "./pages/sendEmail/SendEmail";
import SignUp from "./pages/login/SignUp";
import Guest from "./middleware/guest";
import Admin from "./middleware/admin";
import Login from "./middleware/routslogin";
// import Status from "./middleware/status";
function App() {
  return (
    <> 
    {/*Login Page */}
    <Router>
      <Routes>
        <Route path="/" element={<>
        <Login/>
        <SignUp/>
        </>}></Route>
      </Routes>
    </Router>

     {/*Home page */}   
     <Router >
      <Routes> <Route exact path="/home" element={<> 
        <Admin/>
      
          <Topbar/>
     <div className="container">
     <Sidebar/> 
     <Home/>
     <Routes>
      <Route exact path="/home" element={< Home/>}></Route>
      </Routes>
       </div>
     </>}>
     </Route></Routes>
     </Router>
     {/*User */}
     <Router >
               <Routes> 
                  <Route exact path="/users" element={<>
                <Admin/>

                  <Topbar/>
                  <div className="container">
                  <Sidebar/> 
                  <UserList/>
                  <Routes>
                  <Route path="/users" element={< UserList/>}></Route>
                  <Route path="/users/:id" element={< User />}></Route>
                  <Route path="/newUser" element={< NewUser/>}></Route> 
                  </Routes>
                  </div></>}>
                  </Route>
            
                  <Route exact path="/users/:id" element={<> 
                    <Admin/>
                  <Topbar/>
                  <div className="container">   
                  <Sidebar/> 
                  < User />
                  </div></>}>
                  </Route>

                  <Route exact path="/newUser" element={<> 
                    <Admin/>
                  <Topbar/>
                  <div className="container">
                  <Sidebar/> 
                  <NewUser/>
                  </div></>}>
                  </Route>   
                </Routes>
      </Router>

{/* Warehouse */}
<Router>
      <Routes> 
                  <Route exact path="/warehouses" element={<> 
        <Admin/>

                  <Topbar/>
                  <div className="container">
                  <Sidebar/> 
                  < WarehouseList/> 
                  <Routes> 
                    <Route path="/warehouses" element={< WarehouseList/>}></Route>
                    <Route path="/warehouse/:id" element={< Warehouse/>}></Route>
                    <Route path="/newWarehouse" element={< NewWarehouse/>}></Route>  

                  </Routes>
                  </div></>}>
                  </Route>

                  <Route exact path="/warehouse/:id" element={<> 
                  
                    <Admin/>
                  <Topbar/>
                  <div className="container">
                  <Sidebar/> 
                  < Warehouse/>
                  </div></>}>
                  </Route>

                  <Route exact path="/newWarehouse" element={<> 
                  
                    <Admin/>
                  <Topbar/>
                  <div className="container">
                  <Sidebar/> 
                  < NewWarehouse/>
                  </div></>}>
                  </Route>

                 
      </Routes>
 </Router>

{/*product */}
 <Router>
      <Routes> 
                  <Route exact path="/products" element={<> 
                    <Admin/>
                  <Topbar/>
                  <div className="container">
                  <Sidebar/> 
                  < ProductList/>
                  <Routes> 
                     <Route path="/products" element={< ProductList/>}></Route>
                     <Route path="/product/:id" element={<Product/>}></Route>
                     <Route path="/newProduct" element={< NewProduct/>}></Route>  
                  </Routes>
                  </div></>}>
                  </Route>

                  <Route exact path="/product/:id" element={<> 
                  
                    <Admin/>
                  <Topbar/>
                  <div className="container">
                  <Sidebar/> 
                  < Product/>
                  </div></>}>
                  </Route>

                  <Route exact path="/newProduct" element={<> 
                  
                    <Admin/>
                  <Topbar/>
                  <div className="container">
                  <Sidebar/> 
                  < NewProduct/>
                  </div></>}>
                  </Route>
      </Routes>
 </Router>
 {/*email */}
 <Router >
      <Routes> 
        <Route exact path="/mails" element={<> 
          <Admin/>

        <Topbar/>
        <div className="container">
        <Sidebar/> 
        < Mail/>
       <Routes>
        <Route path="/mails" element={< Mail/>}></Route>
        </Routes>
       </div>
     </>}>
     </Route>
     </Routes>
</Router>

{/*report */}
<Router >
      <Routes> 
        <Route exact path="/reports" element={<> 
          <Admin/>

        <Topbar/>
        <div className="container">
        <Sidebar/> 
        <Report/>
       <Routes>
        <Route path="/reports" element={<Report/>}></Route>
        </Routes>
       </div>
     </>}>
     </Route>
     </Routes>
</Router>


{/*supervisor */}
<Router >
{/* element:<Guest/>, */}
      <Routes> <Route exact path="/supervisor"  element={<> 
        <Guest/>
      <Topbar/>
     <div className="container">
     <UserSidebar/>
     <Supervisor/>
     <Routes>
      <Route exact path="/supervisor" element={<Supervisor/>}></Route>
      </Routes>
       </div>
     </>}>
     </Route></Routes>
     </Router>

 <Router>
     <Routes> <Route exact path="/requests" element={<> 
      <Guest/>

      <Topbar/>
     <div className="container">
     <UserSidebar/>
     <Requests/>
     <Routes>
      <Route exact path="/requests" element={<Requests/>}></Route>
      </Routes>
       </div>
     </>}>
     </Route></Routes>
</Router>
   

<Router>
     <Routes> <Route exact path="/sendEmail" element={<> 
      <Guest/>
      {/* <Status/> */}
      <Topbar/>
     <div className="container">
     <UserSidebar/>
     <SendEmail/>
     <Routes>
      <Route exact path="/sendEmail" element={<SendEmail/>}></Route>
      </Routes>
       </div>
     </>}>
     </Route></Routes>
</Router>   
    </>

  );
}

export default App;
