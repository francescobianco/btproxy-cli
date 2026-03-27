.class public Lfreemarker/cache/MultiTemplateLoader;
.super Ljava/lang/Object;
.source "MultiTemplateLoader.java"

# interfaces
.implements Lfreemarker/cache/StatefulTemplateLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/cache/MultiTemplateLoader$MultiSource;
    }
.end annotation


# instance fields
.field private final lastTemplateLoaderForName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lfreemarker/cache/TemplateLoader;",
            ">;"
        }
    .end annotation
.end field

.field private sticky:Z

.field private final templateLoaders:[Lfreemarker/cache/TemplateLoader;


# direct methods
.method public constructor <init>([Lfreemarker/cache/TemplateLoader;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/cache/MultiTemplateLoader;->lastTemplateLoaderForName:Ljava/util/Map;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lfreemarker/cache/MultiTemplateLoader;->sticky:Z

    .line 54
    const-string v0, "templateLoaders"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p1}, [Lfreemarker/cache/TemplateLoader;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lfreemarker/cache/TemplateLoader;

    iput-object p1, p0, Lfreemarker/cache/MultiTemplateLoader;->templateLoaders:[Lfreemarker/cache/TemplateLoader;

    return-void
.end method


# virtual methods
.method public closeTemplateSource(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    check-cast p1, Lfreemarker/cache/MultiTemplateLoader$MultiSource;

    invoke-virtual {p1}, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->close()V

    return-void
.end method

.method public findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-boolean v0, p0, Lfreemarker/cache/MultiTemplateLoader;->sticky:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 64
    iget-object v0, p0, Lfreemarker/cache/MultiTemplateLoader;->lastTemplateLoaderForName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/cache/TemplateLoader;

    if-eqz v0, :cond_1c

    .line 66
    invoke-interface {v0, p1}, Lfreemarker/cache/TemplateLoader;->findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 68
    new-instance p1, Lfreemarker/cache/MultiTemplateLoader$MultiSource;

    invoke-direct {p1, v2, v0}, Lfreemarker/cache/MultiTemplateLoader$MultiSource;-><init>(Ljava/lang/Object;Lfreemarker/cache/TemplateLoader;)V

    return-object p1

    :cond_1b
    move-object v0, v1

    .line 77
    :cond_1c
    iget-object v2, p0, Lfreemarker/cache/MultiTemplateLoader;->templateLoaders:[Lfreemarker/cache/TemplateLoader;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_3e

    aget-object v5, v2, v4

    if-eq v0, v5, :cond_3b

    .line 79
    invoke-interface {v5, p1}, Lfreemarker/cache/TemplateLoader;->findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3b

    .line 81
    iget-boolean v0, p0, Lfreemarker/cache/MultiTemplateLoader;->sticky:Z

    if-eqz v0, :cond_35

    .line 82
    iget-object v0, p0, Lfreemarker/cache/MultiTemplateLoader;->lastTemplateLoaderForName:Ljava/util/Map;

    invoke-interface {v0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_35
    new-instance p1, Lfreemarker/cache/MultiTemplateLoader$MultiSource;

    invoke-direct {p1, v6, v5}, Lfreemarker/cache/MultiTemplateLoader$MultiSource;-><init>(Ljava/lang/Object;Lfreemarker/cache/TemplateLoader;)V

    return-object p1

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 89
    :cond_3e
    iget-boolean v0, p0, Lfreemarker/cache/MultiTemplateLoader;->sticky:Z

    if-eqz v0, :cond_47

    .line 90
    iget-object v0, p0, Lfreemarker/cache/MultiTemplateLoader;->lastTemplateLoaderForName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    return-object v1
.end method

.method public getLastModified(Ljava/lang/Object;)J
    .registers 4

    .line 97
    check-cast p1, Lfreemarker/cache/MultiTemplateLoader$MultiSource;

    invoke-virtual {p1}, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReader(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    check-cast p1, Lfreemarker/cache/MultiTemplateLoader$MultiSource;

    invoke-virtual {p1, p2}, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->getReader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateLoader(I)Lfreemarker/cache/TemplateLoader;
    .registers 3

    .line 209
    iget-object v0, p0, Lfreemarker/cache/MultiTemplateLoader;->templateLoaders:[Lfreemarker/cache/TemplateLoader;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTemplateLoaderCount()I
    .registers 2

    .line 199
    iget-object v0, p0, Lfreemarker/cache/MultiTemplateLoader;->templateLoaders:[Lfreemarker/cache/TemplateLoader;

    array-length v0, v0

    return v0
.end method

.method public isSticky()Z
    .registers 2

    .line 218
    iget-boolean v0, p0, Lfreemarker/cache/MultiTemplateLoader;->sticky:Z

    return v0
.end method

.method public resetState()V
    .registers 6

    .line 114
    iget-object v0, p0, Lfreemarker/cache/MultiTemplateLoader;->lastTemplateLoaderForName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 115
    iget-object v0, p0, Lfreemarker/cache/MultiTemplateLoader;->templateLoaders:[Lfreemarker/cache/TemplateLoader;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 116
    instance-of v4, v3, Lfreemarker/cache/StatefulTemplateLoader;

    if-eqz v4, :cond_16

    .line 117
    check-cast v3, Lfreemarker/cache/StatefulTemplateLoader;

    invoke-interface {v3}, Lfreemarker/cache/StatefulTemplateLoader;->resetState()V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public setSticky(Z)V
    .registers 2

    .line 229
    iput-boolean p1, p0, Lfreemarker/cache/MultiTemplateLoader;->sticky:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiTemplateLoader("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 183
    :goto_8
    iget-object v2, p0, Lfreemarker/cache/MultiTemplateLoader;->templateLoaders:[Lfreemarker/cache/TemplateLoader;

    array-length v2, v2

    if-ge v1, v2, :cond_2f

    if-eqz v1, :cond_14

    .line 185
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_14
    const-string v2, "loader"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lfreemarker/cache/MultiTemplateLoader;->templateLoaders:[Lfreemarker/cache/TemplateLoader;

    aget-object v1, v4, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_8

    .line 189
    :cond_2f
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
