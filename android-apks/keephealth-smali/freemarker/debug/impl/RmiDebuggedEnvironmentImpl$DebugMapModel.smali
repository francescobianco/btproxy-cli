.class abstract Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugMapModel;
.super Ljava/lang/Object;
.source "RmiDebuggedEnvironmentImpl.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DebugMapModel"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$1;)V
    .registers 2

    .line 129
    invoke-direct {p0}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugMapModel;-><init>()V

    return-void
.end method

.method static composeList(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;
    .registers 3

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public isEmpty()Z
    .registers 2

    .line 149
    invoke-virtual {p0}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugMapModel;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method abstract keySet()Ljava/util/Collection;
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 3

    .line 135
    new-instance v0, Lfreemarker/template/SimpleCollection;

    invoke-virtual {p0}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugMapModel;->keySet()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 131
    invoke-virtual {p0}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugMapModel;->keySet()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugMapModel;->keySet()Ljava/util/Collection;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugMapModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 145
    :cond_25
    new-instance v0, Lfreemarker/template/SimpleCollection;

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
