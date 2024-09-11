var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello World!");
app.Urls.Add("http://0.0.0.0:5000");

app.Run();
