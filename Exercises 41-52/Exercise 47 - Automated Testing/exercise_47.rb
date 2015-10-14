# http://learnrubythehardway.org/book/ex47.html

# Windows powershell command to rename skeleton files:
# Get-ChildItem -File -Recurse | % { Rename-Item -Path $_.PSPath -NewName $_.Name.replace("NAME","ex47")}

# Yet another reason that developing on a mac is easier


# PS C:\Users\Roland\Documents\GitHub\learning-ruby-the-hard-way\Exercises 41-52\Exercise 47 - Automated Testing\skeleton> rake test
# C:/Ruby200/bin/ruby.exe -I"lib;tests" -I"C:/Ruby200/lib/ruby/2.0.0" "C:/Ruby200/lib/ruby/2.0.0/rake/rake_test_loader.rb" "tests/test_ex47.rb"
# Run options:

# # Running tests:

# Finished tests in 0.031252s, 95.9939 tests/s, 223.9857 assertions/s.
# 3 tests, 7 assertions, 0 failures, 0 errors, 0 skips

# ruby -v: ruby 2.0.0p645 (2015-04-13) [i386-mingw32]

