model ardiuuuu
  Modelica.Blocks.Sources.BooleanPulse booleanPulse(period = 1, width = 10) annotation(Placement(visible = true, transformation(origin = {-88.958, -1.042}, extent = {{-21.042, -21.042}, {21.042, 21.042}}, rotation = 0)));
  ModelPlug.Boards.Arduino arduino(Port = "COM3") annotation(Placement(visible = true, transformation(origin = {93.558, -1.442}, extent = {{-26.442, -26.442}, {26.442, 26.442}}, rotation = 0)));
  ModelPlug.Pins.DigitalOutput digitalOutput(Pin = 13) annotation(Placement(visible = true, transformation(origin = {-6.236, -1.236}, extent = {{-16.236, -16.236}, {16.236, 16.236}}, rotation = 0)));
equation
  connect(digitalOutput.pinConnector, arduino.boardConnector) annotation(Line(visible = true, origin = {57.233, -1.339}, points = {{-47.233, 0.103}, {5.454, 0.103}, {5.454, -0.103}, {36.325, -0.103}}));
  connect(booleanPulse.y, digitalOutput.u) annotation(Line(visible = true, origin = {-34.817, -1.139}, points = {{-30.996, 0.097}, {9.325, 0.097}, {9.325, -0.097}, {12.345, -0.097}}, color = {255, 0, 255}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end ardiuuuu;