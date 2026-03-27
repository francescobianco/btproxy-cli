.class Lfreemarker/cache/TemplateLookupStrategy$Default020300;
.super Lfreemarker/cache/TemplateLookupStrategy;
.source "TemplateLookupStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/TemplateLookupStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Default020300"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Lfreemarker/cache/TemplateLookupStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/cache/TemplateLookupStrategy$1;)V
    .registers 2

    .line 101
    invoke-direct {p0}, Lfreemarker/cache/TemplateLookupStrategy$Default020300;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Lfreemarker/cache/TemplateLookupContext;)Lfreemarker/cache/TemplateLookupResult;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Lfreemarker/cache/TemplateLookupContext;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/cache/TemplateLookupContext;->getTemplateLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lfreemarker/cache/TemplateLookupContext;->lookupWithLocalizedThenAcquisitionStrategy(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/cache/TemplateLookupResult;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 110
    const-string v0, "TemplateLookupStrategy.DEFAULT_2_3_0"

    return-object v0
.end method
