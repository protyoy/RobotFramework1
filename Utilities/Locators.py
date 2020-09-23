import json
import jsonpath

def read_loactor_from_json(locator_jsonpath):
    f = open("C:/Users/iampr/Documents/RobotFramework1/Test Data/Locators.json")
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response,locator_jsonpath)
    return value[0]
