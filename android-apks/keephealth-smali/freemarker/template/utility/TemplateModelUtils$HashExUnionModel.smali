.class final Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;
.super Lfreemarker/template/utility/TemplateModelUtils$AbstractHashUnionModel;
.source "TemplateModelUtils.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/TemplateModelUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HashExUnionModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfreemarker/template/utility/TemplateModelUtils$AbstractHashUnionModel<",
        "Lfreemarker/template/TemplateHashModelEx;",
        ">;",
        "Lfreemarker/template/TemplateHashModelEx;"
    }
.end annotation


# instance fields
.field private keys:Lfreemarker/core/CollectionAndSequence;

.field private values:Lfreemarker/core/CollectionAndSequence;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lfreemarker/template/TemplateHashModelEx;",
            ">;)V"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1}, Lfreemarker/template/utility/TemplateModelUtils$AbstractHashUnionModel;-><init>(Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lfreemarker/template/utility/TemplateModelUtils$1;)V
    .registers 3

    .line 224
    invoke-direct {p0, p1}, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private static addKeys(Ljava/util/Set;Lfreemarker/template/SimpleSequence;Lfreemarker/template/TemplateHashModelEx;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lfreemarker/template/SimpleSequence;",
            "Lfreemarker/template/TemplateHashModelEx;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 261
    invoke-interface {p2}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object p2

    invoke-interface {p2}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p2

    .line 262
    :cond_8
    :goto_8
    invoke-interface {p2}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 263
    invoke-interface {p2}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateScalarModel;

    .line 264
    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 267
    invoke-virtual {p1, v0}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    goto :goto_8

    :cond_22
    return-void
.end method

.method private initKeys()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->keys:Lfreemarker/core/CollectionAndSequence;

    if-nez v0, :cond_2f

    .line 250
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 251
    new-instance v1, Lfreemarker/template/SimpleSequence;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lfreemarker/template/ObjectWrapper;

    invoke-direct {v1, v2}, Lfreemarker/template/SimpleSequence;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 252
    iget-object v2, p0, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->hashes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/template/TemplateHashModelEx;

    .line 253
    invoke-static {v0, v1, v3}, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->addKeys(Ljava/util/Set;Lfreemarker/template/SimpleSequence;Lfreemarker/template/TemplateHashModelEx;)V

    goto :goto_18

    .line 255
    :cond_28
    new-instance v0, Lfreemarker/core/CollectionAndSequence;

    invoke-direct {v0, v1}, Lfreemarker/core/CollectionAndSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object v0, p0, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->keys:Lfreemarker/core/CollectionAndSequence;

    :cond_2f
    return-void
.end method

.method private initValues()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->values:Lfreemarker/core/CollectionAndSequence;

    if-nez v0, :cond_34

    .line 274
    new-instance v0, Lfreemarker/template/SimpleSequence;

    invoke-virtual {p0}, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfreemarker/template/SimpleSequence;-><init>(ILfreemarker/template/ObjectWrapper;)V

    .line 277
    iget-object v1, p0, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->keys:Lfreemarker/core/CollectionAndSequence;

    invoke-virtual {v1}, Lfreemarker/core/CollectionAndSequence;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_2d

    .line 279
    iget-object v3, p0, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->keys:Lfreemarker/core/CollectionAndSequence;

    invoke-virtual {v3, v2}, Lfreemarker/core/CollectionAndSequence;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v3

    check-cast v3, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v3}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 281
    :cond_2d
    new-instance v1, Lfreemarker/core/CollectionAndSequence;

    invoke-direct {v1, v0}, Lfreemarker/core/CollectionAndSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    iput-object v1, p0, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->values:Lfreemarker/core/CollectionAndSequence;

    :cond_34
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

    .line 239
    invoke-direct {p0}, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->initKeys()V

    .line 240
    iget-object v0, p0, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->keys:Lfreemarker/core/CollectionAndSequence;

    return-object v0
.end method

.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->initKeys()V

    .line 235
    iget-object v0, p0, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->keys:Lfreemarker/core/CollectionAndSequence;

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

    .line 244
    invoke-direct {p0}, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->initValues()V

    .line 245
    iget-object v0, p0, Lfreemarker/template/utility/TemplateModelUtils$HashExUnionModel;->values:Lfreemarker/core/CollectionAndSequence;

    return-object v0
.end method
