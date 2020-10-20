# typed: false
# frozen_string_literal: true

class WorksController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :allow_sdr_updates?

  def new
    @collection = Collection.find(params[:collection_id])
    @work = Work.new(work_type: 'text', subtype: 'manuscript', collection: @collection)
  end

  def create
    @collection = Collection.find(params[:collection_id])
    @work = Work.new(work_params.merge(collection: @collection))
    if @work.save
      DepositJob.perform_later(@work) if params[:commit] == 'Deposit'
      redirect_to @work
    else
      render :new
    end
  end

  def show
    @work = Work.find(params[:id])
  end

  private

  def work_params
    params.require(:work).permit(:title, :work_type, :subtype, :contact_email,
                                 :created_edtf, :abstract, :citation, :access, :license, :agree_to_terms,
                                 files: [])
  end
end
