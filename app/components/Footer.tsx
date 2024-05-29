import React from "react";
import { FaFilePdf, FaLinkedin } from "react-icons/fa";
import { MdEmail } from "react-icons/md";

type Props = {};

const Footer = (props: Props) => {
  return (
    <footer className="min-h-[100px] bg-black border-t-2 border-white select-text flex flex-col md:flex-row items-center justify-center text-2xl md:space-x-12 space-y-4 md:space-y-0 p-4">
      <a
        href="https://linkedin.com/in/mehmet-f-dogan"
        target="_blank"
        className="hover:bg-white select-none hover:text-black duration-300  flex items-center justify-center border-2 p-2 rounded-lg"
      >
        <FaLinkedin className="mr-2" />
        LinkedIn
      </a>
      <a
        href="CV.pdf"
        download={true}
        className="hover:bg-white select-none hover:text-black duration-300  flex items-center justify-center border-2 p-2 rounded-lg"
      >
        <FaFilePdf className="mr-2" />
        Resume
      </a>
      <a
        href="mailto:mehmet@mehmetfd.dev"
        className="hover:bg-white hover:text-black duration-300  flex items-center justify-center border-2 p-2 rounded-lg"
      >
        <MdEmail className="mr-2" />
        mehmet@mehmetfd.dev
      </a>
    </footer>
  );
};

export default Footer;
