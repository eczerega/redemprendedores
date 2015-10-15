require 'rails_helper'

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

RSpec.describe UserHabilitiesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # UserHability. As you add validations to UserHability, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UserHabilitiesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all user_habilities as @user_habilities" do
      user_hability = UserHability.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:user_habilities)).to eq([user_hability])
    end
  end

  describe "GET #show" do
    it "assigns the requested user_hability as @user_hability" do
      user_hability = UserHability.create! valid_attributes
      get :show, {:id => user_hability.to_param}, valid_session
      expect(assigns(:user_hability)).to eq(user_hability)
    end
  end

  describe "GET #new" do
    it "assigns a new user_hability as @user_hability" do
      get :new, {}, valid_session
      expect(assigns(:user_hability)).to be_a_new(UserHability)
    end
  end

  describe "GET #edit" do
    it "assigns the requested user_hability as @user_hability" do
      user_hability = UserHability.create! valid_attributes
      get :edit, {:id => user_hability.to_param}, valid_session
      expect(assigns(:user_hability)).to eq(user_hability)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new UserHability" do
        expect {
          post :create, {:user_hability => valid_attributes}, valid_session
        }.to change(UserHability, :count).by(1)
      end

      it "assigns a newly created user_hability as @user_hability" do
        post :create, {:user_hability => valid_attributes}, valid_session
        expect(assigns(:user_hability)).to be_a(UserHability)
        expect(assigns(:user_hability)).to be_persisted
      end

      it "redirects to the created user_hability" do
        post :create, {:user_hability => valid_attributes}, valid_session
        expect(response).to redirect_to(UserHability.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved user_hability as @user_hability" do
        post :create, {:user_hability => invalid_attributes}, valid_session
        expect(assigns(:user_hability)).to be_a_new(UserHability)
      end

      it "re-renders the 'new' template" do
        post :create, {:user_hability => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested user_hability" do
        user_hability = UserHability.create! valid_attributes
        put :update, {:id => user_hability.to_param, :user_hability => new_attributes}, valid_session
        user_hability.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested user_hability as @user_hability" do
        user_hability = UserHability.create! valid_attributes
        put :update, {:id => user_hability.to_param, :user_hability => valid_attributes}, valid_session
        expect(assigns(:user_hability)).to eq(user_hability)
      end

      it "redirects to the user_hability" do
        user_hability = UserHability.create! valid_attributes
        put :update, {:id => user_hability.to_param, :user_hability => valid_attributes}, valid_session
        expect(response).to redirect_to(user_hability)
      end
    end

    context "with invalid params" do
      it "assigns the user_hability as @user_hability" do
        user_hability = UserHability.create! valid_attributes
        put :update, {:id => user_hability.to_param, :user_hability => invalid_attributes}, valid_session
        expect(assigns(:user_hability)).to eq(user_hability)
      end

      it "re-renders the 'edit' template" do
        user_hability = UserHability.create! valid_attributes
        put :update, {:id => user_hability.to_param, :user_hability => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested user_hability" do
      user_hability = UserHability.create! valid_attributes
      expect {
        delete :destroy, {:id => user_hability.to_param}, valid_session
      }.to change(UserHability, :count).by(-1)
    end

    it "redirects to the user_habilities list" do
      user_hability = UserHability.create! valid_attributes
      delete :destroy, {:id => user_hability.to_param}, valid_session
      expect(response).to redirect_to(user_habilities_url)
    end
  end

end
