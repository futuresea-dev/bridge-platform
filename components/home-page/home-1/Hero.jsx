"use client";
import React from "react";
import FilterBox from "./FilterBox";

const Hero1 = () => {
  const options = [
    { value: 0, display: "Select insurance type.." },
    { value: 1, display: "Life Insurance" },
    { value: 2, display: "Health insurance" },
    { value: 3, display: "Property insurance" },
    { value: 4, display: "Motor insurance" },
  ];

  const handleSubmit = (event) => {
    event.preventDefault();
    // handle form submission
  };

  return (
    <div
      className="hero-banner-ten position-relative zn2"
      style={{
        backgroundImage: 'url("/images/assets/bg-7.png")', // Set your background image here
        backgroundSize: "cover", // Ensure the background covers the entire area
        backgroundPosition: "center", // Center the background image
        backgroundRepeat: "no-repeat", // Avoid repeating the image
        height: "100vh", // Set the height to cover the viewport
      }}
    >
      <div className="container">
        <div className="row">
          <div
            className="col-lg-9 col-md-10 m-auto text-center"
            data-aos="fade-up"
          >
            <h1 className="hero-heading fw-500 tx-dark">
              Let your <span>Dream</span>  Come True.
            </h1>
            <p className="text-lg tx-dark mt-45 mb-50 lg-mt-30 lg-mb-40">
            Start your study journey through us!
            </p>
            <div className="search-form-bg position-relative" data-aos="fade-up">
          <FilterBox />
          {/* /.search-area */}

        
        </div>
            {/* End form */}

            

          </div>
        </div>
      </div>
      {/* End .container */}
    </div>
  );
};

export default Hero1;
