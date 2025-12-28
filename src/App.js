import './App.css';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Navbar from './components/Navbar';
import Footer from './components/Footer';
import Home from './pages/Home';
import About from './pages/About';
import Services from './pages/Services';
import ServiceBuy from './pages/ServiceBuy';
import Products from './pages/Products';
import ProductBuy from './pages/ProductBuy';
import CourseBuy from './pages/CourseBuy';

function App() {
  return (
    <Router>
      <div className="App">
        <Navbar />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/about" element={<About />} />
          <Route path="/services" element={<Services />} />
          <Route path="/service-buy/:serviceId" element={<ServiceBuy />} />
          <Route path="/products" element={<Products />} />
          <Route path="/product-buy/:productId" element={<ProductBuy />} />
          <Route path="/course-buy/:courseId" element={<CourseBuy />} />
        </Routes>
        <Footer />
      </div>
    </Router>
  );
}

export default App;
