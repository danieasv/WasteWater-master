within WasteWater.ASM1;
model Settler_New_task9 "Task 9 implementation of Settler"

 WasteWater.ASM1.Interfaces.WWFlowAsm1in Feed annotation (Placement(transformation(extent={{-100,
            -10},{-80,10}}),
                   iconTransformation(extent={{-100,-10},{-80,10}})));
 WasteWater.ASM1.Interfaces.WWFlowAsm1out Effluent annotation (Placement(transformation(extent={{80,20},
            {100,40}}),
                    iconTransformation(extent={{80,20},{100,40}})));
 WasteWater.ASM1.Interfaces.WWFlowAsm1out Recycle annotation (Placement(transformation(extent={{80,-10},
            {100,10}}),
                    iconTransformation(extent={{80,-10},{100,10}})));
 WasteWater.ASM1.Interfaces.WWFlowAsm1out Waste annotation (Placement(transformation(extent={{80,-40},
            {100,-20}}),
                    iconTransformation(extent={{80,-40},{100,-20}})));

equation
 //Equations
 Feed.Si*Feed.Q + Waste.Si*Waste.Q + Effluent.Si*Effluent.Q + Recycle.Si*Recycle.Q = 0;
 Feed.Ss*Feed.Q + Waste.Ss*Waste.Q + Effluent.Ss*Effluent.Q + Recycle.Ss*Recycle.Q = 0;
 Feed.Xi*Feed.Q + Waste.Xi*Waste.Q + Effluent.Xi*Effluent.Q + Recycle.Xi*Recycle.Q = 0;
 Feed.Xs*Feed.Q + Waste.Xs*Waste.Q + Effluent.Xs*Effluent.Q + Recycle.Xs*Recycle.Q = 0;
 Feed.Xbh*Feed.Q + Waste.Xbh*Waste.Q + Effluent.Xbh*Effluent.Q + Recycle.Xbh*Recycle.Q = 0;
 Feed.Xba*Feed.Q + Waste.Xba*Waste.Q + Effluent.Xba*Effluent.Q + Recycle.Xba*Recycle.Q = 0;
 Feed.Xp*Feed.Q + Waste.Xp*Waste.Q + Effluent.Xp*Effluent.Q + Recycle.Xp*Recycle.Q = 0;
 Feed.So*Feed.Q + Waste.So*Waste.Q + Effluent.So*Effluent.Q + Recycle.So*Recycle.Q = 0;
 Feed.Sno*Feed.Q + Waste.Sno*Waste.Q + Effluent.Sno*Effluent.Q + Recycle.Sno*Recycle.Q = 0;
 Feed.Snh*Feed.Q + Waste.Snh*Waste.Q + Effluent.Snh*Effluent.Q + Recycle.Snh*Recycle.Q = 0;
 Feed.Snd*Feed.Q + Waste.Snd*Waste.Q + Effluent.Snd*Effluent.Q + Recycle.Snd*Recycle.Q = 0;
 Feed.Xnd*Feed.Q + Waste.Xnd*Waste.Q + Effluent.Xnd*Effluent.Q + Recycle.Xnd*Recycle.Q = 0;
 Feed.Salk*Feed.Q + Waste.Salk*Waste.Q + Effluent.Salk*Effluent.Q + Recycle.Salk*Recycle.Q = 0;


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
          fillPattern=FillPattern.Solid)}),                      Diagram(
        coordinateSystem(preserveAspectRatio=false), graphics={
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
          fillPattern=FillPattern.Solid)}));

end Settler_New_task9;
