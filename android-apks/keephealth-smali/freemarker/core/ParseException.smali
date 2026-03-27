.class public Lfreemarker/core/ParseException;
.super Ljava/io/IOException;
.source "ParseException.java"

# interfaces
.implements Lfreemarker/core/FMParserConstants;


# static fields
.field private static volatile jbossToolsMode:Ljava/lang/Boolean;


# instance fields
.field public columnNumber:I

.field public currentToken:Lfreemarker/core/Token;

.field private description:Ljava/lang/String;

.field public endColumnNumber:I

.field public endLineNumber:I

.field protected eol:Ljava/lang/String;

.field public expectedTokenSequences:[[I

.field public lineNumber:I

.field private message:Ljava/lang/String;

.field private messageAndDescriptionRendered:Z

.field protected specialConstructor:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private templateName:Ljava/lang/String;

.field public tokenImage:[Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 80
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/ParseException;->eol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Token;[[I[Ljava/lang/String;)V
    .registers 6

    .line 102
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 80
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/ParseException;->eol:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lfreemarker/core/ParseException;->currentToken:Lfreemarker/core/Token;

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lfreemarker/core/ParseException;->specialConstructor:Z

    .line 105
    iput-object p2, p0, Lfreemarker/core/ParseException;->expectedTokenSequences:[[I

    .line 106
    iput-object p3, p0, Lfreemarker/core/ParseException;->tokenImage:[Ljava/lang/String;

    .line 107
    iget-object p1, p1, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iget p1, p1, Lfreemarker/core/Token;->beginLine:I

    iput p1, p0, Lfreemarker/core/ParseException;->lineNumber:I

    .line 108
    iget-object p1, p0, Lfreemarker/core/ParseException;->currentToken:Lfreemarker/core/Token;

    iget-object p1, p1, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iget p1, p1, Lfreemarker/core/Token;->beginColumn:I

    iput p1, p0, Lfreemarker/core/ParseException;->columnNumber:I

    .line 109
    iget-object p1, p0, Lfreemarker/core/ParseException;->currentToken:Lfreemarker/core/Token;

    iget-object p1, p1, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iget p1, p1, Lfreemarker/core/Token;->endLine:I

    iput p1, p0, Lfreemarker/core/ParseException;->endLineNumber:I

    .line 110
    iget-object p1, p0, Lfreemarker/core/ParseException;->currentToken:Lfreemarker/core/Token;

    iget-object p1, p1, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iget p1, p1, Lfreemarker/core/Token;->endColumn:I

    iput p1, p0, Lfreemarker/core/ParseException;->endColumnNumber:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    .line 134
    move-object v0, v2

    check-cast v0, Lfreemarker/template/Template;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;IILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V
    .registers 4

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;Ljava/lang/Throwable;)V
    .registers 13

    .line 212
    invoke-virtual {p2}, Lfreemarker/core/TemplateObject;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p2}, Lfreemarker/core/TemplateObject;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Template;->getSourceName()Ljava/lang/String;

    move-result-object v0

    :goto_10
    move-object v3, v0

    iget v4, p2, Lfreemarker/core/TemplateObject;->beginLine:I

    iget v5, p2, Lfreemarker/core/TemplateObject;->beginColumn:I

    iget v6, p2, Lfreemarker/core/TemplateObject;->endLine:I

    iget v7, p2, Lfreemarker/core/TemplateObject;->endColumn:I

    move-object v1, p0

    move-object v2, p1

    move-object v8, p3

    .line 211
    invoke-direct/range {v1 .. v8}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/Template;II)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 165
    invoke-direct/range {v0 .. v5}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;IILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/Template;IIII)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 142
    invoke-direct/range {v0 .. v7}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;IIIILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/Template;IIIILjava/lang/Throwable;)V
    .registers 16

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_8

    .line 152
    :cond_4
    invoke-virtual {p2}, Lfreemarker/template/Template;->getSourceName()Ljava/lang/String;

    move-result-object p2

    :goto_8
    move-object v2, p2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 151
    invoke-direct/range {v0 .. v7}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/Template;IILjava/lang/Throwable;)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_8

    .line 176
    :cond_4
    invoke-virtual {p2}, Lfreemarker/template/Template;->getSourceName()Ljava/lang/String;

    move-result-object p2

    :goto_8
    move-object v2, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v7, p5

    .line 175
    invoke-direct/range {v0 .. v7}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V
    .registers 5

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, p2, p3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;Ljava/lang/Throwable;)V
    .registers 13

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_8

    .line 194
    :cond_4
    invoke-virtual {p2}, Lfreemarker/template/Template;->getSourceName()Ljava/lang/String;

    move-result-object p2

    :goto_8
    move-object v2, p2

    iget v3, p3, Lfreemarker/core/Token;->beginLine:I

    iget v4, p3, Lfreemarker/core/Token;->beginColumn:I

    iget v5, p3, Lfreemarker/core/Token;->endLine:I

    iget v6, p3, Lfreemarker/core/Token;->endColumn:I

    move-object v0, p0

    move-object v1, p1

    move-object v7, p4

    .line 193
    invoke-direct/range {v0 .. v7}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/Throwable;)V
    .registers 10

    .line 222
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 80
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/ParseException;->eol:Ljava/lang/String;

    .line 224
    :try_start_d
    invoke-virtual {p0, p7}, Lfreemarker/core/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_10

    .line 228
    :catch_10
    iput-object p1, p0, Lfreemarker/core/ParseException;->description:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lfreemarker/core/ParseException;->templateName:Ljava/lang/String;

    .line 230
    iput p3, p0, Lfreemarker/core/ParseException;->lineNumber:I

    .line 231
    iput p4, p0, Lfreemarker/core/ParseException;->columnNumber:I

    .line 232
    iput p5, p0, Lfreemarker/core/ParseException;->endLineNumber:I

    .line 233
    iput p6, p0, Lfreemarker/core/ParseException;->endColumnNumber:I

    return-void
.end method

.method private concatWithOrs(Ljava/util/Set;)Ljava/lang/String;
    .registers 5

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 501
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_20

    .line 503
    const-string v2, " or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 507
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCustomTokenErrorDescription()Ljava/lang/String;
    .registers 9

    .line 421
    iget-object v0, p0, Lfreemarker/core/ParseException;->currentToken:Lfreemarker/core/Token;

    iget-object v0, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    .line 422
    iget v1, v0, Lfreemarker/core/Token;->kind:I

    const/16 v2, 0x24

    if-nez v1, :cond_e9

    .line 424
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    .line 425
    :goto_11
    iget-object v4, p0, Lfreemarker/core/ParseException;->expectedTokenSequences:[[I

    array-length v5, v4

    if-ge v3, v5, :cond_b7

    .line 426
    aget-object v4, v4, v3

    move v5, v1

    .line 427
    :goto_19
    array-length v6, v4

    if-ge v5, v6, :cond_b3

    .line 428
    aget v6, v4, v5

    if-eq v6, v2, :cond_aa

    const/16 v7, 0x25

    if-eq v6, v7, :cond_a4

    const/16 v7, 0x47

    if-eq v6, v7, :cond_9e

    const/16 v7, 0x49

    if-eq v6, v7, :cond_98

    const/16 v7, 0x4b

    if-eq v6, v7, :cond_92

    const/16 v7, 0x86

    if-eq v6, v7, :cond_8c

    const/16 v7, 0x88

    if-eq v6, v7, :cond_86

    const/16 v7, 0x8a

    if-eq v6, v7, :cond_80

    packed-switch v6, :pswitch_data_114

    packed-switch v6, :pswitch_data_126

    goto/16 :goto_af

    .line 436
    :pswitch_44
    const-string v6, "#switch"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_af

    .line 450
    :pswitch_4b
    const-string v6, "#transform"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 442
    :pswitch_51
    const-string v6, "#compress"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 445
    :pswitch_57
    const-string v6, "#macro"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    :pswitch_5c
    const-string v6, "#function"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 459
    :pswitch_62
    const-string v6, "#assign"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 465
    :pswitch_68
    const-string v6, "#global"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 462
    :pswitch_6e
    const-string v6, "#local"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 430
    :pswitch_74
    const-string v6, "#foreach"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 468
    :pswitch_7a
    const-string v6, "#attempt"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 471
    :cond_80
    const-string v6, "\"{\""

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 477
    :cond_86
    const-string v6, "\"(\""

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 474
    :cond_8c
    const-string v6, "\"[\""

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 480
    :cond_92
    const-string v6, "@..."

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 456
    :cond_98
    const-string v6, "#noescape"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 453
    :cond_9e
    const-string v6, "#escape"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 433
    :cond_a4
    const-string v6, "#list"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 439
    :cond_aa
    const-string v6, "#if"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_af
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_19

    :cond_b3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    .line 485
    :cond_b7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of file reached."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_c7

    const-string v0, ""

    goto :goto_e0

    :cond_c7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " You have an unclosed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lfreemarker/core/ParseException;->concatWithOrs(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e9
    const/16 v3, 0x36

    if-ne v1, v3, :cond_f0

    .line 488
    const-string v0, "Unexpected directive, \"#else\". Check if you have a valid #if-#elseif-#else or #list-#else structure."

    return-object v0

    :cond_f0
    if-eq v1, v2, :cond_f9

    const/16 v2, 0x9

    if-ne v1, v2, :cond_f7

    goto :goto_f9

    :cond_f7
    const/4 v0, 0x0

    return-object v0

    .line 491
    :cond_f9
    :goto_f9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected directive, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Check if you have a valid #if-#elseif-#else structure."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_114
    .packed-switch 0x29
        :pswitch_7a
        :pswitch_74
        :pswitch_6e
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_57
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x33
        :pswitch_51
        :pswitch_4b
        :pswitch_44
    .end packed-switch
.end method

.method private getDescription()Ljava/lang/String;
    .registers 2

    .line 269
    monitor-enter p0

    .line 270
    :try_start_1
    iget-boolean v0, p0, Lfreemarker/core/ParseException;->messageAndDescriptionRendered:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lfreemarker/core/ParseException;->description:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 271
    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_15

    .line 272
    invoke-direct {p0}, Lfreemarker/core/ParseException;->renderMessageAndDescription()V

    .line 273
    monitor-enter p0

    .line 274
    :try_start_e
    iget-object v0, p0, Lfreemarker/core/ParseException;->description:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    .line 275
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v0

    :catchall_15
    move-exception v0

    .line 271
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private getOrRenderDescription()Ljava/lang/String;
    .registers 8

    .line 370
    monitor-enter p0

    .line 371
    :try_start_1
    iget-object v0, p0, Lfreemarker/core/ParseException;->description:Ljava/lang/String;

    if-eqz v0, :cond_7

    monitor-exit p0

    return-object v0

    .line 372
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_109

    .line 375
    iget-object v0, p0, Lfreemarker/core/ParseException;->currentToken:Lfreemarker/core/Token;

    if-eqz v0, :cond_107

    .line 376
    invoke-direct {p0}, Lfreemarker/core/ParseException;->getCustomTokenErrorDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_108

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 381
    :goto_1a
    iget-object v4, p0, Lfreemarker/core/ParseException;->expectedTokenSequences:[[I

    array-length v4, v4

    if-ge v2, v4, :cond_55

    if-eqz v2, :cond_26

    .line 383
    iget-object v4, p0, Lfreemarker/core/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_26
    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v4, p0, Lfreemarker/core/ParseException;->expectedTokenSequences:[[I

    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_33

    .line 387
    array-length v3, v4

    :cond_33
    move v4, v1

    .line 389
    :goto_34
    iget-object v5, p0, Lfreemarker/core/ParseException;->expectedTokenSequences:[[I

    aget-object v5, v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_52

    if-eqz v4, :cond_42

    const/16 v5, 0x20

    .line 390
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    :cond_42
    iget-object v5, p0, Lfreemarker/core/ParseException;->tokenImage:[Ljava/lang/String;

    iget-object v6, p0, Lfreemarker/core/ParseException;->expectedTokenSequences:[[I

    aget-object v6, v6, v2

    aget v6, v6, v4

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 394
    :cond_55
    const-string v2, "Encountered \""

    .line 395
    iget-object v4, p0, Lfreemarker/core/ParseException;->currentToken:Lfreemarker/core/Token;

    iget-object v4, v4, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    move v5, v1

    :goto_5c
    if-ge v5, v3, :cond_a9

    if-eqz v5, :cond_73

    .line 397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    :cond_73
    iget v6, v4, Lfreemarker/core/Token;->kind:I

    if-nez v6, :cond_8d

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/ParseException;->tokenImage:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a9

    .line 402
    :cond_8d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v4, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lfreemarker/core/ParseException;->add_escapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    iget-object v4, v4, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 405
    :cond_a9
    :goto_a9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    iget-object v2, p0, Lfreemarker/core/ParseException;->expectedTokenSequences:[[I

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_dc

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "was expecting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_f5

    .line 410
    :cond_dc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "was expecting one of:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    :goto_f5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_108

    :cond_107
    const/4 v0, 0x0

    :cond_108
    :goto_108
    return-object v0

    :catchall_109
    move-exception v0

    .line 372
    :try_start_10a
    monitor-exit p0
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v0
.end method

.method private isInJBossToolsMode()Z
    .registers 3

    .line 353
    sget-object v0, Lfreemarker/core/ParseException;->jbossToolsMode:Ljava/lang/Boolean;

    if-nez v0, :cond_25

    .line 355
    :try_start_4
    const-class v0, Lfreemarker/core/ParseException;

    .line 356
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[org.jboss.ide.eclipse.freemarker:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 355
    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lfreemarker/core/ParseException;->jbossToolsMode:Ljava/lang/Boolean;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_21

    goto :goto_25

    .line 359
    :catchall_21
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lfreemarker/core/ParseException;->jbossToolsMode:Ljava/lang/Boolean;

    .line 362
    :cond_25
    :goto_25
    sget-object v0, Lfreemarker/core/ParseException;->jbossToolsMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private renderMessageAndDescription()V
    .registers 6

    .line 331
    invoke-direct {p0}, Lfreemarker/core/ParseException;->getOrRenderDescription()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-direct {p0}, Lfreemarker/core/ParseException;->isInJBossToolsMode()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Syntax error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/core/ParseException;->templateName:Ljava/lang/String;

    iget v3, p0, Lfreemarker/core/ParseException;->lineNumber:I

    iget v4, p0, Lfreemarker/core/ParseException;->columnNumber:I

    .line 336
    invoke-static {v2, v3, v4}, Lfreemarker/core/_MessageUtil;->formatLocationForSimpleParsingError(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    .line 339
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[col. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lfreemarker/core/ParseException;->columnNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    :goto_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 345
    monitor-enter p0

    .line 346
    :try_start_5b
    iput-object v0, p0, Lfreemarker/core/ParseException;->message:Ljava/lang/String;

    .line 347
    iput-object v1, p0, Lfreemarker/core/ParseException;->description:Ljava/lang/String;

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lfreemarker/core/ParseException;->messageAndDescriptionRendered:Z

    .line 349
    monitor-exit p0

    return-void

    :catchall_64
    move-exception v0

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_64

    throw v0
.end method


# virtual methods
.method protected add_escapes(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 518
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_a3

    .line 519
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_9f

    const/16 v3, 0x22

    if-eq v2, v3, :cond_9a

    const/16 v3, 0x27

    if-eq v2, v3, :cond_94

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_8e

    const/16 v3, 0xc

    if-eq v2, v3, :cond_88

    const/16 v3, 0xd

    if-eq v2, v3, :cond_82

    packed-switch v2, :pswitch_data_a8

    .line 548
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_3a

    const/16 v3, 0x7e

    if-le v2, v3, :cond_36

    goto :goto_3a

    .line 552
    :cond_36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 549
    :cond_3a
    :goto_3a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0000"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\\u"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 530
    :pswitch_70
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 527
    :pswitch_76
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 524
    :pswitch_7c
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 536
    :cond_82
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 533
    :cond_88
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 545
    :cond_8e
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 542
    :cond_94
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 539
    :cond_9a
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9f
    :goto_9f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 557
    :cond_a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_a8
    .packed-switch 0x8
        :pswitch_7c
        :pswitch_76
        :pswitch_70
    .end packed-switch
.end method

.method public getColumnNumber()I
    .registers 2

    .line 308
    iget v0, p0, Lfreemarker/core/ParseException;->columnNumber:I

    return v0
.end method

.method public getEditorMessage()Ljava/lang/String;
    .registers 2

    .line 284
    invoke-direct {p0}, Lfreemarker/core/ParseException;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndColumnNumber()I
    .registers 2

    .line 327
    iget v0, p0, Lfreemarker/core/ParseException;->endColumnNumber:I

    return v0
.end method

.method public getEndLineNumber()I
    .registers 2

    .line 317
    iget v0, p0, Lfreemarker/core/ParseException;->endLineNumber:I

    return v0
.end method

.method public getLineNumber()I
    .registers 2

    .line 301
    iget v0, p0, Lfreemarker/core/ParseException;->lineNumber:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 259
    monitor-enter p0

    .line 260
    :try_start_1
    iget-boolean v0, p0, Lfreemarker/core/ParseException;->messageAndDescriptionRendered:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lfreemarker/core/ParseException;->message:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 261
    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_15

    .line 262
    invoke-direct {p0}, Lfreemarker/core/ParseException;->renderMessageAndDescription()V

    .line 263
    monitor-enter p0

    .line 264
    :try_start_e
    iget-object v0, p0, Lfreemarker/core/ParseException;->message:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    .line 265
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v0

    :catchall_15
    move-exception v0

    .line 261
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .registers 2

    .line 294
    iget-object v0, p0, Lfreemarker/core/ParseException;->templateName:Ljava/lang/String;

    return-object v0
.end method

.method public setTemplateName(Ljava/lang/String;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lfreemarker/core/ParseException;->templateName:Ljava/lang/String;

    .line 243
    monitor-enter p0

    const/4 p1, 0x0

    .line 244
    :try_start_4
    iput-boolean p1, p0, Lfreemarker/core/ParseException;->messageAndDescriptionRendered:Z

    const/4 p1, 0x0

    .line 245
    iput-object p1, p0, Lfreemarker/core/ParseException;->message:Ljava/lang/String;

    .line 246
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw p1
.end method
