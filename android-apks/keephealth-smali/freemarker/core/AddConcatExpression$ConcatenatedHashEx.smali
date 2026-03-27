.class final Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;
.super Lfreemarker/core/AddConcatExpression$ConcatenatedHash;
.source "AddConcatExpression.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/AddConcatExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedHashEx"
.end annotation


# instance fields
.field private keys:Lfreemarker/core/CollectionAndSequence;

.field private values:Lfreemarker/core/CollectionAndSequence;


# direct methods
.method constructor <init>(Lfreemarker/template/TemplateHashModelEx;Lfreemarker/template/TemplateHashModelEx;)V
    .registers 3

    .line 245
    invoke-direct {p0, p1, p2}, Lfreemarker/core/AddConcatExpression$ConcatenatedHash;-><init>(Lfreemarker/template/TemplateHashModel;Lfreemarker/template/TemplateHashModel;)V

    return-void
.end method

.method private static addKeys(Ljava/util/Set;Lfreemarker/template/SimpleSequence;Lfreemarker/template/TemplateHashModelEx;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 278
    invoke-interface {p2}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object p2

    invoke-interface {p2}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p2

    .line 279
    :cond_8
    :goto_8
    invoke-interface {p2}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 280
    invoke-interface {p2}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateScalarModel;

    .line 281
    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 284
    invoke-virtual {p1, v0}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    goto :goto_8

    :cond_22
    return-void
.end method

.method private initKeys()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->keys:Lfreemarker/core/CollectionAndSequence;

    if-nez v0, :cond_25

    .line 268
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 269
    new-instance v1, Lfreemarker/template/SimpleSequence;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lfreemarker/template/SimpleSequence;-><init>(I)V

    .line 270
    iget-object v2, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->left:Lfreemarker/template/TemplateHashModel;

    check-cast v2, Lfreemarker/template/TemplateHashModelEx;

    invoke-static {v0, v1, v2}, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->addKeys(Ljava/util/Set;Lfreemarker/template/SimpleSequence;Lfreemarker/template/TemplateHashModelEx;)V

    .line 271
    iget-object v2, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->right:Lfreemarker/template/TemplateHashModel;

    check-cast v2, Lfreemarker/template/TemplateHashModelEx;

    invoke-static {v0, v1, v2}, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->addKeys(Ljava/util/Set;Lfreemarker/template/SimpleSequence;Lfreemarker/template/TemplateHashModelEx;)V

    .line 272
    new-instance v0, Lfreemarker/core/CollectionAndSequence;

    invoke-direct {v0, v1}, Lfreemarker/core/CollectionAndSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object v0, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->keys:Lfreemarker/core/CollectionAndSequence;

    :cond_25
    return-void
.end method

.method private initValues()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->values:Lfreemarker/core/CollectionAndSequence;

    if-nez v0, :cond_33

    .line 292
    new-instance v0, Lfreemarker/template/SimpleSequence;

    invoke-virtual {p0}, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleSequence;-><init>(I)V

    .line 295
    iget-object v1, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->keys:Lfreemarker/core/CollectionAndSequence;

    invoke-virtual {v1}, Lfreemarker/core/CollectionAndSequence;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2c

    .line 297
    iget-object v3, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->keys:Lfreemarker/core/CollectionAndSequence;

    invoke-virtual {v3, v2}, Lfreemarker/core/CollectionAndSequence;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v3

    check-cast v3, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v3}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 299
    :cond_2c
    new-instance v1, Lfreemarker/core/CollectionAndSequence;

    invoke-direct {v1, v0}, Lfreemarker/core/CollectionAndSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object v1, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->values:Lfreemarker/core/CollectionAndSequence;

    :cond_33
    return-void
.end method


# virtual methods
.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->initKeys()V

    .line 256
    iget-object v0, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->keys:Lfreemarker/core/CollectionAndSequence;

    return-object v0
.end method

.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->initKeys()V

    .line 250
    iget-object v0, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->keys:Lfreemarker/core/CollectionAndSequence;

    invoke-virtual {v0}, Lfreemarker/core/CollectionAndSequence;->size()I

    move-result v0

    return v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 261
    invoke-direct {p0}, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->initValues()V

    .line 262
    iget-object v0, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHashEx;->values:Lfreemarker/core/CollectionAndSequence;

    return-object v0
.end method
