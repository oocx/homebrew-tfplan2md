class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.27.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.27.0/tfplan2md_1.27.0_macos-arm64.tar.gz"
      sha256 "ba5f371e6cd3c4bfecc74de338f1fbb917e8ac8b8f5e9cd152af787d6dcd80ec"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.27.0/tfplan2md_1.27.0_linux-x64.tar.gz"
      sha256 "ec00435253b57f0372abaa23fde43a2ddb1361cb2f8e2a6174c6ab95d3d17240"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.27.0/tfplan2md_1.27.0_linux-arm64.tar.gz"
      sha256 "3efb24603c2fc115fc00429f2e7615af757ba912e4a10c4f925b69908fb97933"
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
