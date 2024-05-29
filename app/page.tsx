import Header from "./components/Header";
import Footer from "./components/Footer";
import Main from "./components/Main";

export default function Home() {
  return (
    <main className="flex flex-col min-h-screen duration-300 select-none">
      <Header />
      <Main />
      <Footer />
    </main>
  );
}
