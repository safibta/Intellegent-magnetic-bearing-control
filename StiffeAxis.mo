model StiffeAxis
  Modelica.Blocks.Sources.Step step(startTime = 1) annotation(Placement(visible = true, transformation(origin = {-100, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(Placement(visible = true, transformation(origin = {-80, 18.318}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 1) annotation(Placement(visible = true, transformation(origin = {-70, -15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.IdealGear idealGear(ratio = 3) annotation(Placement(visible = true, transformation(origin = {-51.962, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia1(J = .5) annotation(Placement(visible = true, transformation(origin = {-37.942, -15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Spring spring1(c = 5) annotation(Placement(visible = true, transformation(origin = {-15, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia2(J = .5) annotation(Placement(visible = true, transformation(origin = {-12.509, -15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(spring1.flange_b, inertia2.flange_a) annotation(Line(visible = true, origin = {-13.684, -2}, points = {{8.684, 12}, {9.909, 12}, {9.909, 1}, {-9.838, 1}, {-9.838, -13}, {-8.825, -13}}));
  connect(inertia1.flange_b, spring1.flange_a) annotation(Line(visible = true, origin = {-26.348, -2.5}, points = {{-1.594, -12.5}, {0.123, -12.5}, {0.123, 12.5}, {1.348, 12.5}}));
  connect(idealGear.flange_b, inertia1.flange_a) annotation(Line(visible = true, origin = {-44.952, -2.742}, points = {{2.99, 12.742}, {4.002, 12.742}, {4.002, -0.483}, {-4.002, -0.483}, {-4.002, -12.258}, {-2.99, -12.258}}));
  connect(inertia.flange_b, idealGear.flange_a) annotation(Line(visible = true, origin = {-60.981, -3}, points = {{0.981, -12}, {1.994, -12}, {1.994, -1}, {-1.994, -1}, {-1.994, 13}, {-0.981, 13}}));
  connect(torque.flange, inertia.flange_a) annotation(Line(visible = true, origin = {-75.004, 2.137}, points = {{5.004, 16.181}, {8.004, 16.181}, {8.004, 0.956}, {-8.008, 0.956}, {-8.008, -17.137}, {-4.996, -17.137}}));
  connect(step.y, torque.tau) annotation(Line(visible = true, origin = {-90.5, 3.777}, points = {{1.5, -13.777}, {4.5, -13.777}, {4.5, -0.764}, {-4.5, -0.764}, {-4.5, 14.541}, {-1.5, 14.541}}, color = {0, 0, 127}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end StiffeAxis;