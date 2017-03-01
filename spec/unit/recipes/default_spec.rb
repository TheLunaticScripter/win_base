#
# Cookbook:: win_base
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'win_base::default' do
  context 'When we run on a supported platform' do
    let(:chef_run) do
      runner = ChefSpec::SoloRunner.new(platform: 'windows', version: '2012R2')
      runner.converge(described_recipe)
    end

    before do
      stub_command("    $KeyPath = 'HKLM:\\SYSTEM\\CurrentControlSet\\Services\\push-jobs-client'\n    (Get-ItemProperty -Path $KeyPath).ImagePath.Contains('-c C:\\chef/push-jobs-client.rb')\n").and_return(true)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'depends on push-jobs' do
      expect(chef_run).to include_recipe 'push-jobs'
    end
  end

  context 'When we run on a NOT supported platform' do
    let(:chef_run) do
      runner = ChefSpec::SoloRunner.new(platform: 'darwin', version: '10.10')
      runner.converge(described_recipe)
    end

    it 'raise an error trying to converge' do
      expect { chef_run }.to raise_error
    end
  end
end
