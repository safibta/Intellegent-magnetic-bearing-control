model ModifiedNORtesting
  Modelica.Blocks.Logical.Nor nor annotation(Placement(visible = true, transformation(origin = {-27.561, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Pre pre1(pre_u_start = true) annotation(Placement(visible = true, transformation(origin = {38.034, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModifiedNOR modifiedNOR annotation(Placement(visible = true, transformation(origin = {-42.444, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanConstant booleanConstant(k = false) annotation(Placement(visible = true, transformation(origin = {-115, -62.839}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModelPlug.Pins.AnalogInput analogInput(Pin = 16) annotation(Placement(visible = true, transformation(origin = {-115, 57.878}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold = .5) annotation(Placement(visible = true, transformation(origin = {-82.682, 58.429}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Nor nor1 annotation(Placement(visible = true, transformation(origin = {120.405, 32.839}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Pre pre2(pre_u_start = true) annotation(Placement(visible = true, transformation(origin = {186, 32.839}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanConstant booleanConstant1(k = false) annotation(Placement(visible = true, transformation(origin = {32.966, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold1(threshold = .5) annotation(Placement(visible = true, transformation(origin = {80, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Nor nor2 annotation(Placement(visible = true, transformation(origin = {110, -42.478}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModelPlug.Boards.Arduino arduino(Port = "COM5") annotation(Placement(visible = true, transformation(origin = {-132.843, 88.194}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(arduino.boardConnector, analogInput.pinConnector) annotation(Line(visible = true, origin = {-130.229, 67.983}, points = {{-2.614, 20.211}, {-2.614, -10.106}, {5.229, -10.106}}));
  connect(booleanConstant1.y, nor2.u2) annotation(Line(visible = true, origin = {73.801, -65.239}, points = {{-29.835, -14.761}, {2.818, -14.761}, {2.818, 14.761}, {24.199, 14.761}}, color = {255, 0, 255}));
  connect(pre2.y, nor2.u1) annotation(Line(visible = true, origin = {136.143, -5.257}, points = {{60.857, 38.096}, {63.857, 38.096}, {63.857, 10.257}, {-56.143, 10.257}, {-56.143, -29.743}, {-38.143, -29.743}, {-38.143, -37.221}}, color = {255, 0, 255}));
  connect(nor1.u2, nor2.y) annotation(Line(visible = true, origin = {114.901, -12.546}, points = {{-6.496, 37.385}, {-19.901, 37.385}, {-19.901, -7.454}, {20.099, -7.454}, {20.099, -29.932}, {6.099, -29.932}}, color = {255, 0, 255}));
  connect(analogInput.y, greaterEqualThreshold1.u) annotation(Line(visible = true, origin = {-58.308, 63.939}, points = {{-46.692, -6.061}, {-39.808, -6.061}, {-39.808, 6.061}, {126.308, 6.061}}, color = {0, 0, 127}));
  connect(greaterEqualThreshold1.y, nor1.u1) annotation(Line(visible = true, origin = {96.851, 51.419}, points = {{-5.851, 18.581}, {-2.851, 18.581}, {-2.851, -18.581}, {11.554, -18.581}}, color = {255, 0, 255}));
  connect(nor1.y, pre2.u) annotation(Line(visible = true, origin = {152.702, 32.839}, points = {{-21.297, 0}, {21.298, 0}}, color = {255, 0, 255}));
  connect(greaterEqualThreshold.y, nor.u1) annotation(Line(visible = true, origin = {-49.091, 54.214}, points = {{-22.591, 4.214}, {6.53, 4.214}, {6.53, -4.214}, {9.53, -4.214}}, color = {255, 0, 255}));
  connect(analogInput.y, greaterEqualThreshold.u) annotation(Line(visible = true, origin = {-98.762, 58.153}, points = {{-6.238, -0.276}, {1.079, -0.276}, {1.079, 0.276}, {4.079, 0.276}}, color = {0, 0, 127}));
  connect(nor.y, pre1.u) annotation(Line(visible = true, origin = {4.736, 50}, points = {{-21.297, 0}, {21.298, 0}}, color = {255, 0, 255}));
  connect(pre1.y, modifiedNOR.u1) annotation(Line(visible = true, origin = {-7.443, 0.59}, points = {{56.477, 49.41}, {59.477, 49.41}, {59.477, -13.819}, {-64.215, -13.819}, {-64.215, -35.59}, {-47.001, -35.59}}, color = {255, 0, 255}));
  connect(modifiedNOR.y, nor.u2) annotation(Line(visible = true, origin = {-28.501, 9.683}, points = {{-2.943, -44.683}, {38.501, -44.683}, {38.501, 12.366}, {-31.499, 12.366}, {-31.499, 32.317}, {-11.06, 32.317}}, color = {255, 0, 255}));
  connect(booleanConstant.y, modifiedNOR.u2) annotation(Line(visible = true, origin = {-68.333, -52.919}, points = {{-35.667, -9.92}, {10.889, -9.919}, {10.889, 9.919}, {13.889, 9.919}}, color = {255, 0, 255}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end ModifiedNORtesting;