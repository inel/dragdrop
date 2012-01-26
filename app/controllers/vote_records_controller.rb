class VoteRecordsController < ApplicationController
  # GET /vote_records
  # GET /vote_records.xml
  def index
    @vote_records = VoteRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vote_records }
    end
  end

  # GET /vote_records/1
  # GET /vote_records/1.xml
  def show
    @vote_record = VoteRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vote_record }
    end
  end

  # GET /vote_records/new
  # GET /vote_records/new.xml
  def new
    @vote_record = VoteRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vote_record }
    end
  end

  # GET /vote_records/1/edit
  def edit
    @vote_record = VoteRecord.find(params[:id])
  end

  # POST /vote_records
  # POST /vote_records.xml
  def create
    @vote_record = VoteRecord.new(params[:vote_record])

    respond_to do |format|
      if @vote_record.save
        format.html { redirect_to(@vote_record, :notice => 'Vote record was successfully created.') }
        format.xml  { render :xml => @vote_record, :status => :created, :location => @vote_record }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vote_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vote_records/1
  # PUT /vote_records/1.xml
  def update
    @vote_record = VoteRecord.find(params[:id])

    respond_to do |format|
      if @vote_record.update_attributes(params[:vote_record])
        format.html { redirect_to(@vote_record, :notice => 'Vote record was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vote_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vote_records/1
  # DELETE /vote_records/1.xml
  def destroy
    @vote_record = VoteRecord.find(params[:id])
    @vote_record.destroy

    respond_to do |format|
      format.html { redirect_to(vote_records_url) }
      format.xml  { head :ok }
    end
  end
end
