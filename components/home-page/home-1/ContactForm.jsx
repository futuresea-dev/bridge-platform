"use client";

import { useState } from "react";

const ContactForm = () => {
  const [formData, setFormData] = useState({
    firstName: "",
    lastName: "",
    email: "",
    mobileNumber: "",
    studyDestination: "",
    studyPlan: "",
    counselingMode: "",
    funding: "",
    studyLevel: "",
    additionalNotes: "",
  });

  const handleChange = (event) => {
    const { name, value } = event.target;
    setFormData((prevFormData) => ({
      ...prevFormData,
      [name]: value,
    }));
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    console.log(formData);
    // You can add your form submission logic here
  };

  return (
    
    <form onSubmit={handleSubmit}>
       <div className="fs-16 text-center mt-25">
        <span className="opacity-75"></span>{" "}
        <a href="#" className="tx-dark fw-500">
        </a>
      </div>
      <div className="messages" />
      <div className="row controls">
        <div className="col-6">
          <div className="input-group-meta form-group mb-20">
            <input
              type="text"
              placeholder="First Name*"
              name="firstName"
              value={formData.firstName}
              onChange={handleChange}
              required
            />
            <div className="help-block with-errors" />
          </div>
        </div>
        {/* End .col-6 */}

        <div className="col-6">
          <div className="input-group-meta form-group mb-20">
            <input
              type="text"
              placeholder="Last Name*"
              name="lastName"
              value={formData.lastName}
              onChange={handleChange}
              required
            />
            <div className="help-block with-errors" />
          </div>
        </div>
        {/* End .col-6 */}

        <div className="col-12">
          <div className="input-group-meta form-group mb-20">
            <input
              type="email"
              placeholder="Email Address*"
              name="email"
              value={formData.email}
              onChange={handleChange}
              required
            />
            <div className="help-block with-errors" />
          </div>
        </div>
        {/* End .col-12 */}

        <div className="col-12">
          <div className="input-group-meta form-group mb-20">
            <input
              type="text"
              placeholder="Mobile Number*"
              name="mobileNumber"
              value={formData.mobileNumber}
              onChange={handleChange}
              required
            />
            <div className="help-block with-errors" />
          </div>
        </div>
        {/* End .col-12 */}

        <div className="col-12">
          <div className="input-group-meta form-group mb-20">
            <input
              type="text"
              placeholder="Preferred Study Destination*"
              name="studyDestination"
              value={formData.studyDestination}
              onChange={handleChange}
              required
            />
            <div className="help-block with-errors" />
          </div>
        </div>
        {/* End .col-12 */}

        <div className="col-12">
          <div className="input-group-meta form-group mb-20">
            <input
              type="text"
              placeholder="When Do You Plan to Study?"
              name="studyPlan"
              value={formData.studyPlan}
              onChange={handleChange}
              required
            />
            <div className="help-block with-errors" />
          </div>
        </div>
        {/* End .col-12 */}

        <div className="col-12">
          <div className="input-group-meta form-group mb-20">
            <input
              type="text"
              placeholder="Preferred Mode of Counseling"
              name="counselingMode"
              value={formData.counselingMode}
              onChange={handleChange}
              required
            />
            <div className="help-block with-errors" />
          </div>
        </div>
        {/* End .col-12 */}

        <div className="col-12">
          <div className="input-group-meta form-group mb-20">
            <input
              type="text"
              placeholder="How Would You Fund Your Education?"
              name="funding"
              value={formData.funding}
              onChange={handleChange}
              required
            />
            <div className="help-block with-errors" />
          </div>
        </div>
        {/* End .col-12 */}

        <div className="col-12">
          <div className="input-group-meta form-group mb-20">
            <input
              type="text"
              placeholder="Preferred Study Level*"
              name="studyLevel"
              value={formData.studyLevel}
              onChange={handleChange}
              required
            />
            <div className="help-block with-errors" />
          </div>
        </div>
        {/* End .col-12 */}

        <div className="col-12">
          <div className="input-group-meta form-group mb-20">
            <textarea
              placeholder="Additional Notes"
              name="additionalNotes"
              value={formData.additionalNotes}
              onChange={handleChange}
            />
            <div className="help-block with-errors" />
          </div>
        </div>
        {/* End .col-12 */}

        <div className="col-12">
          <button
            type="submit"
            className="btn-twentyTwo w-100 fw-500 tran3s text-uppercase"
          >
            SEND MESSAGE
          </button>
        </div>
        {/* End .col-12 */}
      </div>
      {/* End .row */}

      <div className="fs-16 text-center mt-25">
        <span className="opacity-75"></span>{" "}
        <a href="#" className="tx-dark fw-500">
        </a>
      </div>
    </form>
  );
};

export default ContactForm;
