within WasteWater.ASM1;
model Settler_10 "Settler_10"
  extends Settler_New_task9;
 Interfaces.WWFlowAsm1in                 Feed annotation (Placement(transformation(extent={{-100,
            -10},{-80,10}}),
                   iconTransformation(extent={{-100,-10},{-80,10}})));
 Interfaces.WWFlowAsm1out                 Effluent annotation (Placement(transformation(extent={{80,20},
            {100,40}}),
                    iconTransformation(extent={{80,20},{100,40}})));
 Interfaces.WWFlowAsm1out                 Return annotation (Placement(transformation(extent={{80,-10},
            {100,10}}),
                    iconTransformation(extent={{80,-10},{100,10}})));
 Interfaces.WWFlowAsm1out                 Waste annotation (Placement(transformation(extent={{80,-40},
            {100,-20}}),
                    iconTransformation(extent={{80,-40},{100,-20}})));

  Real A(start=10.0,fixed=false);
  Real T(start=1000.0,fixed=false);
  Real v(start=1000.0,fixed=false);
  Real rhop = 1200.0;
  Real rhof = 1000.0;
  Real d = 0.0005;
  Real mu = 0.001;
  Real h = 4.0;
  Real g = 9.81;
equation
  v = h/((g*(rhop - rhof)*d^2)/(18*mu));
  T = h/v;
  A = T*Feed.Q/h
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Line(
          points={{-58,60},{-58,-60},{58,-60},{58,60}},
          color={162,29,33},
          thickness=1),
        Ellipse(
          extent={{12,18},{22,8}},
          lineColor={162,29,33},
          lineThickness=1,
          fillColor={255,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-42,16},{-20,10}},
          lineColor={162,29,33},
          lineThickness=1,
          fillColor={255,0,0},
          fillPattern=FillPattern.Solid),
        Line(
          points={{46,14},{46,-60}},
          color={0,0,0},
          pattern=LinePattern.Dash,
          arrow={Arrow.Open,Arrow.Open}),
        Text(
          extent={{30,-20},{32,-32}},
          lineColor={0,0,0},
          pattern=LinePattern.Dash,
          fillColor={255,0,0},
          fillPattern=FillPattern.Solid,
          textString="h"),
        Polygon(
          points={{-78,12},{-64,0},{-78,-12},{-78,12}},
          lineColor={0,0,0},
          pattern=LinePattern.Dash,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{62,40},{76,28},{62,16},{62,40}},
          lineColor={0,0,0},
          pattern=LinePattern.Dash,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{62,12},{76,0},{62,-12},{62,12}},
          lineColor={0,0,0},
          pattern=LinePattern.Dash,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{62,-18},{76,-30},{62,-42},{62,-18}},
          lineColor={0,0,0},
          pattern=LinePattern.Dash,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Line(points={{-58,16},{58,16}}, color={28,108,200})}),   Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Settler_10;
