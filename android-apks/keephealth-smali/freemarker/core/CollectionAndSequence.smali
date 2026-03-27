.class public final Lfreemarker/core/CollectionAndSequence;
.super Ljava/lang/Object;
.source "CollectionAndSequence.java"

# interfaces
.implements Lfreemarker/template/TemplateCollectionModel;
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Ljava/io/Serializable;


# instance fields
.field private collection:Lfreemarker/template/TemplateCollectionModel;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfreemarker/template/TemplateModel;",
            ">;"
        }
    .end annotation
.end field

.field private sequence:Lfreemarker/template/TemplateSequenceModel;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateCollectionModel;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lfreemarker/core/CollectionAndSequence;->collection:Lfreemarker/template/TemplateCollectionModel;

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/TemplateSequenceModel;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lfreemarker/core/CollectionAndSequence;->sequence:Lfreemarker/template/TemplateSequenceModel;

    return-void
.end method

.method private initSequence()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lfreemarker/core/CollectionAndSequence;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_21

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/core/CollectionAndSequence;->data:Ljava/util/ArrayList;

    .line 81
    iget-object v0, p0, Lfreemarker/core/CollectionAndSequence;->collection:Lfreemarker/template/TemplateCollectionModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    .line 82
    :goto_11
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 83
    iget-object v1, p0, Lfreemarker/core/CollectionAndSequence;->data:Ljava/util/ArrayList;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_21
    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lfreemarker/core/CollectionAndSequence;->sequence:Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_9

    .line 60
    invoke-interface {v0, p1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 62
    :cond_9
    invoke-direct {p0}, Lfreemarker/core/CollectionAndSequence;->initSequence()V

    .line 63
    iget-object v0, p0, Lfreemarker/core/CollectionAndSequence;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lfreemarker/core/CollectionAndSequence;->collection:Lfreemarker/template/TemplateCollectionModel;

    if-eqz v0, :cond_9

    .line 52
    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    return-object v0

    .line 54
    :cond_9
    new-instance v0, Lfreemarker/core/SequenceIterator;

    iget-object v1, p0, Lfreemarker/core/CollectionAndSequence;->sequence:Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {v0, v1}, Lfreemarker/core/SequenceIterator;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    return-object v0
.end method

.method public size()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lfreemarker/core/CollectionAndSequence;->sequence:Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_9

    .line 69
    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    return v0

    .line 70
    :cond_9
    iget-object v0, p0, Lfreemarker/core/CollectionAndSequence;->collection:Lfreemarker/template/TemplateCollectionModel;

    instance-of v1, v0, Lfreemarker/template/TemplateCollectionModelEx;

    if-eqz v1, :cond_16

    .line 71
    check-cast v0, Lfreemarker/template/TemplateCollectionModelEx;

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModelEx;->size()I

    move-result v0

    return v0

    .line 73
    :cond_16
    invoke-direct {p0}, Lfreemarker/core/CollectionAndSequence;->initSequence()V

    .line 74
    iget-object v0, p0, Lfreemarker/core/CollectionAndSequence;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
