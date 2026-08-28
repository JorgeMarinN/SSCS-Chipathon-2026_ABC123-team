with open("create_osc_stage.py", "r", encoding="utf-8") as file:
	content = file.read()

	cleaned_content = content.replace("\u00a0", " ")

with open("create_osc_stage.py", "w", encoding="utf-8") as file:
	file.write(cleaned_content)
