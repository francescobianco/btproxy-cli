.class abstract Lfreemarker/core/LazilyGeneratedCollectionModel;
.super Lfreemarker/core/SingleIterationCollectionModel;
.source "LazilyGeneratedCollectionModel.java"


# instance fields
.field private final sequence:Z


# direct methods
.method protected constructor <init>(Lfreemarker/template/TemplateModelIterator;Z)V
    .registers 3

    .line 52
    invoke-direct {p0, p1}, Lfreemarker/core/SingleIterationCollectionModel;-><init>(Lfreemarker/template/TemplateModelIterator;)V

    .line 53
    iput-boolean p2, p0, Lfreemarker/core/LazilyGeneratedCollectionModel;->sequence:Z

    return-void
.end method


# virtual methods
.method final isSequence()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lfreemarker/core/LazilyGeneratedCollectionModel;->sequence:Z

    return v0
.end method

.method protected abstract withIsSequenceFromFalseToTrue()Lfreemarker/core/LazilyGeneratedCollectionModel;
.end method

.method final withIsSequenceTrue()Lfreemarker/core/LazilyGeneratedCollectionModel;
    .registers 2

    .line 75
    invoke-virtual {p0}, Lfreemarker/core/LazilyGeneratedCollectionModel;->isSequence()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Lfreemarker/core/LazilyGeneratedCollectionModel;->withIsSequenceFromFalseToTrue()Lfreemarker/core/LazilyGeneratedCollectionModel;

    move-result-object v0

    :goto_c
    return-object v0
.end method
