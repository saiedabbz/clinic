from django.db import models
from django.utils.translation import gettext as _
# from django.template.defaultfilters import slugify

class Config(models.Model):
    title = models.CharField(_("title"), max_length=64)
    description = models.TextField(_("description"), max_length=120, null=True, blank=True)
    slug = models.SlugField(_("slug"), blank=True, null=True)
    value = models.IntegerField(_("value"), blank=True, null=True)
    image = models.ImageField(_("image"),upload_to='config_img/', blank=True, null=True)

    # def save(self, *args, **kwargs):
    #     self.slug = slugify(self.title)
    #     super(Config, self).save(*args, **kwargs)

    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name = _('Config')
        verbose_name_plural = _('Configs')