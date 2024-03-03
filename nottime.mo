model nottimt
  parameter Modelica.SIunits.Time startTime = 0 "Time instant of step start";
  parameter Boolean startValue = true "Output before startTime";
  Modelica.Blocks.Interfaces.BooleanOutput y annotation(Placement(visible = true, transformation(origin = {-184.229, 68.527}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 7.056}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput u2 annotation(Placement(visible = true, transformation(origin = {-168.513, 61.119}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, -53.505}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput u1 annotation(Placement(visible = true, transformation(origin = {-172.879, -48.772}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 70}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  y = if time <= 5 then not (u1 or u2) else u1 or u2;
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end nottimt;