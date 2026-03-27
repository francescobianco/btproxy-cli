.class Lfreemarker/template/Configuration$LegacyDefaultFileTemplateLoader;
.super Lfreemarker/cache/FileTemplateLoader;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyDefaultFileTemplateLoader"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    invoke-direct {p0}, Lfreemarker/cache/FileTemplateLoader;-><init>()V

    return-void
.end method
