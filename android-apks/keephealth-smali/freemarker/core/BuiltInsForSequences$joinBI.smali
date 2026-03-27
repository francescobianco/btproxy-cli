.class Lfreemarker/core/BuiltInsForSequences$joinBI;
.super Lfreemarker/core/BuiltInWithDirectCallOptimization;
.source "BuiltInsForSequences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "joinBI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 185
    invoke-direct {p0}, Lfreemarker/core/BuiltInWithDirectCallOptimization;-><init>()V

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$joinBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 248
    instance-of v1, v0, Lfreemarker/template/TemplateCollectionModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 249
    # invokes: Lfreemarker/core/BuiltInsForSequences;->checkNotRightUnboundedNumericalRange(Lfreemarker/template/TemplateModel;)V
    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences;->access$700(Lfreemarker/template/TemplateModel;)V

    .line 250
    new-instance v1, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    invoke-direct {v1, p0, p1, v0, v2}, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;-><init>(Lfreemarker/core/BuiltInsForSequences$joinBI;Lfreemarker/core/Environment;Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/BuiltInsForSequences$1;)V

    return-object v1

    .line 251
    :cond_16
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_27

    .line 252
    new-instance v1, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;

    new-instance v3, Lfreemarker/core/CollectionAndSequence;

    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {v3, v0}, Lfreemarker/core/CollectionAndSequence;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    invoke-direct {v1, p0, p1, v3, v2}, Lfreemarker/core/BuiltInsForSequences$joinBI$BIMethodForCollection;-><init>(Lfreemarker/core/BuiltInsForSequences$joinBI;Lfreemarker/core/Environment;Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/BuiltInsForSequences$1;)V

    return-object v1

    .line 254
    :cond_27
    new-instance v1, Lfreemarker/core/NonSequenceOrCollectionException;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForSequences$joinBI;->target:Lfreemarker/core/Expression;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method protected setDirectlyCalled()V
    .registers 2

    .line 189
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$joinBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->enableLazilyGeneratedResult()V

    return-void
.end method
