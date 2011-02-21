# encoding: utf-8

require File.dirname(__FILE__) + '/spec_helper'

describe Backup::Archive do

  let(:archive) do
    Backup::Archive.new(:dummy_archive) do |a|
      a.add '/home/rspecuser/somefile'
      a.add '/home/rspecuser/logs/'
      a.add '/home/rspecuser/dotfiles/'
    end
  end

  it 'should have no paths' do
    archive = Backup::Archive.new(:dummy_archive) { |a| }
    archive.paths.count.should == 0
  end

  it 'should have 3 paths' do
    archive.paths.count.should == 3
  end

  it do
    archive.name.should == :dummy_archive
  end

  describe '#paths_to_package' do
    it 'should return a tar -c friendly string' do
      archive.send(:paths_to_package).should ==
      "'/home/rspecuser/somefile' '/home/rspecuser/logs/' '/home/rspecuser/dotfiles/'"
    end
  end

  describe '#perform!' do
    it 'should tar all the specified paths' do
      archive.expects(:mkdir).with(File.join(TMP_PATH, TRIGGER, 'archive'))
      archive.expects(:run).with("tar -c '/home/rspecuser/somefile' '/home/rspecuser/logs/' '/home/rspecuser/dotfiles/' > '#{File.join(TMP_PATH, TRIGGER, 'archive', "#{:dummy_archive}.tar")}'")
      archive.expects(:utility).with(:tar).returns(:tar)
      archive.perform!
    end
  end
end