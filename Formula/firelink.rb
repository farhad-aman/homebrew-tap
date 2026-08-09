class Firelink < Formula
  include Language::Python::Virtualenv

  desc "Terminal download manager over aria2c"
  homepage "https://github.com/farhad-aman/firelink"
  url "https://github.com/farhad-aman/firelink/archive/refs/tags/v0.2.0-rc1.tar.gz"
  sha256 "8b126a73c2464926e434f46977711b234e0e1f29b2f6e002422ef3e3252654c9"
  license "MIT"

  depends_on "aria2"
  depends_on "ffmpeg"
  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dl --version")
  end
end
