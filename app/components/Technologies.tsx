import React from "react";
import { BiLogoSpringBoot } from "react-icons/bi";
import { FaAws, FaDocker, FaGit, FaJava, FaPython } from "react-icons/fa";
import { FaGolang } from "react-icons/fa6";
import { IoLogoJavascript } from "react-icons/io5";
import { RiAlibabaCloudFill, RiNextjsFill } from "react-icons/ri";
import { SiGooglecloud, SiReact, SiTypescript } from "react-icons/si";

type TProps = {
  children?: React.ReactNode;
  text: string;
};

const Technology = (props: TProps) => {
  return (
    <div className="flex flex-row items-center justify-center space-x-2">
      <div className="text-3xl">{props.children}</div>
      <p className="font-bold">{props.text}</p>
    </div>
  );
};

type Props = {};

const Technologies = (props: Props) => {
  return (
    <section className="flex-1 border-2  border-red-600 flex items-start justify-center flex-col p-8 rounded-lg  hover:bg-white hover:text-black duration-300">
      <div className="border-b-2 border-red-600">
        <h1 className="self-center font-bold text-2xl">Technologies</h1>
      </div>
      <br />
      <div>
        <h2 className="text-xl underline underline-offset-4 my-2">Frontend</h2>
        <div className="flex flex-col xl:flex-row space-x-4">
          <Technology text="Next.js">
            <RiNextjsFill />
          </Technology>
          <Technology text="React">
            <SiReact />
          </Technology>
          <Technology text="Javascript">
            <IoLogoJavascript />
          </Technology>
          <Technology text="TypeScript">
            <SiTypescript className="text-2xl" />
          </Technology>
        </div>
      </div>
      <div>
        <h2 className="text-xl underline underline-offset-4 my-2">Backend</h2>
        <div className="flex flex-col xl:flex-row items-center space-x-4">
          <Technology text="Java">
            <FaJava />
          </Technology>
          <Technology text="Go">
            <FaGolang />
          </Technology>
          <Technology text="Python">
            <FaPython />
          </Technology>
          <Technology text="Spring">
            <BiLogoSpringBoot />
          </Technology>
          <Technology text="Javascript">
            <IoLogoJavascript />
          </Technology>
          <Technology text="TypeScript">
            <SiTypescript className="text-2xl" />
          </Technology>
        </div>
      </div>
      <div>
        <h2 className="text-xl underline underline-offset-4 my-2">DevOps</h2>
        <div className="flex flex-col xl:flex-row space-x-4">
          <Technology text="Git">
            <FaGit />
          </Technology>
          <Technology text="Docker">
            <FaDocker />
          </Technology>
        </div>
      </div>
      <div>
        <h2 className="text-xl underline underline-offset-4 my-2">Cloud</h2>
        <div className="flex flex-col xl:flex-row space-x-4">
          <Technology text="AWS">
            <FaAws />
          </Technology>
          <Technology text="Alibaba">
            <RiAlibabaCloudFill />
          </Technology>
          <Technology text="Google Cloud">
            <SiGooglecloud />
          </Technology>
        </div>
      </div>
    </section>
  );
};

export default Technologies;
