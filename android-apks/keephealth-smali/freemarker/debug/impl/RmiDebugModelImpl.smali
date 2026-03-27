.class Lfreemarker/debug/impl/RmiDebugModelImpl;
.super Ljava/rmi/server/UnicastRemoteObject;
.source "RmiDebugModelImpl.java"

# interfaces
.implements Lfreemarker/debug/DebugModel;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final model:Lfreemarker/template/TemplateModel;

.field private final type:I


# direct methods
.method constructor <init>(Lfreemarker/template/TemplateModel;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/rmi/server/UnicastRemoteObject;-><init>()V

    .line 54
    iput-object p1, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->model:Lfreemarker/template/TemplateModel;

    .line 55
    invoke-static {p1}, Lfreemarker/debug/impl/RmiDebugModelImpl;->calculateType(Lfreemarker/template/TemplateModel;)I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->type:I

    return-void
.end method

.method private static calculateType(Lfreemarker/template/TemplateModel;)I
    .registers 3

    .line 139
    instance-of v0, p0, Lfreemarker/template/TemplateScalarModel;

    .line 140
    instance-of v1, p0, Lfreemarker/template/TemplateNumberModel;

    if-eqz v1, :cond_8

    add-int/lit8 v0, v0, 0x2

    .line 141
    :cond_8
    instance-of v1, p0, Lfreemarker/template/TemplateDateModel;

    if-eqz v1, :cond_e

    add-int/lit8 v0, v0, 0x4

    .line 142
    :cond_e
    instance-of v1, p0, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v1, :cond_14

    add-int/lit8 v0, v0, 0x8

    .line 143
    :cond_14
    instance-of v1, p0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_1a

    add-int/lit8 v0, v0, 0x10

    .line 144
    :cond_1a
    instance-of v1, p0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v1, :cond_20

    add-int/lit8 v0, v0, 0x20

    .line 145
    :cond_20
    instance-of v1, p0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v1, :cond_27

    add-int/lit16 v0, v0, 0x80

    goto :goto_2d

    .line 146
    :cond_27
    instance-of v1, p0, Lfreemarker/template/TemplateHashModel;

    if-eqz v1, :cond_2d

    add-int/lit8 v0, v0, 0x40

    .line 147
    :cond_2d
    :goto_2d
    instance-of v1, p0, Lfreemarker/template/TemplateMethodModelEx;

    if-eqz v1, :cond_34

    add-int/lit16 v0, v0, 0x200

    goto :goto_3a

    .line 148
    :cond_34
    instance-of v1, p0, Lfreemarker/template/TemplateMethodModel;

    if-eqz v1, :cond_3a

    add-int/lit16 v0, v0, 0x100

    .line 149
    :cond_3a
    :goto_3a
    instance-of p0, p0, Lfreemarker/template/TemplateTransformModel;

    if-eqz p0, :cond_40

    add-int/lit16 v0, v0, 0x400

    :cond_40
    return v0
.end method

.method private static getDebugModel(Lfreemarker/template/TemplateModel;)Lfreemarker/debug/DebugModel;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;->getCachedWrapperFor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/debug/DebugModel;

    return-object p0
.end method


# virtual methods
.method public get(I)Lfreemarker/debug/DebugModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->model:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/debug/impl/RmiDebugModelImpl;->getDebugModel(Lfreemarker/template/TemplateModel;)Lfreemarker/debug/DebugModel;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/debug/DebugModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->model:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateHashModel;

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/debug/impl/RmiDebugModelImpl;->getDebugModel(Lfreemarker/template/TemplateModel;)Lfreemarker/debug/DebugModel;

    move-result-object p1

    return-object p1
.end method

.method public get(II)[Lfreemarker/debug/DebugModel;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    sub-int v0, p2, p1

    .line 93
    new-array v0, v0, [Lfreemarker/debug/DebugModel;

    .line 94
    iget-object v1, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->model:Lfreemarker/template/TemplateModel;

    check-cast v1, Lfreemarker/template/TemplateSequenceModel;

    move v2, p1

    :goto_9
    if-ge v2, p2, :cond_1a

    sub-int v3, v2, p1

    .line 96
    invoke-interface {v1, v2}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v4

    invoke-static {v4}, Lfreemarker/debug/impl/RmiDebugModelImpl;->getDebugModel(Lfreemarker/template/TemplateModel;)Lfreemarker/debug/DebugModel;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1a
    return-object v0
.end method

.method public get([Ljava/lang/String;)[Lfreemarker/debug/DebugModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 115
    array-length v0, p1

    new-array v0, v0, [Lfreemarker/debug/DebugModel;

    .line 116
    iget-object v1, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->model:Lfreemarker/template/TemplateModel;

    check-cast v1, Lfreemarker/template/TemplateHashModel;

    const/4 v2, 0x0

    .line 117
    :goto_8
    array-length v3, p1

    if-ge v2, v3, :cond_1a

    .line 118
    aget-object v3, p1, v2

    invoke-interface {v1, v3}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    invoke-static {v3}, Lfreemarker/debug/impl/RmiDebugModelImpl;->getDebugModel(Lfreemarker/template/TemplateModel;)Lfreemarker/debug/DebugModel;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    return-object v0
.end method

.method public getAsBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->model:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAsDate()Ljava/util/Date;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->model:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateDateModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->model:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateNumberModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->model:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollection()[Lfreemarker/debug/DebugModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v1, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->model:Lfreemarker/template/TemplateModel;

    check-cast v1, Lfreemarker/template/TemplateCollectionModel;

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    .line 104
    :goto_d
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 105
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    invoke-static {v2}, Lfreemarker/debug/impl/RmiDebugModelImpl;->getDebugModel(Lfreemarker/template/TemplateModel;)Lfreemarker/debug/DebugModel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 107
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lfreemarker/debug/DebugModel;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfreemarker/debug/DebugModel;

    check-cast v0, [Lfreemarker/debug/DebugModel;

    return-object v0
.end method

.method public getDateType()I
    .registers 2

    .line 74
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->model:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateDateModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v0

    return v0
.end method

.method public getModelTypes()I
    .registers 2

    .line 134
    iget v0, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->type:I

    return v0
.end method

.method public keys()[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->model:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateHashModelEx;

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    .line 127
    :goto_11
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 128
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v2}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 130
    :cond_25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebugModelImpl;->model:Lfreemarker/template/TemplateModel;

    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_d

    .line 83
    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    return v0

    .line 85
    :cond_d
    check-cast v0, Lfreemarker/template/TemplateHashModelEx;

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->size()I

    move-result v0

    return v0
.end method
