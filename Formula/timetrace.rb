class Timetrace < Formula
    desc "In memory event or log, storage and stream platform"
    homepage "https://github.com/zurvan-lab/timetrace"
    license "MIT"
    
    if OS.mac?
        if Hardware::CPU.intel?
          url "https://github.com/zurvan-lab/timetrace/releases/download/v0.1.0-beta/ttrace_0.1.0-beta_darwin_amd64.tar.gz"
          sha256 "4ae8a1ef2b440cc7141d7bf0e59c43c59cedafa65f50e3bd3da9ac60f6068abc"
        elsif Hardware::CPU.arm?
          url "https://github.com/zurvan-lab/timetrace/releases/download/v0.1.0-beta/ttrace_0.1.0-beta_darwin_arm64.tar.gz"
          sha256 "9d647af6d894069f204f0ffbf7e1cbb5688ecb1a1ec61df823a37208d9d972f5"
        end
      elsif OS.linux?
        if Hardware::CPU.intel?
          url "https://github.com/zurvan-lab/timetrace/releases/download/v0.1.0-beta/ttrace_0.1.0-beta_linux_amd64.tar.gz"
          sha256 "7694987bae41f92019d363650845949c559741737956f340060a46e35dcfcd3a"
        elsif Hardware::CPU.arm?
          url "https://github.com/zurvan-lab/timetrace/releases/download/v0.1.0-beta/ttrace_0.1.0-beta_linux_arm64.tar.gz"
          sha256 "4898111935045be617c425192aa659a702d5988bcbcb7db4e7b2804cfc203d3e"
        end
      end

      bottle :unneeded
    
      def install
        bin.install "ttrace"
      end
    
      test do
        system "#{bin}/ttrace", "--version"
      end
  end
  