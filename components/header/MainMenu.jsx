"use client";

import Link from "next/link";
import {
  menuItems,
  pagesItems,
  portfolioItems,
  blogItems,
  contactItems,
} from "@/data/menu";

import Image from "next/image";
import { usePathname } from "next/navigation";

const MainMenu = () => {
  const pathname = usePathname();

  const isActive = (link) => {
    return pathname.replace(/\/\d+$/, "") === link.replace(/\/\d+$/, "");
  };

  return (
    <nav className="navbar navbar-expand-lg order-lg-2">
      <button
        className="navbar-toggler d-block d-lg-none"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarNav"
        aria-controls="navbarNav"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span />
      </button>
      {/* End mobile collapse menu */}

      <div className="collapse navbar-collapse" id="navbarNav">
        <ul className="navbar-nav">
          <li className="d-block d-lg-none">
            <div className="logo">
              <Link href="/" className="d-block">
                <Image
                  src="/images/logo/bridge-logo.png"
                  alt="logo"
                  width={95}
                  height={30}
                />
              </Link>
            </div>
          </li>
          {/* End li */}

          <li className="nav-item">
  <a
    className={isActive("/") ? "nav-link active-menu" : "nav-link"}
    href="/"
  >
    Home
  </a>
</li>
          {/* End li (home mega menu) */}

          <li className="nav-item">
  <a
    className={isActive("/pages-menu/branches") ? "nav-link active-menu" : "nav-link"}
    href="/pages-menu/branches"
  >
    Branches
  </a>
</li>
          {/* End li (pages) */}

          <li className="nav-item">
  <a
    className={isActive("/pages-menu/services") ? "nav-link active-menu" : "nav-link"}
    href="/pages-menu/services"
  >
    Services
  </a>
</li>

          {/* End li (portfolio) */}

          <li className="nav-item">
  <a
    className={isActive("/pages-menu/about-us") ? "nav-link active-menu" : "nav-link"}
    href="/pages-menu/about-us"
  >
    About us
  </a>
</li>
          {/* End li (blog) */}

          <li className="nav-item">
  <a
    className={isActive("/contact/contact") ? "nav-link active-menu" : "nav-link"}
    href="/contact/contact"
  >
    Contact us
  </a>
</li>
          {/* End li (contact) */}
          <li className="nav-item">
  <a
    className={isActive("/pages-menu/faq") ? "nav-link active-menu" : "nav-link"}
    href="/pages-menu/faq"
  >
   FAQs
  </a>
</li>
          {/* End li (contact) */}
        </ul>
        {/* End ul */}

        {/* Mobile Content */}
        <div className="mobile-content d-block d-lg-none">
          <div className="d-flex flex-column align-items-center justify-content-center mt-70">
            <Link
              href="/contact/contact"
              className="btn-twentyOne fw-500 tran3s"
            >
              Contact us
            </Link>
          </div>
        </div>
        {/* /.mobile-content */}
      </div>
    </nav>
  );
};

export default MainMenu;
