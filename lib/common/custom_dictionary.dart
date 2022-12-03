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
        return "ich bin mehmet. ich entwickle desktop-apps, cli-tools, backend-services.";
      case "tr":
        return "ben mehmet. masaüstü uygulamalari, cli araclari, backend servisleri gelistiriyorum.";
      default:
        return "i'm mehmet. i make desktop apps, cli tools, backend services.";
    }
  }

  static List<String> getLocationTexts(String lang) {
    switch (lang) {
      case "de":
        return ["berlin, deutschland", "bursa, türkei"];
      case "tr":
        return ["berlin, almanya", "bursa, türkiye"];
      default:
        return ["berlin, germany", "bursa, turkey"];
    }
  }
}
