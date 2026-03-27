.class Lfreemarker/core/BuiltInsForSequences$sequenceBI;
.super Lfreemarker/core/BuiltIn;
.source "BuiltInsForSequences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "sequenceBI"
.end annotation


# instance fields
.field private lazilyGeneratedResultEnabled:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 853
    invoke-direct {p0}, Lfreemarker/core/BuiltIn;-><init>()V

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$sequenceBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 861
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_11

    # invokes: Lfreemarker/core/BuiltInsForSequences;->isBuggySeqButGoodCollection(Lfreemarker/template/TemplateModel;)Z
    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences;->access$600(Lfreemarker/template/TemplateModel;)Z

    move-result v1

    if-nez v1, :cond_11

    return-object v0

    .line 865
    :cond_11
    instance-of v1, v0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v1, :cond_6c

    .line 868
    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    .line 870
    iget-boolean p1, p0, Lfreemarker/core/BuiltInsForSequences$sequenceBI;->lazilyGeneratedResultEnabled:Z

    if-nez p1, :cond_44

    .line 871
    instance-of p1, v0, Lfreemarker/template/TemplateCollectionModelEx;

    if-eqz p1, :cond_2c

    new-instance p1, Lfreemarker/template/SimpleSequence;

    move-object v1, v0

    check-cast v1, Lfreemarker/template/TemplateCollectionModelEx;

    .line 873
    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModelEx;->size()I

    move-result v1

    invoke-direct {p1, v1}, Lfreemarker/template/SimpleSequence;-><init>(I)V

    goto :goto_31

    :cond_2c
    new-instance p1, Lfreemarker/template/SimpleSequence;

    invoke-direct {p1}, Lfreemarker/template/SimpleSequence;-><init>()V

    .line 875
    :goto_31
    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 876
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    goto :goto_35

    :cond_43
    return-object p1

    .line 880
    :cond_44
    instance-of p1, v0, Lfreemarker/core/LazilyGeneratedCollectionModel;

    if-eqz p1, :cond_4f

    check-cast v0, Lfreemarker/core/LazilyGeneratedCollectionModel;

    .line 881
    invoke-virtual {v0}, Lfreemarker/core/LazilyGeneratedCollectionModel;->withIsSequenceTrue()Lfreemarker/core/LazilyGeneratedCollectionModel;

    move-result-object p1

    goto :goto_6b

    :cond_4f
    instance-of p1, v0, Lfreemarker/template/TemplateCollectionModelEx;

    const/4 v1, 0x1

    if-eqz p1, :cond_61

    new-instance p1, Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeCollEx;

    new-instance v2, Lfreemarker/core/LazyCollectionTemplateModelIterator;

    invoke-direct {v2, v0}, Lfreemarker/core/LazyCollectionTemplateModelIterator;-><init>(Lfreemarker/template/TemplateCollectionModel;)V

    check-cast v0, Lfreemarker/template/TemplateCollectionModelEx;

    invoke-direct {p1, v2, v0, v1}, Lfreemarker/core/LazilyGeneratedCollectionModelWithSameSizeCollEx;-><init>(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateCollectionModelEx;Z)V

    goto :goto_6b

    :cond_61
    new-instance p1, Lfreemarker/core/LazilyGeneratedCollectionModelWithUnknownSize;

    new-instance v2, Lfreemarker/core/LazyCollectionTemplateModelIterator;

    invoke-direct {v2, v0}, Lfreemarker/core/LazyCollectionTemplateModelIterator;-><init>(Lfreemarker/template/TemplateCollectionModel;)V

    invoke-direct {p1, v2, v1}, Lfreemarker/core/LazilyGeneratedCollectionModelWithUnknownSize;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    :goto_6b
    return-object p1

    .line 866
    :cond_6c
    new-instance v1, Lfreemarker/core/NonSequenceOrCollectionException;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForSequences$sequenceBI;->target:Lfreemarker/core/Expression;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method enableLazilyGeneratedResult()V
    .registers 2

    const/4 v0, 0x1

    .line 893
    iput-boolean v0, p0, Lfreemarker/core/BuiltInsForSequences$sequenceBI;->lazilyGeneratedResultEnabled:Z

    return-void
.end method

.method protected setTarget(Lfreemarker/core/Expression;)V
    .registers 2

    .line 898
    invoke-super {p0, p1}, Lfreemarker/core/BuiltIn;->setTarget(Lfreemarker/core/Expression;)V

    .line 899
    invoke-virtual {p1}, Lfreemarker/core/Expression;->enableLazilyGeneratedResult()V

    return-void
.end method
