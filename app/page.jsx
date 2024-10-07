import Insurance from "./home/insurance/page";
import { NextUIProvider } from '@nextui-org/react';
import Head from 'next/head';


export const metadata = {
  title: "Bridge || Bridge International for Academic Services",
};

const MainRoot = () => {
  return (
    <>
    <Head>
      <script src='https://cdn.jsdelivr.net/npm/@revolist/revo-dropdown@latest/dist/revo-dropdown/revo-dropdown.js' />
    </Head>
    <NextUIProvider>
      <Insurance />
    </NextUIProvider>
    </>
  );
};

export default MainRoot;
