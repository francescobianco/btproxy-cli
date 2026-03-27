.class public Lfreemarker/cache/ByteArrayTemplateLoader;
.super Ljava/lang/Object;
.source "ByteArrayTemplateLoader.java"

# interfaces
.implements Lfreemarker/cache/TemplateLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/cache/ByteArrayTemplateLoader$ByteArrayTemplateSource;
    }
.end annotation


# instance fields
.field private final templates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lfreemarker/cache/ByteArrayTemplateLoader$ByteArrayTemplateSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/cache/ByteArrayTemplateLoader;->templates:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public closeTemplateSource(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 70
    iget-object v0, p0, Lfreemarker/cache/ByteArrayTemplateLoader;->templates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLastModified(Ljava/lang/Object;)J
    .registers 4

    .line 74
    check-cast p1, Lfreemarker/cache/ByteArrayTemplateLoader$ByteArrayTemplateSource;

    # getter for: Lfreemarker/cache/ByteArrayTemplateLoader$ByteArrayTemplateSource;->lastModified:J
    invoke-static {p1}, Lfreemarker/cache/ByteArrayTemplateLoader$ByteArrayTemplateSource;->access$000(Lfreemarker/cache/ByteArrayTemplateLoader$ByteArrayTemplateSource;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReader(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    check-cast p1, Lfreemarker/cache/ByteArrayTemplateLoader$ByteArrayTemplateSource;

    .line 79
    # getter for: Lfreemarker/cache/ByteArrayTemplateLoader$ByteArrayTemplateSource;->templateContent:[B
    invoke-static {p1}, Lfreemarker/cache/ByteArrayTemplateLoader$ByteArrayTemplateSource;->access$100(Lfreemarker/cache/ByteArrayTemplateLoader$ByteArrayTemplateSource;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public putTemplate(Ljava/lang/String;[B)V
    .registers 5

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lfreemarker/cache/ByteArrayTemplateLoader;->putTemplate(Ljava/lang/String;[BJ)V

    return-void
.end method

.method public putTemplate(Ljava/lang/String;[BJ)V
    .registers 7

    .line 53
    iget-object v0, p0, Lfreemarker/cache/ByteArrayTemplateLoader;->templates:Ljava/util/Map;

    new-instance v1, Lfreemarker/cache/ByteArrayTemplateLoader$ByteArrayTemplateSource;

    invoke-direct {v1, p1, p2, p3, p4}, Lfreemarker/cache/ByteArrayTemplateLoader$ByteArrayTemplateSource;-><init>(Ljava/lang/String;[BJ)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeTemplate(Ljava/lang/String;)Z
    .registers 3

    .line 63
    iget-object v0, p0, Lfreemarker/cache/ByteArrayTemplateLoader;->templates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-static {p0}, Lfreemarker/cache/TemplateLoaderUtils;->getClassNameForToString(Lfreemarker/cache/TemplateLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "(Map { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Lfreemarker/cache/ByteArrayTemplateLoader;->templates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-eq v2, v4, :cond_32

    .line 142
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    const/16 v4, 0xa

    if-le v2, v4, :cond_3c

    .line 145
    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 148
    :cond_3c
    invoke-static {v3}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v3, "=..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_49
    :goto_49
    if-eqz v2, :cond_50

    const/16 v1, 0x20

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :cond_50
    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
