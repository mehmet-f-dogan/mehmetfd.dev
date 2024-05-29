import React from "react";

type Props = {};

const Experience = (props: Props) => {
  return (
    <section className="flex-1 border-2 text-xl border-red-600 flex items-start justify-center flex-col p-8 rounded-lg  hover:bg-white hover:text-black duration-300">
      <div className="border-b-2 border-red-600">
        <h1 className="self-center font-bold text-2xl">Work</h1>
      </div>
      <br />
      <ol>
        <li>🌎 DGN Software - Owner</li>
        <li>🇹🇷 DerivAsset - Senior Software Engineer</li>
        <li>🇺🇸 TAWA Supermarket - Software Consultant</li>
        <li>🇩🇪 ehotel.de - Software Consultant</li>
        <li>🇩🇪 EDAG Group - Software Engineer</li>
      </ol>
      <br />
      <div className="border-b-2 border-red-600">
        <h1 className="self-center font-bold text-2xl">Education</h1>
      </div>
      <br />
      <ol className="space-y-2">
        <li>
          🇩🇪 Deggendorf Institute of Technology <br /> MSc. in Applied Computer
          Science
        </li>
        <li>
          🇹🇷 Bilkent University <br /> BSc. in Computer Engineering
        </li>
      </ol>
    </section>
  );
};

export default Experience;
