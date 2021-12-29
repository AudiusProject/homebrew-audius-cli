class Audius < Formula
    include Language::Python::Virtualenv

    desc "Terminal-based music player written in Python for the best music in the world 🎵 🎧 💻"
    homepage "https://github.com/AudiusProject/audius-cli"
    url "https://github.com/AudiusProject/audius-cli/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "4dad276ac311a0797f09c1f7980eafa588bd8317d1309d2cd8469b7a71fc54ce"
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

    resource "platformdirs" do
      url "https://pypi.python.org/packages/source/p/platformdirs/platformdirs-2.4.1.tar.gz"
      sha256 "440633ddfebcc36264232365d7840a970e75e1018d15b4327d11f91909045fda"
    end

    resource "py-cui" do
      url "https://files.pythonhosted.org/packages/8a/f1/a16cf619b53c0b7cf068daf07154a74a73a84598a1faa6f19411d47ee4b1/py_cui-0.1.4.tar.gz"
      sha256 "22ccd3e7c2d1e647ca9cca7756d0a912fa1432f46bc1896ccfd57799e59c57be"
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
      venv = virtualenv_create(libexec)
      venv.pip_install resources
      venv.pip_install_and_link buildpath
    end
  end
