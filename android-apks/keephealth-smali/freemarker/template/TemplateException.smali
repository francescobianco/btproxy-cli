.class public Lfreemarker/template/TemplateException;
.super Ljava/lang/Exception;
.source "TemplateException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/TemplateException$PrintWriterStackTraceWriter;,
        Lfreemarker/template/TemplateException$PrintStreamStackTraceWriter;,
        Lfreemarker/template/TemplateException$StackTraceWriter;
    }
.end annotation


# static fields
.field private static final FTL_INSTRUCTION_STACK_TRACE_TITLE:Ljava/lang/String; = "FTL stack trace (\"~\" means nesting-related):"


# instance fields
.field private final transient blamedExpression:Lfreemarker/core/Expression;

.field private blamedExpressionString:Ljava/lang/String;

.field private blamedExpressionStringCalculated:Z

.field private columnNumber:Ljava/lang/Integer;

.field private description:Ljava/lang/String;

.field private transient descriptionBuilder:Lfreemarker/core/_ErrorDescriptionBuilder;

.field private endColumnNumber:Ljava/lang/Integer;

.field private endLineNumber:Ljava/lang/Integer;

.field private final transient env:Lfreemarker/core/Environment;

.field private transient ftlInstructionStackSnapshot:[Lfreemarker/core/TemplateElement;

.field private lineNumber:Ljava/lang/Integer;

.field private transient lock:Ljava/lang/Object;

.field private transient message:Ljava/lang/String;

.field private transient messageWasAlreadyPrintedForThisTrace:Ljava/lang/ThreadLocal;

.field private transient messageWithoutStackTop:Ljava/lang/String;

.field private positionsCalculated:Z

.field private renderedFtlInstructionStackSnapshot:Ljava/lang/String;

.field private renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

.field private templateName:Ljava/lang/String;

.field private templateSourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfreemarker/core/Environment;)V
    .registers 4

    const/4 v0, 0x0

    .line 80
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v0, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Lfreemarker/core/Environment;)V
    .registers 5

    const/4 v0, 0x0

    .line 98
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/Environment;)V
    .registers 4

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 119
    invoke-direct/range {v0 .. v5}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/Expression;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 133
    invoke-direct/range {v0 .. v5}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/Expression;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/Expression;Lfreemarker/core/_ErrorDescriptionBuilder;)V
    .registers 6

    .line 155
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 72
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    if-nez p3, :cond_10

    .line 157
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object p3

    .line 158
    :cond_10
    iput-object p3, p0, Lfreemarker/template/TemplateException;->env:Lfreemarker/core/Environment;

    .line 160
    iput-object p4, p0, Lfreemarker/template/TemplateException;->blamedExpression:Lfreemarker/core/Expression;

    .line 162
    iput-object p5, p0, Lfreemarker/template/TemplateException;->descriptionBuilder:Lfreemarker/core/_ErrorDescriptionBuilder;

    .line 163
    iput-object p1, p0, Lfreemarker/template/TemplateException;->description:Ljava/lang/String;

    if-eqz p3, :cond_20

    .line 165
    invoke-static {p3}, Lfreemarker/core/_CoreAPI;->getInstructionStackSnapshot(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lfreemarker/core/TemplateElement;

    :cond_20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;)V
    .registers 5

    const/4 v0, 0x0

    .line 111
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/Expression;Lfreemarker/core/_ErrorDescriptionBuilder;)V
    .registers 11

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 145
    invoke-direct/range {v0 .. v5}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/Expression;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    return-void
.end method

.method private calculatePosition()V
    .registers 6

    .line 194
    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_3
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_65

    .line 197
    iget-object v1, p0, Lfreemarker/template/TemplateException;->blamedExpression:Lfreemarker/core/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    goto :goto_19

    :cond_d
    iget-object v1, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lfreemarker/core/TemplateElement;

    if-eqz v1, :cond_18

    array-length v3, v1

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    aget-object v1, v1, v3

    goto :goto_19

    :cond_18
    move-object v1, v2

    :goto_19
    if-eqz v1, :cond_5f

    .line 203
    invoke-virtual {v1}, Lfreemarker/core/TemplateObject;->getBeginLine()I

    move-result v3

    if-lez v3, :cond_5f

    .line 204
    invoke-virtual {v1}, Lfreemarker/core/TemplateObject;->getTemplate()Lfreemarker/template/Template;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 205
    invoke-virtual {v3}, Lfreemarker/template/Template;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2d

    :cond_2c
    move-object v4, v2

    :goto_2d
    iput-object v4, p0, Lfreemarker/template/TemplateException;->templateName:Ljava/lang/String;

    if-eqz v3, :cond_35

    .line 206
    invoke-virtual {v3}, Lfreemarker/template/Template;->getSourceName()Ljava/lang/String;

    move-result-object v2

    :cond_35
    iput-object v2, p0, Lfreemarker/template/TemplateException;->templateSourceName:Ljava/lang/String;

    .line 207
    invoke-virtual {v1}, Lfreemarker/core/TemplateObject;->getBeginLine()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lfreemarker/template/TemplateException;->lineNumber:Ljava/lang/Integer;

    .line 208
    invoke-virtual {v1}, Lfreemarker/core/TemplateObject;->getBeginColumn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lfreemarker/template/TemplateException;->columnNumber:Ljava/lang/Integer;

    .line 209
    invoke-virtual {v1}, Lfreemarker/core/TemplateObject;->getEndLine()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lfreemarker/template/TemplateException;->endLineNumber:Ljava/lang/Integer;

    .line 210
    invoke-virtual {v1}, Lfreemarker/core/TemplateObject;->getEndColumn()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/TemplateException;->endColumnNumber:Ljava/lang/Integer;

    :cond_5f
    const/4 v1, 0x1

    .line 212
    iput-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    .line 213
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->deleteFTLInstructionStackSnapshotIfNotNeeded()V

    .line 215
    :cond_65
    monitor-exit v0

    return-void

    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw v1
.end method

.method private deleteFTLInstructionStackSnapshotIfNotNeeded()V
    .registers 2

    .line 279
    iget-object v0, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lfreemarker/template/TemplateException;->blamedExpression:Lfreemarker/core/Expression;

    if-eqz v0, :cond_13

    :cond_10
    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lfreemarker/core/TemplateElement;

    :cond_13
    return-void
.end method

.method private getDescription()Ljava/lang/String;
    .registers 5

    .line 287
    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/TemplateException;->description:Ljava/lang/String;

    if-nez v1, :cond_22

    iget-object v1, p0, Lfreemarker/template/TemplateException;->descriptionBuilder:Lfreemarker/core/_ErrorDescriptionBuilder;

    if-eqz v1, :cond_22

    .line 290
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->getFailingInstruction()Lfreemarker/core/TemplateElement;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/template/TemplateException;->env:Lfreemarker/core/Environment;

    if-eqz v3, :cond_18

    .line 291
    invoke-virtual {v3}, Lfreemarker/core/Environment;->getShowErrorTips()Z

    move-result v3

    goto :goto_19

    :cond_18
    const/4 v3, 0x1

    .line 289
    :goto_19
    invoke-virtual {v1, v2, v3}, Lfreemarker/core/_ErrorDescriptionBuilder;->toString(Lfreemarker/core/TemplateElement;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/TemplateException;->description:Ljava/lang/String;

    const/4 v1, 0x0

    .line 292
    iput-object v1, p0, Lfreemarker/template/TemplateException;->descriptionBuilder:Lfreemarker/core/_ErrorDescriptionBuilder;

    .line 294
    :cond_22
    iget-object v1, p0, Lfreemarker/template/TemplateException;->description:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_26
    move-exception v1

    .line 295
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private getFTLInstructionStackTopFew()Ljava/lang/String;
    .registers 6

    .line 253
    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lfreemarker/core/TemplateElement;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    iget-object v3, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    if-eqz v3, :cond_d

    goto :goto_f

    .line 273
    :cond_d
    monitor-exit v0

    return-object v2

    .line 255
    :cond_f
    :goto_f
    iget-object v3, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    if-nez v3, :cond_31

    .line 256
    array-length v1, v1

    if-nez v1, :cond_19

    .line 259
    const-string v1, ""

    goto :goto_28

    .line 261
    :cond_19
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 262
    iget-object v3, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lfreemarker/core/TemplateElement;

    const/4 v4, 0x1

    invoke-static {v3, v4, v1}, Lfreemarker/core/_CoreAPI;->outputInstructionStack([Lfreemarker/core/TemplateElement;ZLjava/io/Writer;)V

    .line 263
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    :goto_28
    iget-object v3, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    if-nez v3, :cond_31

    .line 266
    iput-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    .line 267
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->deleteFTLInstructionStackSnapshotIfNotNeeded()V

    .line 270
    :cond_31
    iget-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v2, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    :cond_3b
    monitor-exit v0

    return-object v2

    :catchall_3d
    move-exception v1

    .line 275
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private getFailingInstruction()Lfreemarker/core/TemplateElement;
    .registers 3

    .line 299
    iget-object v0, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lfreemarker/core/TemplateElement;

    if-eqz v0, :cond_b

    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x0

    .line 300
    aget-object v0, v0, v1

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private printStackTrace(Lfreemarker/template/TemplateException$StackTraceWriter;ZZZ)V
    .registers 6

    .line 357
    monitor-enter p1

    if-eqz p2, :cond_c

    .line 359
    :try_start_3
    const-string p2, "FreeMarker template error:"

    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    goto :goto_c

    :catchall_9
    move-exception p2

    goto/16 :goto_ac

    :cond_c
    :goto_c
    if-eqz p3, :cond_33

    .line 363
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getFTLInstructionStack()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_31

    .line 365
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getMessageWithoutStackTop()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    .line 366
    invoke-interface {p1}, Lfreemarker/template/TemplateException$StackTraceWriter;->println()V

    .line 367
    const-string v0, "----"

    invoke-interface {p1, v0}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    .line 368
    const-string v0, "FTL stack trace (\"~\" means nesting-related):"

    invoke-interface {p1, v0}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    .line 369
    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$StackTraceWriter;->print(Ljava/lang/Object;)V

    .line 370
    const-string p2, "----"

    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    goto :goto_33

    :cond_31
    const/4 p3, 0x0

    const/4 p4, 0x1

    :cond_33
    :goto_33
    if-eqz p4, :cond_aa

    if-eqz p3, :cond_71

    .line 379
    invoke-interface {p1}, Lfreemarker/template/TemplateException$StackTraceWriter;->println()V

    .line 380
    const-string p2, "Java stack trace (for programmers):"

    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    .line 381
    const-string p2, "----"

    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    .line 382
    iget-object p2, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_9

    .line 383
    :try_start_47
    iget-object p3, p0, Lfreemarker/template/TemplateException;->messageWasAlreadyPrintedForThisTrace:Ljava/lang/ThreadLocal;

    if-nez p3, :cond_52

    .line 384
    new-instance p3, Ljava/lang/ThreadLocal;

    invoke-direct {p3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p3, p0, Lfreemarker/template/TemplateException;->messageWasAlreadyPrintedForThisTrace:Ljava/lang/ThreadLocal;

    .line 386
    :cond_52
    iget-object p3, p0, Lfreemarker/template/TemplateException;->messageWasAlreadyPrintedForThisTrace:Ljava/lang/ThreadLocal;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 387
    monitor-exit p2
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_6e

    .line 390
    :try_start_5a
    invoke-interface {p1, p0}, Lfreemarker/template/TemplateException$StackTraceWriter;->printStandardStackTrace(Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_65

    .line 392
    :try_start_5d
    iget-object p2, p0, Lfreemarker/template/TemplateException;->messageWasAlreadyPrintedForThisTrace:Ljava/lang/ThreadLocal;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_74

    :catchall_65
    move-exception p2

    iget-object p3, p0, Lfreemarker/template/TemplateException;->messageWasAlreadyPrintedForThisTrace:Ljava/lang/ThreadLocal;

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, p4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 393
    throw p2
    :try_end_6e
    .catchall {:try_start_5d .. :try_end_6e} :catchall_9

    :catchall_6e
    move-exception p3

    .line 387
    :try_start_6f
    monitor-exit p2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    throw p3

    .line 395
    :cond_71
    invoke-interface {p1, p0}, Lfreemarker/template/TemplateException$StackTraceWriter;->printStandardStackTrace(Ljava/lang/Throwable;)V

    .line 398
    :goto_74
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_aa

    .line 400
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2
    :try_end_82
    .catchall {:try_start_70 .. :try_end_82} :catchall_9

    if-nez p2, :cond_aa

    .line 404
    :try_start_84
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "getRootCause"

    sget-object p4, Lfreemarker/template/utility/CollectionUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 405
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    sget-object p4, Lfreemarker/template/utility/CollectionUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-virtual {p2, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_aa

    .line 407
    const-string p3, "ServletException root cause: "

    invoke-interface {p1, p3}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    .line 408
    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$StackTraceWriter;->printStandardStackTrace(Ljava/lang/Throwable;)V
    :try_end_aa
    .catchall {:try_start_84 .. :try_end_aa} :catchall_aa

    .line 416
    :catchall_aa
    :cond_aa
    :try_start_aa
    monitor-exit p1

    return-void

    :goto_ac
    monitor-exit p1
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_9

    throw p2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 589
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    .line 590
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method

.method private renderMessages()V
    .registers 4

    .line 169
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_f

    .line 172
    iput-object v0, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    goto :goto_49

    .line 173
    :cond_f
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No error description was specified for this error; low-level message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    goto :goto_49

    .line 177
    :cond_45
    const-string v0, "[No error description was available.]"

    iput-object v0, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    .line 180
    :goto_49
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->getFTLInstructionStackTopFew()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n----\nFTL stack trace (\"~\" means nesting-related):\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/template/TemplateException;->message:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    goto :goto_82

    .line 189
    :cond_7e
    iget-object v0, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    iput-object v0, p0, Lfreemarker/template/TemplateException;->message:Ljava/lang/String;

    :goto_82
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getFTLInstructionStack()Ljava/lang/String;

    .line 580
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->getFTLInstructionStackTopFew()Ljava/lang/String;

    .line 581
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->getDescription()Ljava/lang/String;

    .line 582
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->calculatePosition()V

    .line 583
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getBlamedExpressionString()Ljava/lang/String;

    .line 585
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method getBlamedExpression()Lfreemarker/core/Expression;
    .registers 2

    .line 574
    iget-object v0, p0, Lfreemarker/template/TemplateException;->blamedExpression:Lfreemarker/core/Expression;

    return-object v0
.end method

.method public getBlamedExpressionString()Ljava/lang/String;
    .registers 3

    .line 562
    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_3
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->blamedExpressionStringCalculated:Z

    if-nez v1, :cond_14

    .line 564
    iget-object v1, p0, Lfreemarker/template/TemplateException;->blamedExpression:Lfreemarker/core/Expression;

    if-eqz v1, :cond_11

    .line 565
    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/TemplateException;->blamedExpressionString:Ljava/lang/String;

    :cond_11
    const/4 v1, 0x1

    .line 567
    iput-boolean v1, p0, Lfreemarker/template/TemplateException;->blamedExpressionStringCalculated:Z

    .line 569
    :cond_14
    iget-object v1, p0, Lfreemarker/template/TemplateException;->blamedExpressionString:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    .line 570
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getCauseException()Ljava/lang/Exception;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_f

    .line 225
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    goto :goto_2b

    :cond_f
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrapped to Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2b
    return-object v0
.end method

.method public getColumnNumber()Ljava/lang/Integer;
    .registers 3

    .line 515
    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_3
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_a

    .line 517
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->calculatePosition()V

    .line 519
    :cond_a
    iget-object v1, p0, Lfreemarker/template/TemplateException;->columnNumber:Ljava/lang/Integer;

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    .line 520
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getEndColumnNumber()Ljava/lang/Integer;
    .registers 3

    .line 545
    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_3
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_a

    .line 547
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->calculatePosition()V

    .line 549
    :cond_a
    iget-object v1, p0, Lfreemarker/template/TemplateException;->endColumnNumber:Ljava/lang/Integer;

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    .line 550
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getEndLineNumber()Ljava/lang/Integer;
    .registers 3

    .line 530
    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_3
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_a

    .line 532
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->calculatePosition()V

    .line 534
    :cond_a
    iget-object v1, p0, Lfreemarker/template/TemplateException;->endLineNumber:Ljava/lang/Integer;

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    .line 535
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getEnvironment()Lfreemarker/core/Environment;
    .registers 2

    .line 311
    iget-object v0, p0, Lfreemarker/template/TemplateException;->env:Lfreemarker/core/Environment;

    return-object v0
.end method

.method public getFTLInstructionStack()Ljava/lang/String;
    .registers 6

    .line 233
    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lfreemarker/core/TemplateElement;

    if-nez v1, :cond_f

    iget-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    if-eqz v1, :cond_c

    goto :goto_f

    .line 247
    :cond_c
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_f
    :goto_f
    iget-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    if-nez v1, :cond_33

    .line 236
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 237
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 238
    iget-object v3, p0, Lfreemarker/template/TemplateException;->ftlInstructionStackSnapshot:[Lfreemarker/core/TemplateElement;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lfreemarker/core/_CoreAPI;->outputInstructionStack([Lfreemarker/core/TemplateElement;ZLjava/io/Writer;)V

    .line 239
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 240
    iget-object v2, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    if-nez v2, :cond_33

    .line 241
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    .line 242
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->deleteFTLInstructionStackSnapshotIfNotNeeded()V

    .line 245
    :cond_33
    iget-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_37
    move-exception v1

    .line 249
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public getLineNumber()Ljava/lang/Integer;
    .registers 3

    .line 466
    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_3
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_a

    .line 468
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->calculatePosition()V

    .line 470
    :cond_a
    iget-object v1, p0, Lfreemarker/template/TemplateException;->lineNumber:Ljava/lang/Integer;

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    .line 471
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 437
    iget-object v0, p0, Lfreemarker/template/TemplateException;->messageWasAlreadyPrintedForThisTrace:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_f

    .line 438
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_f

    .line 439
    const-string v0, "[... Exception message was already printed; see it above ...]"

    return-object v0

    .line 441
    :cond_f
    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_12
    iget-object v1, p0, Lfreemarker/template/TemplateException;->message:Ljava/lang/String;

    if-nez v1, :cond_19

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->renderMessages()V

    .line 443
    :cond_19
    iget-object v1, p0, Lfreemarker/template/TemplateException;->message:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_1d
    move-exception v1

    .line 444
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getMessageWithoutStackTop()Ljava/lang/String;
    .registers 3

    .line 454
    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    if-nez v1, :cond_a

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->renderMessages()V

    .line 456
    :cond_a
    iget-object v1, p0, Lfreemarker/template/TemplateException;->messageWithoutStackTop:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    .line 457
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getTemplateName()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 486
    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_3
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_a

    .line 488
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->calculatePosition()V

    .line 490
    :cond_a
    iget-object v1, p0, Lfreemarker/template/TemplateException;->templateName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    .line 491
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getTemplateSourceName()Ljava/lang/String;
    .registers 3

    .line 501
    iget-object v0, p0, Lfreemarker/template/TemplateException;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_3
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_a

    .line 503
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->calculatePosition()V

    .line 505
    :cond_a
    iget-object v1, p0, Lfreemarker/template/TemplateException;->templateSourceName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    .line 506
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3

    const/4 v0, 0x1

    .line 319
    invoke-virtual {p0, p1, v0, v0, v0}, Lfreemarker/template/TemplateException;->printStackTrace(Ljava/io/PrintStream;ZZZ)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;ZZZ)V
    .registers 6

    .line 351
    monitor-enter p1

    .line 352
    :try_start_1
    new-instance v0, Lfreemarker/template/TemplateException$PrintStreamStackTraceWriter;

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateException$PrintStreamStackTraceWriter;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lfreemarker/template/TemplateException;->printStackTrace(Lfreemarker/template/TemplateException$StackTraceWriter;ZZZ)V

    .line 353
    monitor-exit p1

    return-void

    :catchall_b
    move-exception p2

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw p2
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3

    const/4 v0, 0x1

    .line 327
    invoke-virtual {p0, p1, v0, v0, v0}, Lfreemarker/template/TemplateException;->printStackTrace(Ljava/io/PrintWriter;ZZZ)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;ZZZ)V
    .registers 6

    .line 338
    monitor-enter p1

    .line 339
    :try_start_1
    new-instance v0, Lfreemarker/template/TemplateException$PrintWriterStackTraceWriter;

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateException$PrintWriterStackTraceWriter;-><init>(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lfreemarker/template/TemplateException;->printStackTrace(Lfreemarker/template/TemplateException$StackTraceWriter;ZZZ)V

    .line 340
    monitor-exit p1

    return-void

    :catchall_b
    move-exception p2

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw p2
.end method

.method public printStandardStackTrace(Ljava/io/PrintStream;)V
    .registers 2

    .line 424
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStandardStackTrace(Ljava/io/PrintWriter;)V
    .registers 2

    .line 432
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method
