class Isonav < Formula
  include Language::Python::Virtualenv

  desc "Command line nuclear reactions calculator"
  homepage "https://github.com/ffavela/isonav"
  url "https://files.pythonhosted.org/packages/e6/cb/833f27528839b607fcfc21f71e5bd6aa73f48dc5f50194a637ad6ab513d9/isonav-1.7.1.tar.gz"
  sha256 "f39ab2c0c70095cd71938c18e3015b804916a6d504737e54954db04840e03858"
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
