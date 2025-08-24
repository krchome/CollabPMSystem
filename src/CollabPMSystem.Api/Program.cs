using CollabPMSystem.Infrastructure.Extensions;


var builder = WebApplication.CreateBuilder(args);
builder.Services.AddInfrastructure(builder.Configuration);
var app = builder.Build();
app.Run();

// Add services to the container.
// Learn more about configuring OpenAPI at https://aka.ms/aspnet/openapi

