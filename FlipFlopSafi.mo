model FlipFlopSafi
  Modelica.Blocks.Interfaces.BooleanOutput y annotation(Placement(visible = true, transformation(origin = {160, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {111.713, 1.764}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput u1 annotation(Placement(visible = true, transformation(origin = {-167.834, 65}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 57.62}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Logical.Nor nor annotation(Placement(visible = true, transformation(origin = {-27.561, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Nor nor1 annotation(Placement(visible = true, transformation(origin = {-30, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Pre pre1(pre_u_start = true) annotation(Placement(visible = true, transformation(origin = {38.034, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.MathBoolean.OnDelay onDelay(delayTime = 25) annotation(Placement(visible = true, transformation(origin = {63.419, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.LogicalSwitch logicalSwitch annotation(Placement(visible = true, transformation(origin = {120, -33.073}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanConstant booleanConstant(k = false) annotation(Placement(visible = true, transformation(origin = {95, 56.87}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.MathBoolean.FallingEdge falling1 annotation(Placement(visible = true, transformation(origin = {-105, -83.007}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Pre pre11(pre_u_start = false) annotation(Placement(visible = true, transformation(origin = {-45, -73.395}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
equation
  connect(pre11.y, falling1.u) annotation(Line(visible = true, origin = {-80.75, -78.201}, points = {{24.75, 4.806}, {-7.25, 4.806}, {-7.25, -4.806}, {-10.25, -4.806}}, color = {255, 0, 255}));
  connect(onDelay.y, pre11.u) annotation(Line(visible = true, origin = {49.814, -56.697}, points = {{25.605, 16.697}, {28.605, 16.697}, {28.605, -16.697}, {-82.814, -16.697}}, color = {255, 0, 255}));
  connect(nor.u2, nor1.y) annotation(Line(visible = true, origin = {-37.512, 13.8}, points = {{-2.049, 28.2}, {-17.488, 28.2}, {-17.488, -3.8}, {18.512, -3.8}, {18.512, -48.8}}, color = {255, 0, 255}));
  connect(booleanConstant.y, logicalSwitch.u1) annotation(Line(visible = true, origin = {107, 25.139}, points = {{-1, 31.731}, {2, 31.731}, {2, 18.481}, {-2, 18.481}, {-2, -50.212}, {1, -50.212}}, color = {255, 0, 255}));
  connect(logicalSwitch.y, y) annotation(Line(visible = true, origin = {145.25, -11.537}, points = {{-14.25, -21.537}, {-0.25, -21.537}, {-0.25, 21.537}, {14.75, 21.537}}, color = {255, 0, 255}));
  connect(nor1.y, onDelay.u) annotation(Line(visible = true, origin = {30.814, -37.5}, points = {{-49.814, 2.5}, {15.605, 2.5}, {15.605, -2.5}, {18.605, -2.5}}, color = {255, 0, 255}));
  connect(onDelay.y, logicalSwitch.u2) annotation(Line(visible = true, origin = {87.045, -27.5}, points = {{-11.627, -12.5}, {-0.455, 5.573}, {-0.455, -5.573}, {20.955, -5.573}}, color = {255, 0, 255}));
  connect(logicalSwitch.u3, onDelay.u) annotation(Line(visible = true, origin = {40.34, -57.915}, points = {{67.66, 16.842}, {27.865, -13.643}, {19.66, -31.716}, {-30.34, -31.716}, {-30.34, 17.915}, {9.079, 17.915}}, color = {255, 0, 255}));
  connect(nor1.u2, falling1.y) annotation(Line(visible = true, origin = {-99.75, -63.003}, points = {{57.75, 20.003}, {-20.25, 20.003}, {-20.25, -20.003}, {-17.25, -20.003}}, color = {255, 0, 255}));
  connect(nor1.u1, pre1.y) annotation(Line(visible = true, origin = {-0.494, 4.449}, points = {{-41.506, -39.449}, {-79.506, -39.449}, {-79.506, -6.102}, {75.494, -6.102}, {75.494, 45.551}, {49.528, 45.551}}, color = {255, 0, 255}));
  connect(nor.y, pre1.u) annotation(Line(visible = true, origin = {4.736, 50}, points = {{-21.297, 0}, {21.297, 0}}, color = {255, 0, 255}));
  connect(u1, nor.u1) annotation(Line(visible = true, origin = {-99.349, 57.5}, points = {{-68.485, 7.5}, {4.349, 7.5}, {4.349, -7.5}, {59.788, -7.5}}, color = {255, 0, 255}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, fillColor = {0, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}}), Text(visible = true, origin = {1.782, 3.822}, extent = {{-78.218, -62.03}, {78.218, 62.03}}, textString = "flipflop")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end FlipFlopSafi;