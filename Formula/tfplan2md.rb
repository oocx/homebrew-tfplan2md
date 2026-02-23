class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.26.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.26.2/tfplan2md_1.26.2_macos-arm64.tar.gz"
      sha256 "0fd8864515b06046e35a462ba76be587066bd7f8867a674e8bdf85652233133c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.26.2/tfplan2md_1.26.2_linux-x64.tar.gz"
      sha256 "10aa65bd12ec7cc63e26839ff6db44cb82725b10616689c2ffef2b200894e79a"
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
