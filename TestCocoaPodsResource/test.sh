set -x
killall "Simulator" 2> /dev/null
xcrun simctl erase all
rbenv local 2.3.3
rm Gemfile.lock
bundle install
rake clean:all
pod repo update
./run
