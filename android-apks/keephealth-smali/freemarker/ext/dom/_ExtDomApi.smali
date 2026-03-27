.class public final Lfreemarker/ext/dom/_ExtDomApi;
.super Ljava/lang/Object;
.source "_ExtDomApi.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isXMLNameLike(Ljava/lang/String;)Z
    .registers 1

    .line 36
    invoke-static {p0}, Lfreemarker/ext/dom/DomStringUtil;->isXMLNameLike(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static matchesName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/Environment;)Z
    .registers 4

    .line 40
    invoke-static {p0, p1, p2, p3}, Lfreemarker/ext/dom/DomStringUtil;->matchesName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/Environment;)Z

    move-result p0

    return p0
.end method
