class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.39.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.39.0/tfplan2md_1.39.0_macos-arm64.tar.gz"
      sha256 "24ed79e6e193952105dc670e03cf2f39cc4052dbe51d69c055903fd9a9578536"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.39.0/tfplan2md_1.39.0_linux-x64.tar.gz"
      sha256 "d5df32e8a5643174f1e98c6144a2b9c022590a00eabc6d4b827b990fdd72ee4f"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.39.0/tfplan2md_1.39.0_linux-arm64.tar.gz"
      sha256 "1295a3546116b024a48e1b2d150dc9a6809b20964b9d6ced3f0d372d60fbaba2"
    end
  end

  def install
    bin.install "tfplan2md"
  end

  test do
    system "#{bin}/tfplan2md", "--version"
    system "#{bin}/tfplan2md", "--help"
  end
end
