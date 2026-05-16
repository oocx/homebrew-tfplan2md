class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.43.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.43.2/tfplan2md_1.43.2_macos-arm64.tar.gz"
      sha256 "ccf37039cd38dfb82ab5a9638779f3c379bb3a800e6f78a11dbb2978b7648d17"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.43.2/tfplan2md_1.43.2_linux-x64.tar.gz"
      sha256 "6c576f351d34483d7ac7dcbb958f6a132f8ec2e3b926a201c8076ad00d9d4251"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.43.2/tfplan2md_1.43.2_linux-arm64.tar.gz"
      sha256 "4c6e82b4ea7554d5cf34f4475cf76dc78d270f48b68b32acad1efb47f7fe0267"
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
