describe Todo do
  it { should have_db_column(:caption).of_type(:string) }
  it { should have_db_column(:description).of_type(:text) }
  it { should have_db_column(:deadline).of_type(:datetime) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }

  it { should belong_to(:creator) }
end