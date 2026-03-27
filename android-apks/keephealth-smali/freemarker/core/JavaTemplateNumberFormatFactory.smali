.class Lfreemarker/core/JavaTemplateNumberFormatFactory;
.super Lfreemarker/core/TemplateNumberFormatFactory;
.source "JavaTemplateNumberFormatFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/JavaTemplateNumberFormatFactory$CacheKey;
    }
.end annotation


# static fields
.field private static final GLOBAL_FORMAT_CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lfreemarker/core/JavaTemplateNumberFormatFactory$CacheKey;",
            "Ljava/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final INSTANCE:Lfreemarker/core/JavaTemplateNumberFormatFactory;

.field private static final LEAK_ALERT_NUMBER_FORMAT_CACHE_SIZE:I = 0x400

.field private static final LOG:Lfreemarker/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lfreemarker/core/JavaTemplateNumberFormatFactory;

    invoke-direct {v0}, Lfreemarker/core/JavaTemplateNumberFormatFactory;-><init>()V

    sput-object v0, Lfreemarker/core/JavaTemplateNumberFormatFactory;->INSTANCE:Lfreemarker/core/JavaTemplateNumberFormatFactory;

    .line 35
    const-string v0, "freemarker.runtime"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/core/JavaTemplateNumberFormatFactory;->LOG:Lfreemarker/log/Logger;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lfreemarker/core/JavaTemplateNumberFormatFactory;->GLOBAL_FORMAT_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lfreemarker/core/TemplateNumberFormatFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/Locale;Lfreemarker/core/Environment;)Lfreemarker/core/TemplateNumberFormat;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidFormatParametersException;
        }
    .end annotation

    .line 48
    new-instance v0, Lfreemarker/core/JavaTemplateNumberFormatFactory$CacheKey;

    invoke-direct {v0, p1, p2}, Lfreemarker/core/JavaTemplateNumberFormatFactory$CacheKey;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 49
    sget-object v1, Lfreemarker/core/JavaTemplateNumberFormatFactory;->GLOBAL_FORMAT_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/NumberFormat;

    if-nez v2, :cond_88

    .line 51
    const-string v2, "number"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 52
    invoke-static {p2}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    :goto_1b
    move-object v2, p2

    goto :goto_49

    .line 53
    :cond_1d
    const-string v2, "currency"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 54
    invoke-static {p2}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    goto :goto_1b

    .line 55
    :cond_2a
    const-string v2, "percent"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 56
    invoke-static {p2}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    goto :goto_1b

    .line 57
    :cond_37
    const-string v2, "computer"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 58
    invoke-virtual {p3}, Lfreemarker/core/Environment;->getCNumberFormat()Ljava/text/NumberFormat;

    move-result-object p2

    goto :goto_1b

    .line 61
    :cond_44
    :try_start_44
    invoke-static {p1, p2}, Lfreemarker/core/ExtendedDecimalFormatParser;->parse(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/DecimalFormat;

    move-result-object p2
    :try_end_48
    .catch Ljava/text/ParseException; {:try_start_44 .. :try_end_48} :catch_78

    goto :goto_1b

    .line 69
    :goto_49
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    const/16 p3, 0x400

    if-lt p2, p3, :cond_6e

    .line 71
    const-class p2, Lfreemarker/core/JavaTemplateNumberFormatFactory;

    monitor-enter p2

    .line 72
    :try_start_54
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lt v3, p3, :cond_5f

    .line 74
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 p3, 0x1

    goto :goto_60

    :cond_5f
    const/4 p3, 0x0

    .line 76
    :goto_60
    monitor-exit p2
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_6b

    if-eqz p3, :cond_6e

    .line 78
    sget-object p2, Lfreemarker/core/JavaTemplateNumberFormatFactory;->LOG:Lfreemarker/log/Logger;

    const-string p3, "Global Java NumberFormat cache has exceeded 1024 entries => cache flushed. Typical cause: Some template generates high variety of format pattern strings."

    invoke-virtual {p2, p3}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V

    goto :goto_6e

    :catchall_6b
    move-exception p1

    .line 76
    :try_start_6c
    monitor-exit p2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p1

    .line 84
    :cond_6e
    :goto_6e
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/text/NumberFormat;

    if-eqz p2, :cond_88

    move-object v2, p2

    goto :goto_88

    :catch_78
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 64
    new-instance p3, Lfreemarker/core/InvalidFormatParametersException;

    if-eqz p2, :cond_82

    goto :goto_84

    :cond_82
    const-string p2, "Invalid DecimalFormat pattern"

    :goto_84
    invoke-direct {p3, p2, p1}, Lfreemarker/core/InvalidFormatParametersException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 91
    :cond_88
    :goto_88
    invoke-virtual {v2}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/text/NumberFormat;

    .line 93
    new-instance p3, Lfreemarker/core/JavaTemplateNumberFormat;

    invoke-direct {p3, p2, p1}, Lfreemarker/core/JavaTemplateNumberFormat;-><init>(Ljava/text/NumberFormat;Ljava/lang/String;)V

    return-object p3
.end method
