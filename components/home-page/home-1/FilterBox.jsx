"use client";

import { useState } from "react";

const FilterBox = () => {
  const [formData, setFormData] = useState({
    property: "",
    market: "",
    price: "",
  });

  const [disabledDropdowns, setDisabledDropdowns] = useState({
    property: false,
    market: false,
    price: false,
  });

  const handleInputChange = (event) => {
    const { name, value } = event.target;
    
    setFormData((prevFormData) => ({
      ...prevFormData,
      [name]: value,
    }));

    // Logic to disable the other dropdowns
    if (value !== "") {
      setDisabledDropdowns({
        property: name !== "property",
        market: name !== "market",
        price: name !== "price",
      });
    } else {
      // Reset the dropdowns if no value is selected
      setDisabledDropdowns({
        property: false,
        market: false,
        price: false,
      });
    }
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    console.log("Form submitted:", formData);
  };

  const formOptions = {
    property: {
      title: "Country",
      options: [
        { value: "", display: "Select Country" }, // default option
        { value: "buy-portfolio", display: "Australia" },
        { value: "condo", display: "Canada" },
        { value: "apartments", display: "Ireland" },
        { value: "villa", display: "United Kingdom" },
      ],
    },
    market: {
      title: "University",
      options: [
        { value: "", display: "Select University" }, // default option
        { value: "new-york", display: "UWA College" },
        { value: "new-jersey", display: "The University of Adelaide " },
        { value: "pennsylvania", display: "ALTEC College" },
        { value: "south-carolina", display: "South Carolina" },
      ],
    },
   
  };

  return (
    <form onSubmit={handleSubmit} className="search-area">
      <div className="row gx-0 align-items-center">
        {Object.entries(formOptions).map(([key, { title, options }]) => (
          <div className="col-lg-3" key={key}>
            <div className="input-block">
              
              <select
                className="nice-select"
                name={key}
                value={formData[key]}
                onChange={handleInputChange}
                disabled={disabledDropdowns[key]} // Disable the dropdown based on state
              >
                {options.map(({ value, display }) => (
                  <option key={value} value={value} data-display={display}>
                    {display}
                  </option>
                ))}
              </select>
            </div>
          </div>
        ))}
        <div className="col-lg-4">
          <div className="input-block">
            <button type="submit" className="w-100 fw-500 tran3s">
              Search Now
            </button>
          </div>
        </div>
      </div>
    </form>
  );
};

export default FilterBox;
