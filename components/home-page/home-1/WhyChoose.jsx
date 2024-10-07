const accordionItems = [
  {
    id: 1,
    icon: "/images/icon/icon_108.svg",
    title: "Global Partnerships",
    content:
      "We partner with over 600 universities and colleges worldwide, and our network is continually expanding to offer even more educational opportunities",
  },
  {
    id: 2,
    icon: "/images/icon/icon_109.svg",
    title: "Proven Success",
    content:
      "Over 60,000 students successfully guided to top universities worldwide across various levels of study, including Foundation, Bachelor’s, Master’s, and PhD programs",
  },
  {
    id: 3,
    icon: "/images/icon/icon_110.svg",
    title: "Regional Presence",
    content:
      "Offices in Jordan, Bahrain, Oman, Kuwait, Qatar, and Iraq, providing local support with a global reach, ensuring you get the guidance you need at every stage of your academic journey",
  },
];

const WhyChoose = () => {
  return (
    <div className="accordion accordion-style-five md-mb-70" id="accordionOne">
      {accordionItems.map((item) => (
        <div className="accordion-item" key={item.id}>
          <div className="accordion-header" id={`heading${item.id}`}>
            <button
              className={`accordion-button ${item.id === 2 ? "" : "collapsed"}`}
              type="button"
              data-bs-toggle="collapse"
              data-bs-target={`#collapse${item.id}`}
              aria-expanded={item.id === 2 ? "true" : "false"}
              aria-controls={`collapse${item.id}`}
            >
              <img src={item.icon} alt="" className="me-3" /> {item.title}
            </button>
          </div>
          <div
            id={`collapse${item.id}`}
            className={`accordion-collapse collapse${
              item.id === 2 ? " show" : ""
            }`}
            aria-labelledby={`heading${item.id}`}
            data-bs-parent="#accordionOne"
          >
            <div className="accordion-body">
              <p>{item.content}</p>
            </div>
          </div>
        </div>
      ))}
    </div>
  );
};

export default WhyChoose;
