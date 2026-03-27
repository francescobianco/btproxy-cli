.class public final Lfreemarker/core/AliasTemplateDateFormatFactory;
.super Lfreemarker/core/TemplateDateFormatFactory;
.source "AliasTemplateDateFormatFactory.java"


# instance fields
.field private final defaultTargetFormatString:Ljava/lang/String;

.field private final localizedTargetFormatStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lfreemarker/core/TemplateDateFormatFactory;-><init>()V

    .line 43
    iput-object p1, p0, Lfreemarker/core/AliasTemplateDateFormatFactory;->defaultTargetFormatString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lfreemarker/core/AliasTemplateDateFormatFactory;->localizedTargetFormatStrings:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lfreemarker/core/TemplateDateFormatFactory;-><init>()V

    .line 61
    iput-object p1, p0, Lfreemarker/core/AliasTemplateDateFormatFactory;->defaultTargetFormatString:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lfreemarker/core/AliasTemplateDateFormatFactory;->localizedTargetFormatStrings:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;ZLfreemarker/core/Environment;)Lfreemarker/core/TemplateDateFormat;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 68
    invoke-static {p1}, Lfreemarker/core/TemplateFormatUtil;->checkHasNoParameters(Ljava/lang/String;)V

    .line 71
    :try_start_3
    iget-object v0, p0, Lfreemarker/core/AliasTemplateDateFormatFactory;->localizedTargetFormatStrings:Ljava/util/Map;

    if-eqz v0, :cond_1f

    .line 73
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, p3

    :goto_e
    if-nez v0, :cond_20

    .line 75
    invoke-static {v1}, Lfreemarker/core/_CoreLocaleUtils;->getLessSpecificLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 76
    iget-object v0, p0, Lfreemarker/core/AliasTemplateDateFormatFactory;->localizedTargetFormatStrings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_e

    :cond_1f
    const/4 v0, 0x0

    :cond_20
    if-nez v0, :cond_24

    .line 82
    iget-object v0, p0, Lfreemarker/core/AliasTemplateDateFormatFactory;->defaultTargetFormatString:Ljava/lang/String;

    :cond_24
    move-object v1, v0

    move-object v0, p6

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 84
    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/Environment;->getTemplateDateFormat(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;Z)Lfreemarker/core/TemplateDateFormat;

    move-result-object p1
    :try_end_2e
    .catch Lfreemarker/core/TemplateValueFormatException; {:try_start_3 .. :try_end_2e} :catch_2f

    return-object p1

    :catch_2f
    move-exception p2

    .line 86
    new-instance p3, Lfreemarker/core/AliasTargetTemplateValueFormatException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Failed to create format based on target format string,  "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, ". Reason given: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lfreemarker/core/TemplateValueFormatException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lfreemarker/core/AliasTargetTemplateValueFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method
