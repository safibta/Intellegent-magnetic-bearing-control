model Model1
  ModelPlug.Pins.DigitalOutput digitalOutput(Pin = 13) annotation(Placement(visible = true, transformation(origin = {-30, 2.405}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModelPlug.Boards.Arduino arduino(Port = "COM3") annotation(Placement(visible = true, transformation(origin = {83.073, -8.419}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse booleanPulse(period = 1) annotation(Placement(visible = true, transformation(origin = {-97.415, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(digitalOutput.pinConnector, arduino.boardConnector) annotation(Line(visible = true, origin = {50.534, -3.007}, points = {{-70.534, 5.412}, {18.998, 5.412}, {18.998, -5.412}, {32.539, -5.412}}));
  connect(booleanPulse.y, digitalOutput.u) annotation(Line(visible = true, origin = {-53.11, -1.297}, points = {{-33.305, -3.703}, {10.097, -3.703}, {10.097, 3.703}, {13.11, 3.703}}, color = {255, 0, 255}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end Model1;