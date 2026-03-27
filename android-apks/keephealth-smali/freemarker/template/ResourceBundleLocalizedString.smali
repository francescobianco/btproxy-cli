.class public Lfreemarker/template/ResourceBundleLocalizedString;
.super Lfreemarker/template/LocalizedString;
.source "ResourceBundleLocalizedString.java"


# instance fields
.field private resourceBundleLookupKey:Ljava/lang/String;

.field private resourceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Lfreemarker/template/LocalizedString;-><init>()V

    .line 41
    iput-object p1, p0, Lfreemarker/template/ResourceBundleLocalizedString;->resourceBundleLookupKey:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lfreemarker/template/ResourceBundleLocalizedString;->resourceKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 48
    :try_start_0
    iget-object v0, p0, Lfreemarker/template/ResourceBundleLocalizedString;->resourceBundleLookupKey:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lfreemarker/template/ResourceBundleLocalizedString;->resourceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 51
    new-instance v0, Lfreemarker/template/TemplateModelException;

    const-string v1, "missing resource"

    invoke-direct {v0, v1, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
