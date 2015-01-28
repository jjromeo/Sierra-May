'use strict'

describe 'SierraMay', ->
  categoriesLink = element(By.css('#categories-link'))
  categories = By.repeater('category in categories')
  shoes = element(categories.row(0))
  beforeEach ->
    browser.get '/'

    


   describe 'categories', ->

     it 'should show a category\'s products when clicked', ->
       categoriesLink.click()
       shoes.click()
       expect(browser.getCurrentUrl()).toContain('#/categories/8')





