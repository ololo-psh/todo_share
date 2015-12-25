describe Todo do
  it { should have_db_column(:caption).of_type(:string) }
  it { should have_db_column(:description).of_type(:text) }
  it { should have_db_column(:deadline).of_type(:datetime) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
  it { should have_db_column(:shared).of_type(:boolean) }

  it { should belong_to(:creator) }
  it { should have_and_belong_to_many(:performers) }
end