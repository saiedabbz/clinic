from django.db import models

from django.utils.translation import gettext as _
#from django.utils.text import slugify
from django.template.defaultfilters import slugify

class Home(models.Model):
    title       = models.CharField(_("title"), max_length=64)
    slug        = models.SlugField(_("slug"), max_length=100, allow_unicode=True, blank=True)
    description = models.TextField(_("description"), null=True, blank=True)
    image       = models.ImageField(_("image"),upload_to='images/', blank=True, null=True)

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        super(Home, self).save(*args, **kwargs)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = _('Home')
        verbose_name_plural = _('Homes')