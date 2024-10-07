import Link from "next/link";
import DefaultFooter from "@/components/footer/DefaultFooter";
import DefaulHeader from "@/components/header/DefaulHeader";
import Leads from "@/components/home-page/home-13/Leads";

export const metadata = {
  title: "Branches  ",
};
const ServiceV3 = () => {
  return (
    <>
      {/* <!-- 
      =============================================
      Theme Default Menu
      ============================================== 	
      --> */}
      <DefaulHeader />

      {/* 
        =============================================
        Feature Section Thirty One
        ============================================== 
        */}
      <div className="fancy-feature-thirtyOne position-relative bg-white zn2 pt-225 pb-140 lg-pt-200 lg-pb-50">
        <div className="container">
          <div className="row">
            <div className="col-xl-8 col-lg-9 m-auto">
              <div
                className="title-style-ten text-center pb-40 lg-pb-20"
                data-aos="fade-up"
              >
                <h2 className="main-title font-recoleta fw-normal tx-dark">
                  
                  <span className="position-relative">
                    {" "}
                    Branches
                    <img src="/images/shape/shape_122.svg" alt="icon shape" />
                  </span>
                  
                </h2>
                <p className="fs-20 mt-20">
                 Our Branches
                </p>
              </div>
              {/* /.title-style-ten */}
            </div>
          </div>
          {/* End .row */}

          <div className="row">
            <Leads />
          </div>
        </div>
        {/* /.container */}

        <img
          src="/images/shape/shape_124.svg"
          alt="icon shape"
          className="lazy-img shapes shape-one"
        />
        <img
          src="/images/shape/shape_125.svg"
          alt="icon shape"
          className="lazy-img shapes shape-two"
        />
      </div>
      {/* /.fancy-feature-thirtyOne */}

      {/* 
			=============================================
				Feature Section Thirty Eight
			============================================== 
			*/}
     
        <img
          src="/images/shape/shape_130.svg"
          alt="shape"
          className="lazy-img shapes shape-one"
        />
        <img
          src="/images/shape/shape_131.svg"
          alt="shape"
          className="lazy-img shapes shape-two"
        />
      {/* /.feedback-section-ten */}

      {/*
			=====================================================
				Fancy Short Banner Twelve
			=====================================================
			*/}
    
      {/* /.fancy-short-banner-twelve */}

      {/*
			=====================================================
				Footer
			=====================================================
			*/}
      
        {/* /.bg-wrapper */}

        <DefaultFooter />
        <div className="shapes shape-one" />
        <img
          src="/images/shape/shape_134.svg"
          alt="shape"
          className="lazy-img shapes shape-two"
        />
     
      {/* /.footer-style-nine */}
    </>
  );
};

export default ServiceV3;
