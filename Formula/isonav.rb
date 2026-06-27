class Isonav < Formula
  include Language::Python::Virtualenv

  desc "Command line nuclear reactions calculator"
  homepage "https://github.com/ffavela/isonav"
  url "https://files.pythonhosted.org/packages/67/92/ed10223e48e5bc3de872acf44de1f1619aecab9ef0ed799557a195e48db1/isonav-1.7.2.tar.gz"
  sha256 "f0fada837e508bb71ac841c5f3e73822801cf9cbde9f2c4bab0ea3605deb8737"
  license "GPL-3.0-or-later"

  depends_on "python@3.12"

  resource "docopt" do
    url "https://files.pythonhosted.org/packages/a2/55/8f8cab2afd404cf578136ef2cc5dfb50baa1761b68c9da1fb1e4eed343c9/docopt-0.6.2.tar.gz"
    sha256 "49b3a825280bd66b3aa83585ef59c4a8c82f2c8a522dbe754a8bc8d08c85c491"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/isonav", "--version"
  end
end
