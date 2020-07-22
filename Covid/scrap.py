import requests
import json
from bs4 import BeautifulSoup
import os


#page_content = requests.get('https://www.mohfw.gov.in/').content


class IndiaData:

    def __init__(self, page):
        self.page = requests.get(page).content
        self.soup = BeautifulSoup(self.page, 'html.parser')
        self.all_state_data = []

    @property
    def state_data(self):
        locator = 'tbody tr td'
        for state in self.soup.select(locator):
            self.all_state_data.append(state.string)
        column_number = 5
        subList = [self.all_state_data[n: n + column_number] for n in range(0, len(self.all_state_data), column_number)]
        return subList

    def state_wise_date(self):
        all_data_old = self.state_data
        #K = 2
        # all_data = all_data[: len(all_data) - K]
        all_data = all_data_old[0:32]
        my_dict = {}
        for state in all_data:
            no, state_name, total, cured, death = state
            my_dict[state_name] = {
                'state':  state_name,
                'Total Confirmed cases': total,
                'Cured/Discharged': cured,
                'Death': death
            }
        file_path = os.path.dirname(os.path.realpath(__file__))
        with open(f'{file_path}/covid.json_new', 'w') as file:
            json.dump(my_dict, file)

        os.rename(f'{file_path}/covid.json_new', f'{file_path}/covid.json')


my_country_data = IndiaData('https://www.mohfw.gov.in/')
my_country_data.state_wise_date()

