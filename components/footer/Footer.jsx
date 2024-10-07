import React from "react";

const Footer = () => {
  const links = [
    {
      id: 1,
      title: "Links",
      column: "col-lg-2 col-md-3 col-sm-6 mb-30",
      items: [
        { label: "Home", url: "/" },
      { label: "About us", url: "/" },
      { label: "Service", url: "/" },
      { label: "Blog", url: "/" },
      ],
    },
    {
      id: 2,
      title: "Services",
      column: "col-lg-3 col-md-4 col-sm-6 mb-30",
      items: [
        { label: "Item Support", url: "/" },
        { label: "Forum", url: "/" },
        { label: "Report Abuse", url: "/" },
        { label: "Live", url: "/" },
      ],
    },
  ];

  const socialIcons = [
    {
      iconClass: "fab fa-facebook-f",
      link: "https://www.facebook.com/bridgeuk",
    },
    {
      iconClass: "fab fa-twitter",
      link: "https://x.com/bridgeintedu",
    },
    {
      iconClass: "fab fa-linkedin-in",
      link: "https://jo.linkedin.com/company/bridge-international-for-academic-services-jordan",
    },
  ];

  return (
    <>
      {links.map((link) => (
        <div className={link.column} key={link.id}>
          <h5 className="footer-title text-white fw-500">{link.title}</h5>
          <ul className="footer-nav-link style-none">
            {link.items.map((item, i) => (
              <li key={i}>
                <a href={item.href}>{item.label}</a>
              </li>
            ))}
          </ul>
        </div>
      ))}

      <div className="col-xl-3 col-lg-4 col-md-5 mb-30">
        <h5 className="footer-title text-white fw-500">Address</h5>
        <p className="text-white opacity-75 mb-35">
        Amman, Jordan, 33 Zahran Street 
        , between the 7th and 8th Circles 
        within the Al Husseini complex on the 8th floor , Office No. 
        </p>
        <ul className="d-flex social-icon style-none">
          {socialIcons.map((icon, index) => (
            <li key={index}>
              <a href={icon.link} target="_blank" rel="noopener noreferrer">
                <i className={icon.iconClass} />
              </a>
            </li>
          ))}
        </ul>
      </div>
    </>
  );
};

export default Footer;
