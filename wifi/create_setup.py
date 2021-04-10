import json


if __name__ == "__main__":

    template_file="99-wifi-init.yaml.tmpl" 
    config_file="setup.cfg"
    fp = open( template_file, "r")
    data = fp.read()
    fp.close()
    f = open( config_file, "r")
    json_dict = json.load(f)
    f.close()
    print(data.format(json_dict["ip"],json_dict["ssid"],json_dict["pass"]))

