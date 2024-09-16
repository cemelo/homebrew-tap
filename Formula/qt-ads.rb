class QtAds < Formula
  desc "A docking system for Qt" 
  homepage "https://github.com/githubuser0xFFFF/Qt-Advanced-Docking-System"
  url "https://github.com/githubuser0xFFFF/Qt-Advanced-Docking-System.git",
      using: :git,
      tag: "4.3.1" 
  version "4.3.1"
  license "LGPL v2"

  depends_on "cmake" => :build
  depends_on "qt"
  
  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test qterminal`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
