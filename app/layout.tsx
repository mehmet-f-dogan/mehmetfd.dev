import type { Metadata } from "next";
import { Raleway } from "next/font/google";
import { Analytics } from "@vercel/analytics/react";
import "./globals.css";

const raleway = Raleway({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "Mehmet F. Dogan",
  description: "Profile website of Mehmet Furkan Dogan",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <Analytics />
      <body className={raleway.className}>{children}</body>
    </html>
  );
}
