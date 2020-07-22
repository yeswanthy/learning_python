from flask import Flask, render_template, url_for
import json

app = Flask(__name__)


continents = ['North America','Europe', 'Asia', 'South America', 'Oceania', 'Africa']


def get_data():
    with open('covid.json', 'r') as file:
        scrap = json.load(file)
    return scrap

def get_world_data(file_name):
    with open(file_name, 'r') as file:
        data = json.load(file)
    return data


@app.route('/')
def home():
    world_data = get_world_data('world.json')
    return render_template('home.jinja2', continents=continents)


@app.route('/<state_name>')
def india(state_name):
    data = get_data()
    state_data = data.get(state_name)
    return render_template('state.jinja2', state_data=state_data)


@app.route('/<continent>')
def continent(continent):
    if continent == 'North America':
        file_name = 'NorthAmerica'
    elif continent == 'South America':
        file_name = 'SouthAmerica'
    else:
        file_name = continent
    continent_data = get_world_data(f"{file_name}.json")
    return render_template('continent.jinja2', continents_data=continent_data)


if __name__ == ('__main__'):
    app.run(debug=True, host='0.0.0.0', port=5001)
