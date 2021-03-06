from typing import List
from selenium.webdriver.support.ui import Select
from selenium.common.exceptions import NoSuchElementException
from locators.quotes_page_locator import QuotesPageLocator
from parsers.quote import QuoteParser


class QuotePage:
    def __init__(self, browser):
        self.browser = browser

    @property
    def quotes(self) -> List[QuoteParser]:
        locator = QuotesPageLocator.QUOTE
        quote_tags = self.browser.find_elements_by_css_selector(locator)
        return [QuoteParser(quote) for quote in quote_tags]

    @property
    def author_dropdown(self) -> Select:
        locator = QuotesPageLocator.AUTHOR_DROPDOWN
        element = self.browser.find_element_by_css_selector(locator)
        return Select(element)

    @property
    def tag_dropdown(self) -> Select:
        locator = QuotesPageLocator.TAG_DROPDOWN
        element = self.browser.find_element_by_css_selector(locator)
        return Select(element)

    @property
    def select_button(self):
        locator = QuotesPageLocator.SEARCH_BUTTON
        return self.browser.find_element_by_css_selector(locator)

    def select_author(self, author_name: str):
        self.author_dropdown.select_by_visible_text(author_name)

    def get_available_tags(self) -> List[str]:
        return [option.text.strip() for option in self.tag_dropdown.options]

    def select_tag(self, tag_name: str):
        self.tag_dropdown.select_by_visible_text(tag_name)

    def search_quotes(self, author: str, tag: str):
        self.select_author(author)
        try:
            self.select_tag(tag)
        except NoSuchElementException:
            raise InvalidTagForAuthorError(f"Author '{author}' does nothave any quote tagged with '{tag}' ")
        self.select_button.click()
        return self.quotes


class InvalidTagForAuthorError(ValueError):
    pass

