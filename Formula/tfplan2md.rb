class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.32.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.32.0/tfplan2md_1.32.0_macos-arm64.tar.gz"
      sha256 "57cfeac5c284ec7fb62e0cf55959dfa53bce620d8ab2b028bc897c540fdc98c9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.32.0/tfplan2md_1.32.0_linux-x64.tar.gz"
      sha256 "a8bcfaf18db3de694540557e1d62faccd9bf2c2ca9565b19ad4a1539108ce487"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.32.0/tfplan2md_1.32.0_linux-arm64.tar.gz"
      sha256 "674b1337d7fd91ae22f22d4263bfd8b4600a996d89f9958cae164b32f1a5121a"
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
