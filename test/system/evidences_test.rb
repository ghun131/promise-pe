require "application_system_test_case"

class EvidencesTest < ApplicationSystemTestCase
  setup do
    @evidence = evidences(:one)
  end

  test "visiting the index" do
    visit evidences_url
    assert_selector "h1", text: "Evidences"
  end

  test "should create evidence" do
    visit evidences_url
    click_on "New evidence"

    fill_in "Content", with: @evidence.content
    fill_in "Name", with: @evidence.name
    click_on "Create Evidence"

    assert_text "Evidence was successfully created"
    click_on "Back"
  end

  test "should update Evidence" do
    visit evidence_url(@evidence)
    click_on "Edit this evidence", match: :first

    fill_in "Content", with: @evidence.content
    fill_in "Name", with: @evidence.name
    click_on "Update Evidence"

    assert_text "Evidence was successfully updated"
    click_on "Back"
  end

  test "should destroy Evidence" do
    visit evidence_url(@evidence)
    click_on "Destroy this evidence", match: :first

    assert_text "Evidence was successfully destroyed"
  end
end
