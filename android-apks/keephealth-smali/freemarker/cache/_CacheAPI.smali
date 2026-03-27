.class public final Lfreemarker/cache/_CacheAPI;
.super Ljava/lang/Object;
.source "_CacheAPI.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static normalizeRootBasedName(Lfreemarker/cache/TemplateNameFormat;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/MalformedTemplateNameException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lfreemarker/cache/TemplateNameFormat;->normalizeRootBasedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rootBasedNameToAbsoluteName(Lfreemarker/cache/TemplateNameFormat;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/MalformedTemplateNameException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lfreemarker/cache/TemplateNameFormat;->rootBasedNameToAbsoluteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toRootBasedName(Lfreemarker/cache/TemplateNameFormat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/MalformedTemplateNameException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lfreemarker/cache/TemplateNameFormat;->toRootBasedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
