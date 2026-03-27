.class abstract Lfreemarker/core/BuiltInsForSequences$MinOrMaxBI;
.super Lfreemarker/core/BuiltIn;
.source "BuiltInsForSequences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MinOrMaxBI"
.end annotation


# instance fields
.field private final comparatorOperator:I


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    .line 941
    invoke-direct {p0}, Lfreemarker/core/BuiltIn;-><init>()V

    .line 942
    iput p1, p0, Lfreemarker/core/BuiltInsForSequences$MinOrMaxBI;->comparatorOperator:I

    return-void
.end method

.method private calculateResultForCollection(Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 968
    invoke-interface/range {p1 .. p1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 969
    :cond_5
    :goto_5
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 970
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v14

    move-object/from16 v15, p0

    if-eqz v14, :cond_5

    if-eqz v1, :cond_2a

    .line 971
    iget v4, v15, Lfreemarker/core/BuiltInsForSequences$MinOrMaxBI;->comparatorOperator:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v14

    move-object v6, v1

    move-object/from16 v8, p0

    move-object/from16 v13, p2

    .line 972
    invoke-static/range {v2 .. v13}, Lfreemarker/core/EvalUtil;->compare(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Lfreemarker/core/Expression;ZZZZLfreemarker/core/Environment;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2a
    move-object v1, v14

    goto :goto_5

    :cond_2c
    move-object/from16 v15, p0

    return-object v1
.end method

.method private calculateResultForSequence(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 983
    :goto_2
    invoke-interface/range {p1 .. p1}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    move-object/from16 v14, p1

    .line 984
    invoke-interface {v14, v1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v15

    if-eqz v15, :cond_2a

    if-eqz v0, :cond_29

    move-object/from16 v13, p0

    .line 985
    iget v4, v13, Lfreemarker/core/BuiltInsForSequences$MinOrMaxBI;->comparatorOperator:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v15

    move-object v6, v0

    move-object/from16 v8, p0

    move-object/from16 v13, p2

    .line 986
    invoke-static/range {v2 .. v13}, Lfreemarker/core/EvalUtil;->compare(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Lfreemarker/core/Expression;ZZZZLfreemarker/core/Environment;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_29
    move-object v0, v15

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2d
    return-object v0
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 954
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$MinOrMaxBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 955
    instance-of v1, v0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v1, :cond_14

    .line 956
    # invokes: Lfreemarker/core/BuiltInsForSequences;->checkNotRightUnboundedNumericalRange(Lfreemarker/template/TemplateModel;)V
    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences;->access$700(Lfreemarker/template/TemplateModel;)V

    .line 957
    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    invoke-direct {p0, v0, p1}, Lfreemarker/core/BuiltInsForSequences$MinOrMaxBI;->calculateResultForCollection(Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 958
    :cond_14
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_1f

    .line 959
    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {p0, v0, p1}, Lfreemarker/core/BuiltInsForSequences$MinOrMaxBI;->calculateResultForSequence(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 961
    :cond_1f
    new-instance v1, Lfreemarker/core/NonSequenceOrCollectionException;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForSequences$MinOrMaxBI;->target:Lfreemarker/core/Expression;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v1
.end method

.method protected setTarget(Lfreemarker/core/Expression;)V
    .registers 2

    .line 947
    invoke-super {p0, p1}, Lfreemarker/core/BuiltIn;->setTarget(Lfreemarker/core/Expression;)V

    .line 948
    invoke-virtual {p1}, Lfreemarker/core/Expression;->enableLazilyGeneratedResult()V

    return-void
.end method
