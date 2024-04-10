from django.db import models

from django.utils.translation import gettext as _

class Home(models.Model):
    title       = models.CharField(_("title"), max_length=64)
    slug        = models.SlugField(_("slug"),max_length=100, unique=True)
    description = models.TextField(_("description"), null=True, blank=True)
    image       = models.ImageField(_("image"),upload_to='images/', blank=True, null=True)

    def __str__(self):
        return self.title
    
    class Meta:
        ordering = ("-id",)

    class Meta:
        verbose_name = _('Home')
        verbose_name_plural = _('Homes')