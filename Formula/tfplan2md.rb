class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.23.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.23.1/tfplan2md_1.23.1_macos-arm64.tar.gz"
      sha256 "0db62be6864f551bc3474774b991bf041a43847c5b9ffe8eebed7c0ef350f7ab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.23.1/tfplan2md_1.23.1_linux-x64.tar.gz"
      sha256 "563ce2af2b28e68f6d84055793a15d53e80973299ad76e445f9679ffcc97ae1a"
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
