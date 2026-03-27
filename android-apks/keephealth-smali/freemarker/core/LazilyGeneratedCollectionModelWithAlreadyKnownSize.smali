.class final Lfreemarker/core/LazilyGeneratedCollectionModelWithAlreadyKnownSize;
.super Lfreemarker/core/LazilyGeneratedCollectionModelEx;
.source "LazilyGeneratedCollectionModelWithAlreadyKnownSize.java"


# instance fields
.field private final size:I


# direct methods
.method constructor <init>(Lfreemarker/template/TemplateModelIterator;IZ)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p3}, Lfreemarker/core/LazilyGeneratedCollectionModelEx;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    .line 30
    iput p2, p0, Lfreemarker/core/LazilyGeneratedCollectionModelWithAlreadyKnownSize;->size:I

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 2

    .line 38
    iget v0, p0, Lfreemarker/core/LazilyGeneratedCollectionModelWithAlreadyKnownSize;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 34
    iget v0, p0, Lfreemarker/core/LazilyGeneratedCollectionModelWithAlreadyKnownSize;->size:I

    return v0
.end method

.method protected withIsSequenceFromFalseToTrue()Lfreemarker/core/LazilyGeneratedCollectionModel;
    .registers 5

    .line 43
    new-instance v0, Lfreemarker/core/LazilyGeneratedCollectionModelWithAlreadyKnownSize;

    invoke-virtual {p0}, Lfreemarker/core/LazilyGeneratedCollectionModelWithAlreadyKnownSize;->getIterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    iget v2, p0, Lfreemarker/core/LazilyGeneratedCollectionModelWithAlreadyKnownSize;->size:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lfreemarker/core/LazilyGeneratedCollectionModelWithAlreadyKnownSize;-><init>(Lfreemarker/template/TemplateModelIterator;IZ)V

    return-object v0
.end method
