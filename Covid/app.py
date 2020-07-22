from flask import Flask, render_template, url_for
from flask_apscheduler import APScheduler
import json
from world_scrap import WorldData
from scrap import IndiaData



app = Flask(__name__)
scheduler = APScheduler()


def get_live_data():
    world_data = WorldData('https://www.worldometers.info/coronavirus/')
    world_data.country_data()
    my_country_data = IndiaData('https://www.mohfw.gov.in/')
    my_country_data.state_wise_date()


#continents = ['North America','Europe', 'Asia', 'South America', 'Oceania', 'Africa']


def get_world_data(file_name):
    with open(file_name, 'r') as file:
        data = json.load(file)
    return data


def get_data():
    with open('covid.json', 'r') as file:
        scrap = json.load(file)
    return scrap


@app.route('/')
def menu():
    world_data = get_world_data('world.json')
    total = world_data.pop('World')
    return render_template('menu.jinja2', total=total)


@app.route('/india')
def india():
    data = get_data()
    return render_template('India.jinja2', states=data)


@app.route('/global')
def global_data():
    data = get_world_data('world.json')
    total = data.pop('World')
    return render_template('global_data.jinja2', global_data=data)


@app.route('/about')
def about():
    return render_template('about.html')



if __name__ == '__main__':
    scheduler.add_job(id = 'Scheduled task', func = get_live_data, trigger = 'interval', seconds = 59)
    scheduler.start()
    app.run(debug=True, host='0.0.0.0', port=5000)

