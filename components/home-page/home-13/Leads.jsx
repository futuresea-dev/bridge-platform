const leadItems = [
  { image: "/images/assets/bridge.jpg", text: "Bridge Omman" },
  { image: "/images/assets/bridge.jpg", text: "Bridge Qatar" },
  { image: "/images/assets/bridge.jpg", text: "Bridge Jordan" },
  { image: "/images/assets/adoum.jpg", text: "Adoum" },

];

const Leads = () => {
  return (
    <>
      {leadItems.map((item, index) => (
        <div className="col-md-4" key={index}>
          <div
            className="card-style-fourteen text-center mt-30"
            data-aos="fade-up"
            data-aos-delay={index * 100}
          >
            <div className="icon">
              <img
                src={item.image} // Change this from item.icon to item.image
                alt="icon shape"
                className="lazy-img m-auto"
              />
            </div>
            <p className="text-uppercase fs-10 mt-0 lg-mt-10">{item.text}</p>
          </div>
        </div>
      ))}
    </>
  );
};

export default Leads;
