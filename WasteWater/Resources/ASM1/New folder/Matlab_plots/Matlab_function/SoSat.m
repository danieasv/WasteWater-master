time = sosat4(:,1);

hold on

yyaxis left
plot(time, sosat4(:,2), time, sosat8(:,2), time, sosat16(:,2));
ylabel('Overall Cost Index (OCI)')

yyaxis right
plot(time, sosat4(:,5), time, sosat8(:,5), time, sosat16(:,5));
ylabel('Sludge Production [SP]')
ylim([0 7000])

xlim([0 6])
legend('OCI: So_{sat} = 4', 'OCI: So_{sat} = 8', 'OCI: So_{sat} = 16', 'SP: So_{sat} = 4', 'SP: So_{sat} = 8', 'SP: So_{sat} = 16')
xlabel('Time [days]')
