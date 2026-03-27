.class Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;
.super Lfreemarker/core/BuiltIn;
.source "BuiltInsForMultipleTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForMultipleTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "sizeBI"
.end annotation


# instance fields
.field private countingLimit:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 485
    invoke-direct {p0}, Lfreemarker/core/BuiltIn;-><init>()V

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 500
    iget v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;->countingLimit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    instance-of v0, v3, Lfreemarker/template/TemplateCollectionModelEx;

    if-eqz v0, :cond_17

    .line 501
    check-cast v3, Lfreemarker/template/TemplateCollectionModelEx;

    invoke-interface {v3}, Lfreemarker/template/TemplateCollectionModelEx;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_5c

    .line 502
    :cond_17
    instance-of v0, v3, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_22

    .line 503
    check-cast v3, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v3}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result p1

    goto :goto_5c

    .line 504
    :cond_22
    instance-of v0, v3, Lfreemarker/template/TemplateCollectionModelEx;

    if-eqz v0, :cond_2d

    .line 505
    check-cast v3, Lfreemarker/template/TemplateCollectionModelEx;

    invoke-interface {v3}, Lfreemarker/template/TemplateCollectionModelEx;->size()I

    move-result p1

    goto :goto_5c

    .line 506
    :cond_2d
    instance-of v0, v3, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v0, :cond_38

    .line 507
    check-cast v3, Lfreemarker/template/TemplateHashModelEx;

    invoke-interface {v3}, Lfreemarker/template/TemplateHashModelEx;->size()I

    move-result p1

    goto :goto_5c

    .line 508
    :cond_38
    instance-of v0, v3, Lfreemarker/core/LazilyGeneratedCollectionModel;

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    move-object v0, v3

    check-cast v0, Lfreemarker/core/LazilyGeneratedCollectionModel;

    .line 509
    invoke-virtual {v0}, Lfreemarker/core/LazilyGeneratedCollectionModel;->isSequence()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 516
    invoke-virtual {v0}, Lfreemarker/core/LazilyGeneratedCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p1

    .line 518
    :goto_4a
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    add-int/lit8 v2, v2, 0x1

    .line 520
    iget v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;->countingLimit:I

    if-ne v2, v0, :cond_57

    goto :goto_5b

    .line 523
    :cond_57
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    goto :goto_4a

    :cond_5b
    :goto_5b
    move p1, v2

    .line 537
    :goto_5c
    new-instance v0, Lfreemarker/template/SimpleNumber;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    return-object v0

    .line 527
    :cond_62
    new-instance v0, Lfreemarker/core/UnexpectedTypeException;

    iget-object v4, p0, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;->target:Lfreemarker/core/Expression;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Lfreemarker/template/TemplateHashModelEx;

    aput-object v6, v5, v2

    const-class v2, Lfreemarker/template/TemplateSequenceModel;

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-class v2, Lfreemarker/template/TemplateCollectionModelEx;

    aput-object v2, v5, v1

    const-string v6, "extended-hash or sequence or extended collection"

    move-object v1, v0

    move-object v2, v4

    move-object v4, v6

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method setCountingLimit(ILfreemarker/core/NumberLiteral;)V
    .registers 5

    .line 548
    :try_start_0
    invoke-virtual {p2}, Lfreemarker/core/NumberLiteral;->getAsNumber()Ljava/lang/Number;

    move-result-object p2

    invoke-static {p2}, Lfreemarker/template/utility/NumberUtil;->toIntExact(Ljava/lang/Number;)I

    move-result p2
    :try_end_8
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_8} :catch_39

    packed-switch p1, :pswitch_data_3a

    .line 561
    new-instance p2, Lfreemarker/core/BugException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported comparator operator code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 560
    :pswitch_20
    iput p2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;->countingLimit:I

    goto :goto_39

    :pswitch_23
    add-int/lit8 p2, p2, 0x1

    .line 559
    iput p2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;->countingLimit:I

    goto :goto_39

    :pswitch_28
    add-int/lit8 p2, p2, 0x1

    .line 558
    iput p2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;->countingLimit:I

    goto :goto_39

    .line 557
    :pswitch_2d
    iput p2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;->countingLimit:I

    goto :goto_39

    :pswitch_30
    add-int/lit8 p2, p2, 0x1

    .line 556
    iput p2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;->countingLimit:I

    goto :goto_39

    :pswitch_35
    add-int/lit8 p2, p2, 0x1

    .line 555
    iput p2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$sizeBI;->countingLimit:I

    :catch_39
    :goto_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_30
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method

.method protected setTarget(Lfreemarker/core/Expression;)V
    .registers 2

    .line 489
    invoke-super {p0, p1}, Lfreemarker/core/BuiltIn;->setTarget(Lfreemarker/core/Expression;)V

    .line 490
    invoke-virtual {p1}, Lfreemarker/core/Expression;->enableLazilyGeneratedResult()V

    return-void
.end method
