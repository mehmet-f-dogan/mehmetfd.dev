import React from "react";

type Props = {};

const Header = (props: Props) => {
  return (
    <div className="min-h-20 max-h-40 flex justify-center items-center bg-white">
      <h1
        className={
          "text-xl font-extrabold select-none text-black duration-[750ms] hover:-rotate-[1deg] hover:text-red-600 hover:text-2xl"
        }
      >
        mehmet furkan dogan
      </h1>
    </div>
  );
};

export default Header;
