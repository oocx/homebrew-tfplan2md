class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.31.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.31.0/tfplan2md_1.31.0_macos-arm64.tar.gz"
      sha256 "e7e1af80edb33ff89b693ad9872cc9fca701b219c872d2aa40b10645557ab6f4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.31.0/tfplan2md_1.31.0_linux-x64.tar.gz"
      sha256 "8a7db1bb1135071f743128ce2ffe45a3cf47f3dbb1f6b16dcb6aed90bf18576c"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.31.0/tfplan2md_1.31.0_linux-arm64.tar.gz"
      sha256 "5c4e7cd1c3e70babb1096e27d09feeeb27e15aef1eb395062adc2679cd351389"
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
