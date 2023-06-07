import React from "react";
import Image from "next/image";
import Link from "next/link";
import SlideUp from "./SlideUp";
import { BsGithub, BsArrowUpRightSquare } from "react-icons/bs";

const projects = [
  {
    name: "PollingApp",
    description:
      "Java based web app that allows users to create and vote on polls.",
    image:
      "https://github.com/mehmet-f-dogan/polling-app/blob/master/screenshots/index.jpg?raw=true",
    github: "https://github.com/mehmet-f-dogan/polling-app",
  },
  {
    name: "ReactDocument",
    description: "GPT-3 powered code documentation tool.",
    image:
      "https://github.com/mehmet-f-dogan/react-document/blob/master/public/ss.jpg?raw=true",
    github: "https://github.com/mehmet-f-dogan/react-document",
    link: "https://portfolio-react-document.mehmetfd.dev/",
  },
  {
    name: "ReactFacebook",
    description: "Facebook clone built with React, and Firebase.",
    image:
      "https://github.com/mehmet-f-dogan/react-facebook/blob/master/public/ss.jpg?raw=true",
    github: "https://github.com/mehmet-f-dogan/react-facebook",
    link: "https://portfolio-react-facebook.mehmetfd.dev/",
  },
  {
    name: "NextAudio",
    description: "E-commerce website for headphones built with Next.js.",
    image:
      "https://github.com/mehmet-f-dogan/next-audio/blob/master/screenshots/index.jpg?raw=true",
    github: "https://github.com/mehmet-f-dogan/next-audio",
    link: "https://portfolio-next-audio.mehmetfd.dev/",
  },
  {
    name: "ReactFood",
    description: "Recipe search app built with React",
    image:
      "https://github.com/mehmet-f-dogan/react-food/blob/master/screenshots/index.jpg?raw=true",
    github: "https://github.com/mehmet-f-dogan/react-food",
    link: "https://portfolio-react-food.mehmetfd.dev/",
  },
];

const ProjectsSection = () => {
  return (
    <section id="projects">
      <h1 className="my-10 text-center font-bold text-4xl">
        Projects
        <hr className="w-6 h-1 mx-auto my-4 bg-teal-500 border-0 rounded"></hr>
      </h1>

      <div className="flex flex-col space-y-28">
        {projects.map((project, idx) => {
          return (
            <div key={idx}>
              <SlideUp offset="-300px 0px -300px 0px">
                <div className="flex flex-col  animate-slideUpCubiBezier animation-delay-2 md:flex-row md:space-x-12">
                  <div className=" md:w-1/2">                   
                    <Image
                      src={project.image}
                      alt=""
                      width={1000}
                      height={1000}
                      className="rounded-xl shadow-xl hover:opacity-70"
                    />                    
                  </div>
                  <div className="mt-8 md:w-1/2">
                    <h1 className="text-4xl text-teal-500 font-bold mb-6">
                      {project.name}
                    </h1>
                    <p className="text-xl leading-7 mb-4 text-neutral-600 dark:text-neutral-400">
                      {project.description}
                    </p>
                    <div className="flex flex-row align-bottom space-x-4">
                      <Link href={project.github} target="_blank">
                        <BsGithub
                          size={30}
                          className="hover:-translate-y-1 transition-transform cursor-pointer"
                        />
                      </Link>
                      { project.link &&
                      <Link href={project.link!} target="_blank">
                        <BsArrowUpRightSquare
                          size={30}
                          className="hover:-translate-y-1 transition-transform cursor-pointer"
                        />
                      </Link>
                      }
                    </div>
                  </div>
                </div>
              </SlideUp>
            </div>
          );
        })}
      </div>
    </section>
  );
};

export default ProjectsSection;
