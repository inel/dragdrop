class EditController < ApplicationController
  def index
    @active_voters = Voter.find_all_by_active true
    @inactive_voters = Voter.find_all_by_active false
  end
  def make_active
    @thevoter = Voter.find(params[:voter])
    @thevoter.active = true
    @thevoter.save

    @active_voters = Voter.find_all_by_active true
    @inactive_voters = Voter.find_all_by_active false
    render :update do |page|
      page[:active_voter_list].replace_html   :partial => 'active_voters'
      page[:inactive_voter_list].replace_html :partial => 'inactive_voters'
    end
  end

  def make_inactive
    @thevoter = Voter.find(params[:voter])
    @thevoter.active = false
    @thevoter.save

    @active_voters = Voter.find_all_by_active true
    @inactive_voters = Voter.find_all_by_active false
    render :update do |page|
      page[:active_voter_list].replace_html   :partial => 'active_voters'
      page[:inactive_voter_list].replace_html :partial => 'inactive_voters'
    end
  end
end
