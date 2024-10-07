import Image from "next/image";

const Feature = () => {
  const features = [
    {
      background: "#EEFBFA",
      title: (
        <>
          Select a Service
        </>
      ),
      description: "100% Reliable",
      icon: "images/icon/no_1.svg",
      width: "169",
      height: "165",
      delay: "100",
    },
    {
      background: "#FBF1FF",
      title: (
        <>
          Complete the Form
        </>
      ),
      width: "202",
      height: "170",
      description: "Claim Support",
      icon: "images/icon/no_2.svg",
      delay: "200",
    },
    {
      background: "#EEFBFA",
      title: (
        <>
          Get Assigned  <br /> a Consultant
        </>
      ),
      width: "175",
      height: "175",
      description: "Consultation",
      icon: "images/icon/no_3.svg",
      delay: "300",
    },
    {
      background: "#fffee7",
      title: (
        <>
          Receive Your Service
        </>
      ),
      width: "175",
      height: "175",
      description: "Consultation",
      icon: "images/icon/no_4.svg",
      delay: "300",
    },
  ];

  return (

    
  
    <>
      {features.map((feature, index) => (
        <div
          className="col-lg-3 col-sm-6"
          key={index}
          //data-aos="fade-up"
         // data-aos-delay={feature.delay}
        >
          <div
            className={`card-style-fifteen tran3s position-relative mt-35`}
            style={{ background: feature.background }}
          >
            <h4>{feature.title}</h4>
            <p>{feature.description}</p>
            <Image
              width={feature.width}
              height={feature.height}
              src={feature.icon}
              alt="icon"
              className="position-absolute"
            />
          </div>{" "}
          {/* /.card-style-fifteen */}
        </div>
      ))}
    </>
  );
};

export default Feature;
