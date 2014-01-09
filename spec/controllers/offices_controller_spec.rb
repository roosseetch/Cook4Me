require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe OfficesController do

  # This should return the minimal set of attributes required to create a valid
  # Office. As you add validations to Office, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OfficesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all offices as @offices" do
      office = Office.create! valid_attributes
      get :index, {}, valid_session
      assigns(:offices).should eq([office])
    end
  end

  describe "GET show" do
    it "assigns the requested office as @office" do
      office = Office.create! valid_attributes
      get :show, {:id => office.to_param}, valid_session
      assigns(:office).should eq(office)
    end
  end

  describe "GET new" do
    it "assigns a new office as @office" do
      get :new, {}, valid_session
      assigns(:office).should be_a_new(Office)
    end
  end

  describe "GET edit" do
    it "assigns the requested office as @office" do
      office = Office.create! valid_attributes
      get :edit, {:id => office.to_param}, valid_session
      assigns(:office).should eq(office)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Office" do
        expect {
          post :create, {:office => valid_attributes}, valid_session
        }.to change(Office, :count).by(1)
      end

      it "assigns a newly created office as @office" do
        post :create, {:office => valid_attributes}, valid_session
        assigns(:office).should be_a(Office)
        assigns(:office).should be_persisted
      end

      it "redirects to the created office" do
        post :create, {:office => valid_attributes}, valid_session
        response.should redirect_to(Office.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved office as @office" do
        # Trigger the behavior that occurs when invalid params are submitted
        Office.any_instance.stub(:save).and_return(false)
        post :create, {:office => { "name" => "invalid value" }}, valid_session
        assigns(:office).should be_a_new(Office)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Office.any_instance.stub(:save).and_return(false)
        post :create, {:office => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested office" do
        office = Office.create! valid_attributes
        # Assuming there are no other offices in the database, this
        # specifies that the Office created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Office.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => office.to_param, :office => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested office as @office" do
        office = Office.create! valid_attributes
        put :update, {:id => office.to_param, :office => valid_attributes}, valid_session
        assigns(:office).should eq(office)
      end

      it "redirects to the office" do
        office = Office.create! valid_attributes
        put :update, {:id => office.to_param, :office => valid_attributes}, valid_session
        response.should redirect_to(office)
      end
    end

    describe "with invalid params" do
      it "assigns the office as @office" do
        office = Office.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Office.any_instance.stub(:save).and_return(false)
        put :update, {:id => office.to_param, :office => { "name" => "invalid value" }}, valid_session
        assigns(:office).should eq(office)
      end

      it "re-renders the 'edit' template" do
        office = Office.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Office.any_instance.stub(:save).and_return(false)
        put :update, {:id => office.to_param, :office => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested office" do
      office = Office.create! valid_attributes
      expect {
        delete :destroy, {:id => office.to_param}, valid_session
      }.to change(Office, :count).by(-1)
    end

    it "redirects to the offices list" do
      office = Office.create! valid_attributes
      delete :destroy, {:id => office.to_param}, valid_session
      response.should redirect_to(offices_url)
    end
  end

end