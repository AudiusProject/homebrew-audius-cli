class Audius < Formula
  include Language::Python::Virtualenv

  desc "Play music from Audius on your terminal"
  homepage "https://github.com/AudiusProject/audius-cli"
  url "https://github.com/AudiusProject/audius-cli/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "1a0d37984a604026d045321cf9501db94794d2996eb4bc4ca3fd3343a74d4af8"
  license "MIT"

  depends_on "python@3.9"

  resource "certifi" do
    url "https://pypi.python.org/packages/source/c/certifi/certifi-2021.10.8.tar.gz"
    sha256 "78884e7c1d4b00ce3cea67b44566851c4343c120abd683433ce934a68ea58872"
  end

  resource "charset-normalizer" do
    url "https://pypi.python.org/packages/source/c/charset-normalizer/charset-normalizer-2.0.9.tar.gz"
    sha256 "b0b883e8e874edfdece9c28f314e3dd5badf067342e42fb162203335ae61aa2c"
  end

  resource "click" do
    url "https://pypi.python.org/packages/source/c/click/click-8.0.3.tar.gz"
    sha256 "410e932b050f5eed773c4cda94de75971c89cdb3155a72a0831139a79e5ecb5b"
  end

  resource "idna" do
    url "https://pypi.python.org/packages/source/i/idna/idna-3.3.tar.gz"
    sha256 "9d643ff0a55b762d5cdb124b8eaa99c66322e2157b69160bc32796e824360e6d"
  end

  resource "pathspec" do
    url "https://pypi.python.org/packages/source/p/pathspec/pathspec-0.9.0.tar.gz"
    sha256 "e564499435a2673d586f6b2130bb5b95f04a3ba06f81b8f895b651a3c76aabb1"
  end

  resource "py-cui" do
    url "https://github.com/jwlodek/py_cui/archive/refs/tags/v0.1.4.tar.gz"
    sha256 "9d7ebac19fde15249442d141ea42e0b150cd296547d8bb0646d84f6031cc72d8"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/source/r/requests/requests-2.26.0.tar.gz"
    sha256 "b8aa58f8cf793ffd8782d3d8cb19e66ef36f7aba4353eec859e74678b01b07a7"
  end

  resource "tomli" do
    url "https://pypi.python.org/packages/source/t/tomli/tomli-1.2.3.tar.gz"
    sha256 "05b6166bff487dc068d322585c7ea4ef78deed501cc124060e0f238e89a9231f"
  end

  resource "urllib3" do
    url "https://pypi.python.org/packages/source/u/urllib3/urllib3-1.26.7.tar.gz"
    sha256 "4987c65554f7a2dbf30c18fd48778ef124af6fab771a377103da0585e2336ece"
  end

  def install
    virtualenv_install_with_resources
  end
end
