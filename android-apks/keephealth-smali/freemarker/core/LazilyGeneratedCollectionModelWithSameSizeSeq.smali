.class Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeSeq;
.super Lfreemarker/core/LazilyGeneratedCollectionModelEx;
.source "LazilyGeneratedCollectionModelWithSameSizeSeq.java"


# instance fields
.field private final sizeSourceSeq:Lfreemarker/template/TemplateSequenceModel;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateSequenceModel;)V
    .registers 4

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1, v0}, Lfreemarker/core/LazilyGeneratedCollectionModelEx;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    .line 37
    invoke-static {p2}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/Object;)V

    .line 38
    iput-object p2, p0, Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeSeq;->sizeSourceSeq:Lfreemarker/template/TemplateSequenceModel;

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeSeq;->sizeSourceSeq:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeSeq;->sizeSourceSeq:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic withIsSequenceFromFalseToTrue()Lfreemarker/core/LazilyGeneratedCollectionModel;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeSeq;->withIsSequenceFromFalseToTrue()Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeSeq;

    move-result-object v0

    return-object v0
.end method

.method protected withIsSequenceFromFalseToTrue()Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeSeq;
    .registers 1

    return-object p0
.end method
