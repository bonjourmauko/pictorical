class DestroyVictorPerlFromCandidates < ActiveRecord::Migration
  def self.up
    say_with_time("Destroying Victor Perl from Candidates") do
      Candidate.find(:all).each do |candidate|
        if candidate[:id] == 17
          candidate.destroy
        end
        if candidate[:id] == 18
          candidate.destroy
        end
      end
    end
  end

  def self.down
  end
end