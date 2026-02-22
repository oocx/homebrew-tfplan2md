class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.26.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.26.2/tfplan2md_1.26.2_macos-arm64.tar.gz"
      sha256 "54b02554c2dc50cd6b7b27fb4b81852e73b506b8c84e33dd4ef5993203f531cd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.26.2/tfplan2md_1.26.2_linux-x64.tar.gz"
      sha256 "5b361fbf2de7f71909d5c2037c9156c58f1c1e06db7c7788a3f9d079e785ef75"
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
