import React from "react";

type Props = {};

const AboutMe = (props: Props) => {
  return (
    <section className="flex-1 border-2  border-red-600 flex items-start justify-center flex-col p-8 rounded-lg  hover:bg-white hover:text-black duration-300">
      <div className="border-b-2 border-red-600">
        <h1 className="self-center font-bold text-2xl">About Me</h1>
      </div>
      <br />
      <div className="text-xl">
        <p>Hi, I{"'"}m Mehmet 👋!</p>
        <p>I am a computer engineer 🖥️.</p>
        <br />
        <p>
          Since 2018, I have been working as a software developer - mostly as a
          web developer 🌐.
        </p>
        <br />
        <p>
          I have worked with international teams in various different industries
          and projects 🌎.
        </p>
        <br />
        <p>
          A few of the industries I worked at are Automotive 🏎️, Finance 🏦 and
          Manufacturing 🏭.
        </p>
        <br />
        <p>
          Currently, I am working at{" "}
          <a
            className="underline hover:text-red-500 underline-offset-8"
            href="https://dgnsoftware.com"
            target="_blank"
          >
            my own company
          </a>
          .
        </p>
      </div>
      <a
        href="https://dgnsoftware.com"
        target="_blank"
        className="self-center animate-bounce mt-12 p-4 text-2xl text-white hover:text-white bg-red-600 rounded-md"
      >
        Check out my work!
      </a>
    </section>
  );
};

export default AboutMe;
