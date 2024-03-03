model TurningiControl
  ModelPlug.Boards.Arduino arduino(Port = "COM5") annotation(Placement(visible = true, transformation(origin = {7.817, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModelPlug.Pins.AnalogOutput analogOutput(Pin = 9) annotation(Placement(visible = true, transformation(origin = {-55, -5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine sine annotation(Placement(visible = true, transformation(origin = {-125, 61.937}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 1) annotation(Placement(visible = true, transformation(origin = {-125, -47.505}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch switch1 annotation(Placement(visible = true, transformation(origin = {-71.558, 37.282}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModelPlug.Pins.AnalogInput analogInput(Pin = 14) annotation(Placement(visible = true, transformation(origin = {-10, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(threshold = .6) annotation(Placement(visible = true, transformation(origin = {35, 65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(greaterThreshold.y, switch1.u2) annotation(Line(visible = true, origin = {-35, 90.203}, points = {{81, -25.203}, {67.779, 13.656}, {67.779, 0.406}, {-67.779, 0.406}, {-67.779, -14.062}, {-48.558, -52.921}}, color = {255, 0, 255}));
  connect(analogInput.y, greaterThreshold.u) annotation(Line(visible = true, origin = {15.75, 62.5}, points = {{-15.75, -2.5}, {4.25, -2.5}, {4.25, 2.5}, {7.25, 2.5}}, color = {0, 0, 127}));
  connect(analogInput.pinConnector, arduino.boardConnector) annotation(Line(visible = true, origin = {-10.078, 26.2}, points = {{-9.922, 33.8}, {-12.934, 33.8}, {-12.934, -18.2}, {17.895, -18.2}, {17.895, -31.2}}));
  connect(switch1.u3, const.y) annotation(Line(visible = true, origin = {-104.889, -9.111}, points = {{21.332, 38.393}, {-6.111, 38.393}, {-6.111, -38.393}, {-9.111, -38.393}}, color = {0, 0, 127}));
  connect(switch1.u1, sine.y) annotation(Line(visible = true, origin = {-104.889, 53.609}, points = {{21.332, -8.327}, {-6.111, -8.327}, {-6.111, 8.327}, {-9.111, 8.327}}, color = {0, 0, 127}));
  connect(switch1.y, analogOutput.u) annotation(Line(visible = true, origin = {-62.783, 18.771}, points = {{2.225, 18.511}, {5.225, 18.511}, {5.225, 5.261}, {-5.229, 5.261}, {-5.229, -23.771}, {-2.217, -23.771}}, color = {0, 0, 127}));
  connect(analogOutput.pinConnector, arduino.boardConnector) annotation(Line(visible = true, origin = {-18.591, -5}, points = {{-26.409, 0}, {26.409, 0}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TurningiControl;