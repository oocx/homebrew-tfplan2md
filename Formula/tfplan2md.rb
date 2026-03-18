class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.40.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.40.0/tfplan2md_1.40.0_macos-arm64.tar.gz"
      sha256 "6b4ed1b6e1a9199714ebae9aa874154015393614cfb66d7511f38b5d885d53b6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.40.0/tfplan2md_1.40.0_linux-x64.tar.gz"
      sha256 "0c646dd069d3a43d5e561fe78c6c02bf120c4bc0d85a7a727cd6af0773885313"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.40.0/tfplan2md_1.40.0_linux-arm64.tar.gz"
      sha256 "43c8c4b6cf383e0487a96213c0d63ccf61ad20a3770ef4643abae9597f7cb5f7"
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
