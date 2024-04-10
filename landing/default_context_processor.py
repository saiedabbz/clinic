from config.models import Config

def load_configs():
    configs = Config.objects.all()
    g_configs = {}
    for config in configs:
        g_configs[config.slug] = config

    return g_configs



def render(request):
    
    context = {
        'g_configs': load_configs()
    }
    return context