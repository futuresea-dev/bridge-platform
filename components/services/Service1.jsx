"use client"; // This line makes the component a Client Component

import { useEffect, useState } from "react";
import Link from "next/link";

const Service1 = () => {
  const [services, setServices] = useState([]);

  useEffect(() => {
    const fetchServices = async () => {
      try {
        const res = await fetch("/api/getData");
        const data = await res.json();
        console.log("Fetched data:", data);
        
        if (data && Array.isArray(data.data)) {
          setServices(data.data);
          console.log("Services set:", data.data);
        } else {
          console.error("Invalid data format:", data);
        }
      } catch (error) {
        console.error("Error fetching services:", error);
      }
    };

    fetchServices();
  }, []);

  return (
    <>
      {services.length > 0 ? (
        services.map((service) => (
          <div className="col-xl-4 col-sm-6" key={service.id}> {/* Ensure to use service.id here */}
            <div className="card-style-sixteen tran3s text-center position-relative mt-30">
              <div className="image">
                <img
                  src={"https://admin.bridge.jo/uploads/" + service.image}
                  alt={service.name}
                  className="lazy-img m-auto"
                  style={{ maxWidth: '150px', maxHeight: '150px', width: 'auto', height: '150px' }}
                />
              </div>
              <h4 className="tx-dark">{service.service_name || "No name available"}</h4>
              <Link
                href={`/pages-menu/service-details?id=${service.id}`} // Send the service ID as a query parameter
                className="read-more rounded-circle text-start tran3s"
              >
                <i className="bi bi-arrow-right" />
              </Link>
            </div>
          </div>
        ))
      ) : (
        <p>No services available.</p>
      )}
    </>
  );
};

export default Service1;
