class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.26.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.26.2/tfplan2md_1.26.2_macos-arm64.tar.gz"
      sha256 "a868028135eaf47fabce397011245422213d3682652bb8581117f430d21efcd0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.26.2/tfplan2md_1.26.2_linux-x64.tar.gz"
      sha256 "465bd6f899f2796a71e7b4dc2470975f37b49718d12871ba8e38fa2c6c50cc80"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.26.2/tfplan2md_1.26.2_linux-arm64.tar.gz"
      sha256 "764fdcc7d3e83fe7dc9e27dff8872fbee6bc2ea8ea2f315fb5e5152000eac6c9"
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
