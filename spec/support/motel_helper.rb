module MotelHelper
  def create_motel_item(options={}) 
    options[:title] ||= "Bangalulu motel"
    options[:ration]

    visit new_motel_path
    expect(page).to have_content("New motel")

    fill_in "Title", with: options[:title]
    page.choose("1")
    click_button "Create Motel"
  end
end