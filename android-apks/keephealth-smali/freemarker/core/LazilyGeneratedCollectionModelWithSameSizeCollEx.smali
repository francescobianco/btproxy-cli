.class Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeCollEx;
.super Lfreemarker/core/LazilyGeneratedCollectionModelEx;
.source "LazilyGeneratedCollectionModelWithSameSizeCollEx.java"


# instance fields
.field private final sizeSourceCollEx:Lfreemarker/template/TemplateCollectionModelEx;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateCollectionModelEx;Z)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p3}, Lfreemarker/core/LazilyGeneratedCollectionModelEx;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    .line 37
    invoke-static {p2}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/Object;)V

    .line 38
    iput-object p2, p0, Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeCollEx;->sizeSourceCollEx:Lfreemarker/template/TemplateCollectionModelEx;

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
    iget-object v0, p0, Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeCollEx;->sizeSourceCollEx:Lfreemarker/template/TemplateCollectionModelEx;

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModelEx;->isEmpty()Z

    move-result v0

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
    iget-object v0, p0, Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeCollEx;->sizeSourceCollEx:Lfreemarker/template/TemplateCollectionModelEx;

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModelEx;->size()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic withIsSequenceFromFalseToTrue()Lfreemarker/core/LazilyGeneratedCollectionModel;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeCollEx;->withIsSequenceFromFalseToTrue()Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeCollEx;

    move-result-object v0

    return-object v0
.end method

.method protected withIsSequenceFromFalseToTrue()Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeCollEx;
    .registers 5

    .line 51
    new-instance v0, Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeCollEx;

    invoke-virtual {p0}, Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeCollEx;->getIterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeCollEx;->sizeSourceCollEx:Lfreemarker/template/TemplateCollectionModelEx;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeCollEx;-><init>(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateCollectionModelEx;Z)V

    return-object v0
.end method
