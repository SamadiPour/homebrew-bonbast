class Bonbast < Formula
  include Language::Python::Virtualenv
  desc "A command-line tool for getting currencies exchange rates for IRR from Bonbast.com"
  homepage "https://github.com/SamadiPour/bonbast"
  version "0.5.3"
  url "https://files.pythonhosted.org/packages/source/b/bonbast/bonbast-0.5.3.tar.gz"
  sha256 "70cfce740b369dfa3a92b6cbcc6dbde0150c833f6e01b2a56de2c65a645f832f"
  license "MIT"
  depends_on "python@3.9"

  def install
  virtualenv_install_with_resources
  end

  test do
      system bin / "bonbast", "--version"
  end
end