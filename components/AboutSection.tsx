import React from "react";
import Image from "next/image";

const skills = [
  { skill: "Java" },
  { skill: "Javascript" },
  { skill: "Typescript" },
  { skill: "Go" },
  { skill: "Bash" },
  { skill: "HTML" },
  { skill: "CSS" },
  { skill: "Sass" },
  { skill: "Tailwind CSS" },
  { skill: "PostgreSQL" },
  { skill: "MySQL" },
  { skill: "MongoDB" },
  { skill: "Google Cloud Platform" },
  { skill: "Docker" },
  { skill: "REST" },
  { skill: "gRPC" },
  { skill: "Node.js" },
  { skill: "React" },
  { skill: "Next.js" },
  { skill: "Spring Boot" },
];

const AboutSection = () => {
  return (
    <section id="about">
      <div className="my-12 pb-12 md:pt-16 md:pb-48">
        <h1 className="text-center font-bold text-4xl">
          About Me
          <hr className="w-6 h-1 mx-auto my-4 bg-teal-500 border-0 rounded"></hr>
        </h1>

        <div className="flex flex-col space-y-10 items-stretch justify-center align-top md:space-x-10 md:space-y-0 md:p-4 md:flex-row md:text-left">
          <div className="md:w-1/2 ">
            <h1 className="text-center text-2xl font-bold mb-6 md:text-left">
              Get to know me!
            </h1>
            <p>
              Hi, my name is Mehmet and I am a{" "}
              <span className="font-bold text-teal-500">
                {"highly motivated"}
              </span>
              , and
              <span className="font-bold text-teal-500">{" driven"}</span>{" "}
              software engineer based in Las Vegas, NV. From a young age, I've
              always had a fascination with computers and solving complex
              problems. That's why I decided to pursue a career in software
              engineering.
            </p>
            <br />
            <p>
              Throughout my career, I've had the opportunity to work on some
              amazing projects, but some of my proudest achievements have been
              in the field of{" "}
              <span className="font-bold text-teal-500">{" E-Mobility"}</span>.
              I believe that technology can be used to solve some of the world's
              most pressing problems, and it's been incredibly rewarding to work
              on projects that have the potential to
              <span className="font-bold text-teal-500">
                {" help the environment"}
              </span>
              .
            </p>
            <br />
            <p>
              Outside of work, I enjoy playing
              <span className="font-bold text-teal-500">{" chess "}</span>
              and
              <span className="font-bold text-teal-500">{" poker"}</span>,
              cooking, playing bass guitar, and swimming. These hobbies keep me
              engaged and allow me to explore new interests outside of work.
            </p>
          </div>
          <div className="text-center md:w-1/2 md:text-left">
            <h1 className="text-2xl font-bold mb-6">My Stack</h1>
            <div className="flex flex-wrap flex-row justify-center z-10 md:justify-start">
              {skills.map((item, idx) => {
                return (
                  <p
                    key={idx}
                    className="bg-gray-200 px-4 py-2 mr-2 mt-2 text-gray-800 rounded font-semibold"
                  >
                    {item.skill}
                  </p>
                );
              })}
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default AboutSection;
