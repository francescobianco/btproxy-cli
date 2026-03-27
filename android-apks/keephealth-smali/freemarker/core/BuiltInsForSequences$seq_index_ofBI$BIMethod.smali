.class Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;
.super Ljava/lang/Object;
.source "BuiltInsForSequences.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BIMethod"
.end annotation


# instance fields
.field protected final m_col:Lfreemarker/template/TemplateCollectionModel;

.field protected final m_env:Lfreemarker/core/Environment;

.field protected final m_seq:Lfreemarker/template/TemplateSequenceModel;

.field final synthetic this$0:Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;


# direct methods
.method private constructor <init>(Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;Lfreemarker/core/Environment;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iget-object v0, p1, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p2}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 387
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 388
    # invokes: Lfreemarker/core/BuiltInsForSequences;->isBuggySeqButGoodCollection(Lfreemarker/template/TemplateModel;)Z
    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences;->access$600(Lfreemarker/template/TemplateModel;)Z

    move-result v1

    if-nez v1, :cond_1a

    move-object v1, v0

    check-cast v1, Lfreemarker/template/TemplateSequenceModel;

    goto :goto_1b

    :cond_1a
    move-object v1, v2

    :goto_1b
    iput-object v1, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->m_seq:Lfreemarker/template/TemplateSequenceModel;

    if-nez v1, :cond_26

    .line 398
    instance-of v3, v0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v3, :cond_26

    move-object v2, v0

    check-cast v2, Lfreemarker/template/TemplateCollectionModel;

    :cond_26
    iput-object v2, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->m_col:Lfreemarker/template/TemplateCollectionModel;

    if-nez v1, :cond_35

    if-eqz v2, :cond_2d

    goto :goto_35

    .line 402
    :cond_2d
    new-instance v1, Lfreemarker/core/NonSequenceOrCollectionException;

    iget-object p1, p1, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->target:Lfreemarker/core/Expression;

    invoke-direct {v1, p1, v0, p2}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v1

    .line 405
    :cond_35
    :goto_35
    iput-object p2, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->m_env:Lfreemarker/core/Environment;

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;Lfreemarker/core/Environment;Lfreemarker/core/BuiltInsForSequences$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 378
    invoke-direct {p0, p1, p2}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;-><init>(Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;Lfreemarker/core/Environment;)V

    return-void
.end method

.method private findInSeq(Lfreemarker/template/TemplateModel;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->m_seq:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    .line 487
    iget-object v1, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;

    # getter for: Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->findFirst:Z
    invoke-static {v1}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->access$1300(Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_16

    if-lt p2, v0, :cond_12

    return v2

    :cond_12
    if-gez p2, :cond_1d

    const/4 p2, 0x0

    goto :goto_1d

    :cond_16
    if-lt p2, v0, :cond_1a

    add-int/lit8 p2, v0, -0x1

    :cond_1a
    if-gez p2, :cond_1d

    return v2

    .line 503
    :cond_1d
    :goto_1d
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->findInSeq(Lfreemarker/template/TemplateModel;II)I

    move-result p1

    return p1
.end method

.method private findInSeq(Lfreemarker/template/TemplateModel;II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;

    # getter for: Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->findFirst:Z
    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->access$1300(Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :goto_8
    if-ge p2, p3, :cond_30

    .line 511
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->m_seq:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0, p2}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->m_env:Lfreemarker/core/Environment;

    # invokes: Lfreemarker/core/BuiltInsForSequences;->modelsEqual(ILfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z
    invoke-static {p2, v0, p1, v1}, Lfreemarker/core/BuiltInsForSequences;->access$1000(ILfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z

    move-result v0

    if-eqz v0, :cond_19

    return p2

    :cond_19
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_1c
    :goto_1c
    if-ltz p2, :cond_30

    .line 515
    iget-object p3, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->m_seq:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {p3, p2}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p3

    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->m_env:Lfreemarker/core/Environment;

    # invokes: Lfreemarker/core/BuiltInsForSequences;->modelsEqual(ILfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z
    invoke-static {p2, p3, p1, v0}, Lfreemarker/core/BuiltInsForSequences;->access$1000(ILfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z

    move-result p3

    if-eqz p3, :cond_2d

    return p2

    :cond_2d
    add-int/lit8 p2, p2, -0x1

    goto :goto_1c

    :cond_30
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 410
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 411
    iget-object v1, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->checkMethodArgCount(III)V

    const/4 v1, 0x0

    .line 413
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/template/TemplateModel;

    if-le v0, v3, :cond_2c

    .line 416
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;

    invoke-virtual {v0, p1, v3}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->getNumberMethodArg(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 418
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->m_seq:Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_27

    .line 419
    invoke-direct {p0, v1, p1}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->findInSeq(Lfreemarker/template/TemplateModel;I)I

    move-result p1

    goto :goto_39

    .line 420
    :cond_27
    invoke-virtual {p0, v1, p1}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->findInCol(Lfreemarker/template/TemplateModel;I)I

    move-result p1

    goto :goto_39

    .line 422
    :cond_2c
    iget-object p1, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->m_seq:Lfreemarker/template/TemplateSequenceModel;

    if-eqz p1, :cond_35

    .line 423
    invoke-virtual {p0, v1}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->findInSeq(Lfreemarker/template/TemplateModel;)I

    move-result p1

    goto :goto_39

    .line 424
    :cond_35
    invoke-virtual {p0, v1}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->findInCol(Lfreemarker/template/TemplateModel;)I

    move-result p1

    :goto_39
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3f

    .line 426
    sget-object p1, Lfreemarker/template/utility/Constants;->MINUS_ONE:Lfreemarker/template/TemplateNumberModel;

    goto :goto_45

    :cond_3f
    new-instance v0, Lfreemarker/template/SimpleNumber;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    move-object p1, v0

    :goto_45
    return-object p1
.end method

.method findInCol(Lfreemarker/template/TemplateModel;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 430
    invoke-virtual {p0, p1, v0, v1}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->findInCol(Lfreemarker/template/TemplateModel;II)I

    move-result p1

    return p1
.end method

.method protected findInCol(Lfreemarker/template/TemplateModel;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;

    # getter for: Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->findFirst:Z
    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->access$1300(Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7fffffff

    .line 436
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->findInCol(Lfreemarker/template/TemplateModel;II)I

    move-result p1

    return p1

    :cond_10
    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0, p1, v0, p2}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->findInCol(Lfreemarker/template/TemplateModel;II)I

    move-result p1

    return p1
.end method

.method protected findInCol(Lfreemarker/template/TemplateModel;II)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 v0, -0x1

    if-gez p3, :cond_4

    return v0

    .line 447
    :cond_4
    iget-object v1, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->m_col:Lfreemarker/template/TemplateCollectionModel;

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 451
    :goto_b
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    if-le v2, p3, :cond_14

    goto :goto_30

    .line 454
    :cond_14
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v3

    if-lt v2, p2, :cond_2d

    .line 456
    iget-object v4, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->m_env:Lfreemarker/core/Environment;

    # invokes: Lfreemarker/core/BuiltInsForSequences;->modelsEqual(ILfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z
    invoke-static {v2, v3, p1, v4}, Lfreemarker/core/BuiltInsForSequences;->access$1000(ILfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 459
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;

    # getter for: Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->findFirst:Z
    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->access$1300(Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v2

    goto :goto_30

    :cond_2c
    move v0, v2

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_30
    :goto_30
    return v0
.end method

.method findInSeq(Lfreemarker/template/TemplateModel;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->m_seq:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    .line 474
    iget-object v1, p0, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;

    # getter for: Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->findFirst:Z
    invoke-static {v1}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;->access$1300(Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_12

    :cond_10
    add-int/lit8 v1, v0, -0x1

    .line 480
    :goto_12
    invoke-direct {p0, p1, v1, v0}, Lfreemarker/core/BuiltInsForSequences$seq_index_ofBI$BIMethod;->findInSeq(Lfreemarker/template/TemplateModel;II)I

    move-result p1

    return p1
.end method
