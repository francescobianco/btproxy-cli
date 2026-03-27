.class public final Lfreemarker/core/AliasTemplateNumberFormatFactory;
.super Lfreemarker/core/TemplateNumberFormatFactory;
.source "AliasTemplateNumberFormatFactory.java"


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

    .line 41
    invoke-direct {p0}, Lfreemarker/core/TemplateNumberFormatFactory;-><init>()V

    .line 42
    iput-object p1, p0, Lfreemarker/core/AliasTemplateNumberFormatFactory;->defaultTargetFormatString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lfreemarker/core/AliasTemplateNumberFormatFactory;->localizedTargetFormatStrings:Ljava/util/Map;

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

    .line 59
    invoke-direct {p0}, Lfreemarker/core/TemplateNumberFormatFactory;-><init>()V

    .line 60
    iput-object p1, p0, Lfreemarker/core/AliasTemplateNumberFormatFactory;->defaultTargetFormatString:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lfreemarker/core/AliasTemplateNumberFormatFactory;->localizedTargetFormatStrings:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/Locale;Lfreemarker/core/Environment;)Lfreemarker/core/TemplateNumberFormat;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 67
    invoke-static {p1}, Lfreemarker/core/TemplateFormatUtil;->checkHasNoParameters(Ljava/lang/String;)V

    .line 70
    :try_start_3
    iget-object v0, p0, Lfreemarker/core/AliasTemplateNumberFormatFactory;->localizedTargetFormatStrings:Ljava/util/Map;

    if-eqz v0, :cond_1f

    .line 72
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    :goto_e
    if-nez v0, :cond_20

    .line 74
    invoke-static {v1}, Lfreemarker/core/_CoreLocaleUtils;->getLessSpecificLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 75
    iget-object v0, p0, Lfreemarker/core/AliasTemplateNumberFormatFactory;->localizedTargetFormatStrings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_e

    :cond_1f
    const/4 v0, 0x0

    :cond_20
    if-nez v0, :cond_24

    .line 81
    iget-object v0, p0, Lfreemarker/core/AliasTemplateNumberFormatFactory;->defaultTargetFormatString:Ljava/lang/String;

    .line 83
    :cond_24
    invoke-virtual {p3, v0, p2}, Lfreemarker/core/Environment;->getTemplateNumberFormat(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/core/TemplateNumberFormat;

    move-result-object p1
    :try_end_28
    .catch Lfreemarker/core/TemplateValueFormatException; {:try_start_3 .. :try_end_28} :catch_29

    return-object p1

    :catch_29
    move-exception p2

    .line 85
    new-instance p3, Lfreemarker/core/AliasTargetTemplateValueFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create format based on target format string,  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Reason given: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lfreemarker/core/TemplateValueFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lfreemarker/core/AliasTargetTemplateValueFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method
