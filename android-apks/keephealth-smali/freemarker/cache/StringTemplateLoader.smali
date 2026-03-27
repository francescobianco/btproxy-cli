.class public Lfreemarker/cache/StringTemplateLoader;
.super Ljava/lang/Object;
.source "StringTemplateLoader.java"

# interfaces
.implements Lfreemarker/cache/TemplateLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/cache/StringTemplateLoader$StringTemplateSource;
    }
.end annotation


# instance fields
.field private final templates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lfreemarker/cache/StringTemplateLoader$StringTemplateSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/cache/StringTemplateLoader;->templates:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public closeTemplateSource(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 124
    iget-object v0, p0, Lfreemarker/cache/StringTemplateLoader;->templates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLastModified(Ljava/lang/Object;)J
    .registers 4

    .line 128
    check-cast p1, Lfreemarker/cache/StringTemplateLoader$StringTemplateSource;

    # getter for: Lfreemarker/cache/StringTemplateLoader$StringTemplateSource;->lastModified:J
    invoke-static {p1}, Lfreemarker/cache/StringTemplateLoader$StringTemplateSource;->access$000(Lfreemarker/cache/StringTemplateLoader$StringTemplateSource;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReader(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;
    .registers 3

    .line 132
    new-instance p2, Ljava/io/StringReader;

    check-cast p1, Lfreemarker/cache/StringTemplateLoader$StringTemplateSource;

    # getter for: Lfreemarker/cache/StringTemplateLoader$StringTemplateSource;->templateContent:Ljava/lang/String;
    invoke-static {p1}, Lfreemarker/cache/StringTemplateLoader$StringTemplateSource;->access$100(Lfreemarker/cache/StringTemplateLoader$StringTemplateSource;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public putTemplate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lfreemarker/cache/StringTemplateLoader;->putTemplate(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public putTemplate(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 101
    iget-object v0, p0, Lfreemarker/cache/StringTemplateLoader;->templates:Ljava/util/Map;

    new-instance v1, Lfreemarker/cache/StringTemplateLoader$StringTemplateSource;

    invoke-direct {v1, p1, p2, p3, p4}, Lfreemarker/cache/StringTemplateLoader$StringTemplateSource;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeTemplate(Ljava/lang/String;)Z
    .registers 3

    .line 117
    iget-object v0, p0, Lfreemarker/cache/StringTemplateLoader;->templates:Ljava/util/Map;

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

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    invoke-static {p0}, Lfreemarker/cache/TemplateLoaderUtils;->getClassNameForToString(Lfreemarker/cache/TemplateLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "(Map { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v1, p0, Lfreemarker/cache/StringTemplateLoader;->templates:Ljava/util/Map;

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

    .line 202
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    const/16 v4, 0xa

    if-le v2, v4, :cond_3c

    .line 205
    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 208
    :cond_3c
    invoke-static {v3}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v3, "=..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_49
    :goto_49
    if-eqz v2, :cond_50

    const/16 v1, 0x20

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :cond_50
    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
