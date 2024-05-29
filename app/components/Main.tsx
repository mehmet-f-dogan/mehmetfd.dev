import React from "react";
import AboutMe from "./AboutMe";
import Technologies from "./Technologies";
import Experience from "./Experience";

type Props = {};

const Main = (props: Props) => {
  return (
    <main className="flex-1  flex flex-col  items-stretch justify-center p-8 space-y-8 lg:flex-row lg:space-y-0 lg:space-x-8">
      <AboutMe />
      <Technologies />
      <Experience />
    </main>
  );
};

export default Main;
