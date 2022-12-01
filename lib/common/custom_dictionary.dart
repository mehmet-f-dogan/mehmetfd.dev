class CustomDictionary {
  static String getWelcomeHeader(String lang) {
    switch (lang) {
      case "de":
        return "moin!";
      case "tr":
        return "selam!";
      default:
        return "hi!";
    }
  }

  static String getWelcomeText(String lang) {
    switch (lang) {
      case "de":
        return "ich bin mehmet. ich entwickle desktop-apps,\ncli-tools, backend-services.";
      case "tr":
        return "ben mehmet. masaüstü uygulamalari, cli araclari,\nbackend servisleri gelistiriyorum.";
      default:
        return "i'm mehmet. i make desktop apps, \ncli tools, backend services.";
    }
  }

  static List<String> getNavBarTexts(String lang) {
    switch (lang) {
      case "de":
        return ["uber mich", "kontakt"];
      case "tr":
        return ["hakkimda", "iletisim"];
      default:
        return ["about", "contact"];
    }
  }

  static List<String> getContactTexts(String lang) {
    switch (lang) {
      case "de":
        return [
          "e-mail",
          "theme",
          "ihre nachtricht",
          "bitte eine e-Mail eingeben",
          "bitte geben sie eine gültige e-mail ein"
        ];
      case "tr":
        return [
          "eposta",
          "konu",
          "mesajiniz",
          "lutfen bir eposta adresi giriniz",
          "lutfen gecerli bir eposta adresi giriniz"
        ];
      default:
        return [
          "email",
          "about",
          "your message",
          "please enter an email",
          "please enter a valid email"
        ];
    }
  }
}
