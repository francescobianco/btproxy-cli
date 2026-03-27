.class Lfreemarker/core/JavaTemplateDateFormatFactory;
.super Lfreemarker/core/TemplateDateFormatFactory;
.source "JavaTemplateDateFormatFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;
    }
.end annotation


# static fields
.field private static final GLOBAL_FORMAT_CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final INSTANCE:Lfreemarker/core/JavaTemplateDateFormatFactory;

.field private static final LEAK_ALERT_DATE_FORMAT_CACHE_SIZE:I = 0x400

.field private static final LOG:Lfreemarker/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lfreemarker/core/JavaTemplateDateFormatFactory;

    invoke-direct {v0}, Lfreemarker/core/JavaTemplateDateFormatFactory;-><init>()V

    sput-object v0, Lfreemarker/core/JavaTemplateDateFormatFactory;->INSTANCE:Lfreemarker/core/JavaTemplateDateFormatFactory;

    .line 36
    const-string v0, "freemarker.runtime"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/core/JavaTemplateDateFormatFactory;->LOG:Lfreemarker/log/Logger;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lfreemarker/core/JavaTemplateDateFormatFactory;->GLOBAL_FORMAT_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lfreemarker/core/TemplateDateFormatFactory;-><init>()V

    return-void
.end method

.method private getJavaDateFormat(ILjava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;,
            Lfreemarker/core/InvalidFormatParametersException;
        }
    .end annotation

    .line 63
    new-instance v0, Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;

    invoke-direct {v0, p1, p2, p3, p4}, Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;-><init>(ILjava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)V

    .line 66
    sget-object p3, Lfreemarker/core/JavaTemplateDateFormatFactory;->GLOBAL_FORMAT_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/text/DateFormat;

    if-nez p4, :cond_b9

    .line 69
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "_"

    invoke-direct {v1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lfreemarker/core/JavaTemplateDateFormatFactory;->parseDateStyleToken(Ljava/lang/String;)I

    move-result v2

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v2, v5, :cond_68

    if-eqz p1, :cond_62

    if-eq p1, v4, :cond_59

    if-eq p1, v3, :cond_50

    const/4 v3, 0x3

    if-eq p1, v3, :cond_35

    goto :goto_68

    .line 85
    :cond_35
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/JavaTemplateDateFormatFactory;->parseDateStyleToken(Ljava/lang/String;)I

    move-result p1

    goto :goto_45

    :cond_44
    move p1, v2

    :goto_45
    if-eq p1, v5, :cond_68

    .line 87
    # getter for: Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;->locale:Ljava/util/Locale;
    invoke-static {v0}, Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;->access$000(Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;)Ljava/util/Locale;

    move-result-object p4

    invoke-static {v2, p1, p4}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p4

    goto :goto_68

    .line 81
    :cond_50
    # getter for: Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;->locale:Ljava/util/Locale;
    invoke-static {v0}, Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;->access$000(Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;)Ljava/util/Locale;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p4

    goto :goto_68

    .line 77
    :cond_59
    # getter for: Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;->locale:Ljava/util/Locale;
    invoke-static {v0}, Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;->access$000(Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;)Ljava/util/Locale;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p4

    goto :goto_68

    .line 74
    :cond_62
    new-instance p1, Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;

    invoke-direct {p1}, Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;-><init>()V

    throw p1

    :cond_68
    :goto_68
    if-nez p4, :cond_85

    .line 95
    :try_start_6a
    new-instance p1, Ljava/text/SimpleDateFormat;

    # getter for: Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;->locale:Ljava/util/Locale;
    invoke-static {v0}, Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;->access$000(Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;)Ljava/util/Locale;

    move-result-object p4

    invoke-direct {p1, p2, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6a .. :try_end_73} :catch_75

    move-object p4, p1

    goto :goto_85

    :catch_75
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 98
    new-instance p3, Lfreemarker/core/InvalidFormatParametersException;

    if-eqz p2, :cond_7f

    goto :goto_81

    :cond_7f
    const-string p2, "Invalid SimpleDateFormat pattern"

    :goto_81
    invoke-direct {p3, p2, p1}, Lfreemarker/core/InvalidFormatParametersException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 102
    :cond_85
    :goto_85
    # getter for: Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;->timeZone:Ljava/util/TimeZone;
    invoke-static {v0}, Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;->access$100(Lfreemarker/core/JavaTemplateDateFormatFactory$CacheKey;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 104
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    const/16 p2, 0x400

    if-lt p1, p2, :cond_b0

    .line 106
    const-class p1, Lfreemarker/core/JavaTemplateDateFormatFactory;

    monitor-enter p1

    .line 107
    :try_start_97
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lt v1, p2, :cond_a1

    .line 109
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_a2

    :cond_a1
    const/4 v4, 0x0

    .line 111
    :goto_a2
    monitor-exit p1
    :try_end_a3
    .catchall {:try_start_97 .. :try_end_a3} :catchall_ad

    if-eqz v4, :cond_b0

    .line 113
    sget-object p1, Lfreemarker/core/JavaTemplateDateFormatFactory;->LOG:Lfreemarker/log/Logger;

    const-string p2, "Global Java DateFormat cache has exceeded 1024 entries => cache flushed. Typical cause: Some template generates high variety of format pattern strings."

    invoke-virtual {p1, p2}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V

    goto :goto_b0

    :catchall_ad
    move-exception p2

    .line 111
    :try_start_ae
    monitor-exit p1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw p2

    .line 119
    :cond_b0
    :goto_b0
    invoke-virtual {p3, v0, p4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/DateFormat;

    if-eqz p1, :cond_b9

    move-object p4, p1

    .line 125
    :cond_b9
    invoke-virtual {p4}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/DateFormat;

    return-object p1
.end method

.method private parseDateStyleToken(Ljava/lang/String;)I
    .registers 3

    .line 158
    const-string v0, "short"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x3

    return p1

    .line 161
    :cond_a
    const-string v0, "medium"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x2

    return p1

    .line 164
    :cond_14
    const-string v0, "long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p1, 0x1

    return p1

    .line 167
    :cond_1e
    const-string v0, "full"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x0

    return p1

    :cond_28
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public get(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;ZLfreemarker/core/Environment;)Lfreemarker/core/TemplateDateFormat;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;,
            Lfreemarker/core/InvalidFormatParametersException;
        }
    .end annotation

    .line 53
    new-instance p5, Lfreemarker/core/JavaTemplateDateFormat;

    invoke-direct {p0, p2, p1, p3, p4}, Lfreemarker/core/JavaTemplateDateFormatFactory;->getJavaDateFormat(ILjava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-direct {p5, p1}, Lfreemarker/core/JavaTemplateDateFormat;-><init>(Ljava/text/DateFormat;)V

    return-object p5
.end method
