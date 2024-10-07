import Link from "next/link";

const links = [
  {
    title: "Privacy & Terms.",
    href: "/faq",
  },
  {
    title: "Contact Us",
    href: "/contact/contact",
  },
];

 const icons = [
    {
      icon: "fab fa-facebook-f",
      href: "https://www.facebook.com/bridgeuk",
    },
    {
      icon: "fab fa-twitter",
      href: "https://x.com/bridgeintedu",
    },
    {
      icon: "fab fa-linkedin-in",
      href: "https://jo.linkedin.com/company/bridge-international-for-academic-services-jordan",
    },
  ];

const LinkItem = ({ title, href }) => {
  return (
    <li>
      <Link href={href}>{title}</Link>
    </li>
  );
};

const IconItem = ({ icon, href }) => {
  return (
    <li>
      <Link href={href} target="_blank" rel="noopener noreferrer">
        <i className={icon} />
      </Link>
    </li>
  );
};

const Footer = () => {
  return (
    <div className="bottom-footer lg-pb-20 position-relative">
      <div className="container">
        <div className="row">
          <div className="col-lg-4 order-lg-0 mt-15">
            <ul className="d-flex justify-content-center justify-content-lg-start footer-nav style-none">
              {links.map((link, index) => (
                <LinkItem key={index} title={link.title} href={link.href} />
              ))}
            </ul>
          </div>
          <div className="col-lg-4 order-lg-2 mt-15">
            <ul className="d-flex justify-content-center justify-content-lg-end social-icon style-none">
              {icons.map((icon, index) => (
                <IconItem key={index} icon={icon.icon} href={icon.href} />
              ))}
            </ul>
          </div>
          <div className="col-lg-4 order-lg-1 mt-15">
            <p className="copyright text-center m0">
              Copyright © {new Date().getFullYear()}{" "}
              <a
                style={{ color: "inherit" }}
                href="https://Bridge.jo"
                target="_blank"
                rel="noopener noreferrer"
              >
                Bridge
              </a>
             
            </p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Footer;
