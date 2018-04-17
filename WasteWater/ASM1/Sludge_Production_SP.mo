within WasteWater.ASM1;
model Sludge_Production_SP "SP"

  extends WasteWater.Icons.sensor_TKN;
  extends Interfaces.stoichiometry;
  Interfaces.WWFlowAsm1in In annotation (Placement(transformation(extent={{-10,
            -110},{10,-90}})));
  Modelica.Blocks.Interfaces.RealOutput SP
    annotation (Placement(transformation(extent={{88,-10},{108,10}})));
  Modelica.Blocks.Interfaces.RealInput Qw annotation (Placement(transformation(
        extent={{-84,30},{-64,50}})));

  //Real SP(start=0);
  Real T(start=1e-3);

equation
  In.Q = 0.0;

  der(T) = 1.0;
  der(SP*T) = (0.75*(In.Xs+In.Xi+In.Xbh+In.Xba)*Qw);

  annotation (
    Documentation(info="This component measures the Total Kjeldal Nitrogen (TKN) and the
total nitrogen (N_total) concentration [g/m3] of ASM1 wastewater
and provides the result as output signal (to be further processed
with blocks of the Modelica.Blocks library).

signal[1] - TKN
signal[2] - N_total
"));
end Sludge_Production_SP;
