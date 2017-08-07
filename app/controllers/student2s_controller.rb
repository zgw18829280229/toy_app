class Student2sController < ApplicationController
  before_action :set_student2, only: [:show, :edit, :update, :destroy]

  # GET /student2s
  # GET /student2s.json
  def index
    @student2s = Student2.all
  end

  # GET /student2s/1
  # GET /student2s/1.json
  def show
  end

  # GET /student2s/new
  def new
    @student2 = Student2.new
  end

  # GET /student2s/1/edit
  def edit
  end

  # POST /student2s
  # POST /student2s.json
  def create
    @student2 = Student2.new(student2_params)

    respond_to do |format|
      if @student2.save
        format.html { redirect_to @student2, notice: 'Student2 was successfully created.' }
        format.json { render :show, status: :created, location: @student2 }
      else
        format.html { render :new }
        format.json { render json: @student2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student2s/1
  # PATCH/PUT /student2s/1.json
  def update
    respond_to do |format|
      if @student2.update(student2_params)
        format.html { redirect_to @student2, notice: 'Student2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @student2 }
      else
        format.html { render :edit }
        format.json { render json: @student2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student2s/1
  # DELETE /student2s/1.json
  def destroy
    @student2.destroy
    respond_to do |format|
      format.html { redirect_to student2s_url, notice: 'Student2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student2
      @student2 = Student2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student2_params
      params.require(:student2).permit(:name, :age, :class1_id)
    end
end
