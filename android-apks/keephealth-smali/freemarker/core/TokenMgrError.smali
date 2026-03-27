.class public Lfreemarker/core/TokenMgrError;
.super Ljava/lang/Error;
.source "TokenMgrError.java"


# static fields
.field static final INVALID_LEXICAL_STATE:I = 0x2

.field static final LEXICAL_ERROR:I = 0x0

.field static final LOOP_DETECTED:I = 0x3

.field static final STATIC_LEXER_ERROR:I = 0x1


# instance fields
.field private columnNumber:Ljava/lang/Integer;

.field private detail:Ljava/lang/String;

.field private endColumnNumber:Ljava/lang/Integer;

.field private endLineNumber:Ljava/lang/Integer;

.field errorCode:I

.field private lineNumber:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 158
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->detail:Ljava/lang/String;

    .line 160
    iput p2, p0, Lfreemarker/core/TokenMgrError;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 170
    invoke-direct/range {v0 .. v6}, Lfreemarker/core/TokenMgrError;-><init>(Ljava/lang/String;IIIII)V

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->endLineNumber:Ljava/lang/Integer;

    .line 172
    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->endColumnNumber:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .registers 7

    .line 181
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->detail:Ljava/lang/String;

    .line 183
    iput p2, p0, Lfreemarker/core/TokenMgrError;->errorCode:I

    .line 185
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->lineNumber:Ljava/lang/Integer;

    .line 186
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->columnNumber:Ljava/lang/Integer;

    .line 187
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->endLineNumber:Ljava/lang/Integer;

    .line 188
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->endColumnNumber:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(ZIIILjava/lang/String;CI)V
    .registers 8

    .line 201
    invoke-static/range {p1 .. p6}, Lfreemarker/core/TokenMgrError;->LexicalError(ZIIILjava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p7}, Lfreemarker/core/TokenMgrError;-><init>(Ljava/lang/String;I)V

    .line 203
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->lineNumber:Ljava/lang/Integer;

    .line 204
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->columnNumber:Ljava/lang/Integer;

    .line 206
    iget-object p2, p0, Lfreemarker/core/TokenMgrError;->lineNumber:Ljava/lang/Integer;

    iput-object p2, p0, Lfreemarker/core/TokenMgrError;->endLineNumber:Ljava/lang/Integer;

    .line 207
    iput-object p1, p0, Lfreemarker/core/TokenMgrError;->endColumnNumber:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(ZIIILjava/lang/String;II)V
    .registers 16

    int-to-char v6, p6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p7

    .line 197
    invoke-direct/range {v0 .. v7}, Lfreemarker/core/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    return-void
.end method

.method protected static LexicalError(ZIIILjava/lang/String;C)Ljava/lang/String;
    .registers 6

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Lexical error: encountered "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_c

    const-string p0, "<EOF> "

    goto :goto_33

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {p5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lfreemarker/core/TokenMgrError;->addEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\" ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "), "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "after \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 133
    invoke-static {p4}, Lfreemarker/core/TokenMgrError;->addEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\"."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static final addEscapes(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 76
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_a3

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

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

    .line 106
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_3a

    const/16 v3, 0x7e

    if-le v2, v3, :cond_36

    goto :goto_3a

    .line 110
    :cond_36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 107
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

    .line 108
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

    .line 88
    :pswitch_70
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 85
    :pswitch_76
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 82
    :pswitch_7c
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 94
    :cond_82
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 91
    :cond_88
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 103
    :cond_8e
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 100
    :cond_94
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 97
    :cond_9a
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9f
    :goto_9f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 115
    :cond_a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_a8
    .packed-switch 0x8
        :pswitch_7c
        :pswitch_76
        :pswitch_70
    .end packed-switch
.end method


# virtual methods
.method public getColumnNumber()Ljava/lang/Integer;
    .registers 2

    .line 225
    iget-object v0, p0, Lfreemarker/core/TokenMgrError;->columnNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .registers 2

    .line 251
    iget-object v0, p0, Lfreemarker/core/TokenMgrError;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getEndColumnNumber()Ljava/lang/Integer;
    .registers 2

    .line 247
    iget-object v0, p0, Lfreemarker/core/TokenMgrError;->endColumnNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndLineNumber()Ljava/lang/Integer;
    .registers 2

    .line 236
    iget-object v0, p0, Lfreemarker/core/TokenMgrError;->endLineNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLineNumber()Ljava/lang/Integer;
    .registers 2

    .line 216
    iget-object v0, p0, Lfreemarker/core/TokenMgrError;->lineNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 147
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toParseException(Lfreemarker/template/Template;)Lfreemarker/core/ParseException;
    .registers 10

    .line 255
    new-instance v7, Lfreemarker/core/ParseException;

    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getDetail()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getLineNumber()Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getLineNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    goto :goto_18

    :cond_17
    move v3, v2

    .line 258
    :goto_18
    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getColumnNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getColumnNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    goto :goto_29

    :cond_28
    move v4, v2

    .line 259
    :goto_29
    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getEndLineNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getEndLineNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v5, v0

    goto :goto_3a

    :cond_39
    move v5, v2

    .line 260
    :goto_3a
    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getEndColumnNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lfreemarker/core/TokenMgrError;->getEndColumnNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    goto :goto_4b

    :cond_4a
    move v6, v2

    :goto_4b
    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;IIII)V

    return-object v7
.end method
