.class public abstract Lfreemarker/cache/TemplateLookupContext;
.super Ljava/lang/Object;
.source "TemplateLookupContext.java"


# instance fields
.field private final customLookupCondition:Ljava/lang/Object;

.field private final templateLocale:Ljava/util/Locale;

.field private final templateName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lfreemarker/cache/TemplateLookupContext;->templateName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lfreemarker/cache/TemplateLookupContext;->templateLocale:Ljava/util/Locale;

    .line 69
    iput-object p3, p0, Lfreemarker/cache/TemplateLookupContext;->customLookupCondition:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createNegativeLookupResult()Lfreemarker/cache/TemplateLookupResult;
    .registers 2

    .line 105
    invoke-static {}, Lfreemarker/cache/TemplateLookupResult;->createNegativeResult()Lfreemarker/cache/TemplateLookupResult;

    move-result-object v0

    return-object v0
.end method

.method public getCustomLookupCondition()Ljava/lang/Object;
    .registers 2

    .line 96
    iget-object v0, p0, Lfreemarker/cache/TemplateLookupContext;->customLookupCondition:Ljava/lang/Object;

    return-object v0
.end method

.method public getTemplateLocale()Ljava/util/Locale;
    .registers 2

    .line 84
    iget-object v0, p0, Lfreemarker/cache/TemplateLookupContext;->templateLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lfreemarker/cache/TemplateLookupContext;->templateName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract lookupWithAcquisitionStrategy(Ljava/lang/String;)Lfreemarker/cache/TemplateLookupResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract lookupWithLocalizedThenAcquisitionStrategy(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/cache/TemplateLookupResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
