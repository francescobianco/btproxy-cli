.class Lfreemarker/core/IteratorBlock$IterationContext;
.super Ljava/lang/Object;
.source "IteratorBlock.java"

# interfaces
.implements Lfreemarker/core/LocalContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/IteratorBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IterationContext"
.end annotation


# static fields
.field private static final LOOP_STATE_HAS_NEXT:Ljava/lang/String; = "_has_next"

.field private static final LOOP_STATE_INDEX:Ljava/lang/String; = "_index"


# instance fields
.field private alreadyEntered:Z

.field private hasNext:Z

.field private index:I

.field private final listedValue:Lfreemarker/template/TemplateModel;

.field private localVarNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loopVar1Name:Ljava/lang/String;

.field private loopVar1Value:Lfreemarker/template/TemplateModel;

.field private loopVar2Name:Ljava/lang/String;

.field private loopVar2Value:Lfreemarker/template/TemplateModel;

.field private openedIterator:Ljava/lang/Object;

.field final synthetic this$0:Lfreemarker/core/IteratorBlock;

.field private visibleLoopVar1Name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfreemarker/core/IteratorBlock;Lfreemarker/template/TemplateModel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 237
    iput-object p1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->this$0:Lfreemarker/core/IteratorBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->localVarNames:Ljava/util/Collection;

    .line 238
    iput-object p2, p0, Lfreemarker/core/IteratorBlock$IterationContext;->listedValue:Lfreemarker/template/TemplateModel;

    .line 239
    iput-object p3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Name:Ljava/lang/String;

    .line 240
    iput-object p4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar2Name:Ljava/lang/String;

    return-void
.end method

.method private executeNestedContent(Lfreemarker/core/Environment;[Lfreemarker/core/TemplateElement;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->this$0:Lfreemarker/core/IteratorBlock;

    # getter for: Lfreemarker/core/IteratorBlock;->hashListing:Z
    invoke-static {v0}, Lfreemarker/core/IteratorBlock;->access$000(Lfreemarker/core/IteratorBlock;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 271
    invoke-direct {p0, p1, p2}, Lfreemarker/core/IteratorBlock$IterationContext;->executedNestedContentForCollOrSeqListing(Lfreemarker/core/Environment;[Lfreemarker/core/TemplateElement;)Z

    move-result p1

    goto :goto_11

    .line 272
    :cond_d
    invoke-direct {p0, p1, p2}, Lfreemarker/core/IteratorBlock$IterationContext;->executedNestedContentForHashListing(Lfreemarker/core/Environment;[Lfreemarker/core/TemplateElement;)Z

    move-result p1

    :goto_11
    return p1
.end method

.method private executedNestedContentForCollOrSeqListing(Lfreemarker/core/Environment;[Lfreemarker/core/TemplateElement;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->listedValue:Lfreemarker/template/TemplateModel;

    instance-of v1, v0, Lfreemarker/template/TemplateCollectionModel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_57

    .line 279
    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    .line 280
    iget-object v1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->openedIterator:Ljava/lang/Object;

    if-nez v1, :cond_13

    .line 281
    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    goto :goto_16

    :cond_13
    move-object v0, v1

    check-cast v0, Lfreemarker/template/TemplateModelIterator;

    .line 283
    :goto_16
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 285
    iget-object v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Name:Ljava/lang/String;

    if-eqz v4, :cond_4f

    .line 287
    :cond_20
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v4

    iput-object v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Value:Lfreemarker/template/TemplateModel;

    .line 288
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v4

    iput-boolean v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->hasNext:Z

    .line 290
    :try_start_2c
    iget-object v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Name:Ljava/lang/String;

    iput-object v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    .line 291
    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;)V
    :try_end_33
    .catch Lfreemarker/core/BreakOrContinueException; {:try_start_2c .. :try_end_33} :catch_38
    .catchall {:try_start_2c .. :try_end_33} :catchall_36

    .line 297
    :cond_33
    iput-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    goto :goto_40

    :catchall_36
    move-exception p1

    goto :goto_4c

    :catch_38
    move-exception v4

    .line 293
    :try_start_39
    sget-object v5, Lfreemarker/core/BreakOrContinueException;->BREAK_INSTANCE:Lfreemarker/core/BreakOrContinueException;
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_36

    if-ne v4, v5, :cond_33

    .line 297
    iput-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    goto :goto_49

    .line 299
    :goto_40
    iget v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->index:I

    add-int/2addr v4, v2

    iput v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->index:I

    .line 300
    iget-boolean v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->hasNext:Z

    if-nez v4, :cond_20

    .line 301
    :goto_49
    iput-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->openedIterator:Ljava/lang/Object;

    goto :goto_54

    .line 297
    :goto_4c
    iput-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    .line 298
    throw p1

    .line 305
    :cond_4f
    iput-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->openedIterator:Ljava/lang/Object;

    .line 307
    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;)V

    :cond_54
    :goto_54
    move v2, v1

    goto/16 :goto_c1

    .line 310
    :cond_57
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    const/4 v4, 0x0

    if-eqz v1, :cond_a5

    .line 311
    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    .line 312
    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v1

    if-eqz v1, :cond_66

    move v5, v2

    goto :goto_67

    :cond_66
    move v5, v4

    :goto_67
    if-eqz v5, :cond_a3

    .line 315
    iget-object v6, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Name:Ljava/lang/String;

    if-eqz v6, :cond_a0

    .line 316
    iput v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->index:I

    :goto_6f
    iget v6, p0, Lfreemarker/core/IteratorBlock$IterationContext;->index:I

    if-ge v6, v1, :cond_a3

    .line 317
    invoke-interface {v0, v6}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v6

    iput-object v6, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Value:Lfreemarker/template/TemplateModel;

    .line 318
    iget v6, p0, Lfreemarker/core/IteratorBlock$IterationContext;->index:I

    add-int/2addr v6, v2

    if-le v1, v6, :cond_80

    move v6, v2

    goto :goto_81

    :cond_80
    move v6, v4

    :goto_81
    iput-boolean v6, p0, Lfreemarker/core/IteratorBlock$IterationContext;->hasNext:Z

    .line 320
    :try_start_83
    iget-object v6, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Name:Ljava/lang/String;

    iput-object v6, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    .line 321
    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;)V
    :try_end_8a
    .catch Lfreemarker/core/BreakOrContinueException; {:try_start_83 .. :try_end_8a} :catch_8f
    .catchall {:try_start_83 .. :try_end_8a} :catchall_8d

    .line 327
    :cond_8a
    iput-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    goto :goto_97

    :catchall_8d
    move-exception p1

    goto :goto_9d

    :catch_8f
    move-exception v6

    .line 323
    :try_start_90
    sget-object v7, Lfreemarker/core/BreakOrContinueException;->BREAK_INSTANCE:Lfreemarker/core/BreakOrContinueException;
    :try_end_92
    .catchall {:try_start_90 .. :try_end_92} :catchall_8d

    if-ne v6, v7, :cond_8a

    .line 327
    iput-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    goto :goto_a3

    .line 316
    :goto_97
    iget v6, p0, Lfreemarker/core/IteratorBlock$IterationContext;->index:I

    add-int/2addr v6, v2

    iput v6, p0, Lfreemarker/core/IteratorBlock$IterationContext;->index:I

    goto :goto_6f

    .line 327
    :goto_9d
    iput-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    .line 328
    throw p1

    .line 332
    :cond_a0
    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;)V

    :cond_a3
    :goto_a3
    move v2, v5

    goto :goto_c1

    .line 335
    :cond_a5
    invoke-virtual {p1}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 337
    iget-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Name:Ljava/lang/String;

    if-eqz v0, :cond_b5

    .line 338
    iget-object v1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->listedValue:Lfreemarker/template/TemplateModel;

    iput-object v1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Value:Lfreemarker/template/TemplateModel;

    .line 339
    iput-boolean v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->hasNext:Z

    .line 342
    :cond_b5
    :try_start_b5
    iput-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    .line 343
    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;)V
    :try_end_ba
    .catch Lfreemarker/core/BreakOrContinueException; {:try_start_b5 .. :try_end_ba} :catch_bf
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_bb

    goto :goto_bf

    :catchall_bb
    move-exception p1

    .line 347
    iput-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    .line 348
    throw p1

    .line 347
    :catch_bf
    :goto_bf
    iput-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    :goto_c1
    return v2

    .line 349
    :cond_c2
    iget-object p2, p0, Lfreemarker/core/IteratorBlock$IterationContext;->listedValue:Lfreemarker/template/TemplateModel;

    instance-of v0, p2, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v0, :cond_f1

    .line 350
    invoke-static {p2}, Lfreemarker/core/NonSequenceOrCollectionException;->isWrappedIterable(Lfreemarker/template/TemplateModel;)Z

    move-result p2

    if-nez p2, :cond_f1

    .line 351
    new-instance p2, Lfreemarker/core/NonSequenceOrCollectionException;

    new-instance v0, Lfreemarker/core/_ErrorDescriptionBuilder;

    new-instance v1, Lfreemarker/core/_DelayedAOrAn;

    new-instance v2, Lfreemarker/core/_DelayedFTLTypeDescription;

    iget-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->listedValue:Lfreemarker/template/TemplateModel;

    invoke-direct {v2, v3}, Lfreemarker/core/_DelayedFTLTypeDescription;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {v1, v2}, Lfreemarker/core/_DelayedAOrAn;-><init>(Ljava/lang/Object;)V

    const-string v2, "<#... as k, v>"

    const-string v3, ")."

    const-string v4, "The value you try to list is "

    const-string v5, ", thus you must specify two loop variables after the \"as\"; one for the key, and another for the value, like "

    filled-new-array {v4, v1, v5, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/core/_ErrorDescriptionBuilder;-><init>([Ljava/lang/Object;)V

    invoke-direct {p2, p1, v0}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/Environment;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    throw p2

    .line 358
    :cond_f1
    new-instance p2, Lfreemarker/core/NonSequenceOrCollectionException;

    iget-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->this$0:Lfreemarker/core/IteratorBlock;

    .line 359
    # getter for: Lfreemarker/core/IteratorBlock;->listedExp:Lfreemarker/core/Expression;
    invoke-static {v0}, Lfreemarker/core/IteratorBlock;->access$100(Lfreemarker/core/IteratorBlock;)Lfreemarker/core/Expression;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->listedValue:Lfreemarker/template/TemplateModel;

    invoke-direct {p2, v0, v1, p1}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw p2
.end method

.method private executedNestedContentForHashListing(Lfreemarker/core/Environment;[Lfreemarker/core/TemplateElement;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->listedValue:Lfreemarker/template/TemplateModel;

    instance-of v1, v0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v1, :cond_c3

    .line 368
    check-cast v0, Lfreemarker/template/TemplateHashModelEx;

    .line 369
    instance-of v1, v0, Lfreemarker/template/TemplateHashModelEx2;

    const/4 v2, 0x0

    if-eqz v1, :cond_65

    .line 370
    iget-object v1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->openedIterator:Ljava/lang/Object;

    if-nez v1, :cond_18

    check-cast v0, Lfreemarker/template/TemplateHashModelEx2;

    .line 371
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx2;->keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

    move-result-object v0

    goto :goto_1b

    :cond_18
    move-object v0, v1

    check-cast v0, Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

    .line 373
    :goto_1b
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 375
    iget-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Name:Ljava/lang/String;

    if-eqz v3, :cond_5f

    .line 377
    :cond_25
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;->next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;

    move-result-object v3

    .line 378
    invoke-interface {v3}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;->getKey()Lfreemarker/template/TemplateModel;

    move-result-object v4

    iput-object v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Value:Lfreemarker/template/TemplateModel;

    .line 379
    invoke-interface {v3}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;->getValue()Lfreemarker/template/TemplateModel;

    move-result-object v3

    iput-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar2Value:Lfreemarker/template/TemplateModel;

    .line 380
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;->hasNext()Z

    move-result v3

    iput-boolean v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->hasNext:Z

    .line 382
    :try_start_3b
    iget-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Name:Ljava/lang/String;

    iput-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    .line 383
    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;)V
    :try_end_42
    .catch Lfreemarker/core/BreakOrContinueException; {:try_start_3b .. :try_end_42} :catch_47
    .catchall {:try_start_3b .. :try_end_42} :catchall_45

    .line 389
    :cond_42
    iput-object v2, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    goto :goto_4f

    :catchall_45
    move-exception p1

    goto :goto_5c

    :catch_47
    move-exception v3

    .line 385
    :try_start_48
    sget-object v4, Lfreemarker/core/BreakOrContinueException;->BREAK_INSTANCE:Lfreemarker/core/BreakOrContinueException;
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_45

    if-ne v3, v4, :cond_42

    .line 389
    iput-object v2, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    goto :goto_59

    .line 391
    :goto_4f
    iget v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->index:I

    .line 392
    iget-boolean v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->hasNext:Z

    if-nez v3, :cond_25

    .line 393
    :goto_59
    iput-object v2, p0, Lfreemarker/core/IteratorBlock$IterationContext;->openedIterator:Ljava/lang/Object;

    goto :goto_c2

    .line 389
    :goto_5c
    iput-object v2, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    .line 390
    throw p1

    .line 396
    :cond_5f
    iput-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->openedIterator:Ljava/lang/Object;

    .line 398
    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;)V

    goto :goto_c2

    .line 402
    :cond_65
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v1

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    .line 403
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 405
    iget-object v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Name:Ljava/lang/String;

    if-eqz v4, :cond_be

    .line 407
    :cond_77
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v4

    iput-object v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Value:Lfreemarker/template/TemplateModel;

    .line 408
    instance-of v5, v4, Lfreemarker/template/TemplateScalarModel;

    if-eqz v5, :cond_b5

    .line 412
    check-cast v4, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v4}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lfreemarker/template/TemplateHashModelEx;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v4

    iput-object v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar2Value:Lfreemarker/template/TemplateModel;

    .line 413
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v4

    iput-boolean v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->hasNext:Z

    .line 415
    :try_start_93
    iget-object v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Name:Ljava/lang/String;

    iput-object v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    .line 416
    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;)V
    :try_end_9a
    .catch Lfreemarker/core/BreakOrContinueException; {:try_start_93 .. :try_end_9a} :catch_9f
    .catchall {:try_start_93 .. :try_end_9a} :catchall_9d

    .line 422
    :cond_9a
    iput-object v2, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    goto :goto_a7

    :catchall_9d
    move-exception p1

    goto :goto_b2

    :catch_9f
    move-exception v4

    .line 418
    :try_start_a0
    sget-object v5, Lfreemarker/core/BreakOrContinueException;->BREAK_INSTANCE:Lfreemarker/core/BreakOrContinueException;
    :try_end_a2
    .catchall {:try_start_a0 .. :try_end_a2} :catchall_9d

    if-ne v4, v5, :cond_9a

    .line 422
    iput-object v2, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    goto :goto_c1

    .line 424
    :goto_a7
    iget v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->index:I

    .line 425
    iget-boolean v4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->hasNext:Z

    if-nez v4, :cond_77

    goto :goto_c1

    .line 422
    :goto_b2
    iput-object v2, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    .line 423
    throw p1

    .line 409
    :cond_b5
    iget-object p1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->listedValue:Lfreemarker/template/TemplateModel;

    check-cast p1, Lfreemarker/template/TemplateHashModelEx;

    invoke-static {v4, p1}, Lfreemarker/core/_MessageUtil;->newKeyValuePairListingNonStringKeyExceptionMessage(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateHashModelEx;)Lfreemarker/template/TemplateModelException;

    move-result-object p1

    throw p1

    .line 428
    :cond_be
    invoke-virtual {p1, p2}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;)V

    :cond_c1
    :goto_c1
    move v1, v3

    :cond_c2
    :goto_c2
    return v1

    .line 432
    :cond_c3
    instance-of p2, v0, Lfreemarker/template/TemplateCollectionModel;

    if-nez p2, :cond_da

    instance-of p2, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz p2, :cond_cc

    goto :goto_da

    .line 441
    :cond_cc
    new-instance p2, Lfreemarker/core/NonExtendedHashException;

    iget-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->this$0:Lfreemarker/core/IteratorBlock;

    .line 442
    # getter for: Lfreemarker/core/IteratorBlock;->listedExp:Lfreemarker/core/Expression;
    invoke-static {v0}, Lfreemarker/core/IteratorBlock;->access$100(Lfreemarker/core/IteratorBlock;)Lfreemarker/core/Expression;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->listedValue:Lfreemarker/template/TemplateModel;

    invoke-direct {p2, v0, v1, p1}, Lfreemarker/core/NonExtendedHashException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw p2

    .line 434
    :cond_da
    :goto_da
    new-instance p2, Lfreemarker/core/NonSequenceOrCollectionException;

    new-instance v0, Lfreemarker/core/_ErrorDescriptionBuilder;

    new-instance v1, Lfreemarker/core/_DelayedAOrAn;

    new-instance v2, Lfreemarker/core/_DelayedFTLTypeDescription;

    iget-object v3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->listedValue:Lfreemarker/template/TemplateModel;

    invoke-direct {v2, v3}, Lfreemarker/core/_DelayedFTLTypeDescription;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {v1, v2}, Lfreemarker/core/_DelayedAOrAn;-><init>(Ljava/lang/Object;)V

    const-string v2, ", thus you must specify only one loop variable after the \"as\" (there\'s no separate key and value)."

    const-string v3, "The value you try to list is "

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/core/_ErrorDescriptionBuilder;-><init>([Ljava/lang/Object;)V

    invoke-direct {p2, p1, v0}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/Environment;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    throw p2
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->this$0:Lfreemarker/core/IteratorBlock;

    invoke-virtual {v0}, Lfreemarker/core/IteratorBlock;->getChildBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lfreemarker/core/IteratorBlock$IterationContext;->executeNestedContent(Lfreemarker/core/Environment;[Lfreemarker/core/TemplateElement;)Z

    move-result p1

    return p1
.end method

.method getIndex()I
    .registers 2

    .line 510
    iget v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->index:I

    return v0
.end method

.method public getLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 5

    .line 456
    iget-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 462
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 463
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v2, v0

    if-eqz v2, :cond_41

    const/4 v0, 0x6

    if-eq v2, v0, :cond_31

    const/16 v0, 0x9

    if-eq v2, v0, :cond_1f

    goto :goto_5b

    .line 474
    :cond_1f
    const-string v0, "_has_next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 475
    iget-boolean p1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->hasNext:Z

    if-eqz p1, :cond_2e

    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_30

    :cond_2e
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    :goto_30
    return-object p1

    .line 469
    :cond_31
    const-string v0, "_index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 470
    new-instance p1, Lfreemarker/template/SimpleNumber;

    iget v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->index:I

    invoke-direct {p1, v0}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    return-object p1

    .line 465
    :cond_41
    iget-object p1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Value:Lfreemarker/template/TemplateModel;

    if-eqz p1, :cond_47

    move-object v1, p1

    goto :goto_5a

    :cond_47
    iget-object p1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->this$0:Lfreemarker/core/IteratorBlock;

    .line 466
    invoke-virtual {p1}, Lfreemarker/core/IteratorBlock;->getTemplate()Lfreemarker/template/Template;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Configuration;->getFallbackOnNullLoopVariable()Z

    move-result p1

    if-eqz p1, :cond_58

    goto :goto_5a

    :cond_58
    sget-object v1, Lfreemarker/core/NullTemplateModel;->INSTANCE:Lfreemarker/core/NullTemplateModel;

    :goto_5a
    return-object v1

    .line 481
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar2Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 482
    iget-object p1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar2Value:Lfreemarker/template/TemplateModel;

    if-eqz p1, :cond_69

    move-object v1, p1

    goto :goto_7c

    :cond_69
    iget-object p1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->this$0:Lfreemarker/core/IteratorBlock;

    .line 483
    invoke-virtual {p1}, Lfreemarker/core/IteratorBlock;->getTemplate()Lfreemarker/template/Template;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Configuration;->getFallbackOnNullLoopVariable()Z

    move-result p1

    if-eqz p1, :cond_7a

    goto :goto_7c

    :cond_7a
    sget-object v1, Lfreemarker/core/NullTemplateModel;->INSTANCE:Lfreemarker/core/NullTemplateModel;

    :cond_7c
    :goto_7c
    return-object v1
.end method

.method public getLocalVariableNames()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 493
    iget-object v1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->localVarNames:Ljava/util/Collection;

    if-nez v1, :cond_43

    .line 494
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->localVarNames:Ljava/util/Collection;

    .line 495
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->localVarNames:Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->localVarNames:Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_has_next"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_43
    iget-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->localVarNames:Ljava/util/Collection;

    return-object v0

    .line 501
    :cond_46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method hasNext()Z
    .registers 2

    .line 506
    iget-boolean v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->hasNext:Z

    return v0
.end method

.method hasVisibleLoopVar(Ljava/lang/String;)Z
    .registers 4

    .line 448
    iget-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->visibleLoopVar1Name:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 452
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar2Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method loopForItemsElement(Lfreemarker/core/Environment;[Lfreemarker/core/TemplateElement;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 250
    :try_start_1
    iget-boolean v1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->alreadyEntered:Z

    if-nez v1, :cond_14

    const/4 v1, 0x1

    .line 254
    iput-boolean v1, p0, Lfreemarker/core/IteratorBlock$IterationContext;->alreadyEntered:Z

    .line 255
    iput-object p3, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Name:Ljava/lang/String;

    .line 256
    iput-object p4, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar2Name:Ljava/lang/String;

    .line 257
    invoke-direct {p0, p1, p2}, Lfreemarker/core/IteratorBlock$IterationContext;->executeNestedContent(Lfreemarker/core/Environment;[Lfreemarker/core/TemplateElement;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1c

    .line 259
    iput-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Name:Ljava/lang/String;

    .line 260
    iput-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar2Name:Ljava/lang/String;

    return-void

    .line 251
    :cond_14
    :try_start_14
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    const-string p3, "The #items directive was already entered earlier for this listing."

    invoke-direct {p2, p1, p3}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p2
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p1

    .line 259
    iput-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar1Name:Ljava/lang/String;

    .line 260
    iput-object v0, p0, Lfreemarker/core/IteratorBlock$IterationContext;->loopVar2Name:Ljava/lang/String;

    .line 261
    throw p1
.end method
