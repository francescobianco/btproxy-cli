.class Lfreemarker/core/BuiltInsForSequences$seq_containsBI;
.super Lfreemarker/core/BuiltInWithDirectCallOptimization;
.source "BuiltInsForSequences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "seq_containsBI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForSequences$seq_containsBI$BIMethodForSequence;,
        Lfreemarker/core/BuiltInsForSequences$seq_containsBI$BIMethodForCollection;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 299
    invoke-direct {p0}, Lfreemarker/core/BuiltInWithDirectCallOptimization;-><init>()V

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

    .line 357
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$seq_containsBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 360
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    # invokes: Lfreemarker/core/BuiltInsForSequences;->isBuggySeqButGoodCollection(Lfreemarker/template/TemplateModel;)Z
    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences;->access$600(Lfreemarker/template/TemplateModel;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 361
    new-instance v1, Lfreemarker/core/BuiltInsForSequences$seq_containsBI$BIMethodForSequence;

    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {v1, p0, v0, p1, v2}, Lfreemarker/core/BuiltInsForSequences$seq_containsBI$BIMethodForSequence;-><init>(Lfreemarker/core/BuiltInsForSequences$seq_containsBI;Lfreemarker/template/TemplateSequenceModel;Lfreemarker/core/Environment;Lfreemarker/core/BuiltInsForSequences$1;)V

    return-object v1

    .line 362
    :cond_19
    instance-of v1, v0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v1, :cond_25

    .line 363
    new-instance v1, Lfreemarker/core/BuiltInsForSequences$seq_containsBI$BIMethodForCollection;

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    invoke-direct {v1, p0, v0, p1, v2}, Lfreemarker/core/BuiltInsForSequences$seq_containsBI$BIMethodForCollection;-><init>(Lfreemarker/core/BuiltInsForSequences$seq_containsBI;Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/Environment;Lfreemarker/core/BuiltInsForSequences$1;)V

    return-object v1

    .line 365
    :cond_25
    new-instance v1, Lfreemarker/core/NonSequenceOrCollectionException;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForSequences$seq_containsBI;->target:Lfreemarker/core/Expression;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method protected setDirectlyCalled()V
    .registers 2

    .line 303
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$seq_containsBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->enableLazilyGeneratedResult()V

    return-void
.end method
