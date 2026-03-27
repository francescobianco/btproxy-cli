.class public Lfreemarker/core/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# static fields
.field public static final staticFlag:Z = false


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field protected tabSize:I

.field tokenBegin:I

.field protected trackLineColumn:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 350
    invoke-direct {p0, p1, v0, v0, v1}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5

    const/16 v0, 0x1000

    .line 338
    invoke-direct {p0, p1, p2, p3, v0}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .registers 6

    .line 324
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v4, 0x1

    const/16 v5, 0x1000

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 344
    invoke-direct/range {v0 .. v5}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 331
    invoke-direct/range {v0 .. v5}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_8

    .line 317
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p2, v0

    :goto_e
    invoke-direct {p0, p2, p3, p4, p5}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 278
    invoke-direct {p0, p1, v0, v0, v1}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .registers 5

    const/16 v0, 0x1000

    .line 272
    invoke-direct {p0, p1, p2, p3, v0}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .registers 6

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lfreemarker/core/SimpleCharStream;->prevCharIsCR:Z

    .line 26
    iput-boolean v0, p0, Lfreemarker/core/SimpleCharStream;->prevCharIsLF:Z

    .line 31
    iput v0, p0, Lfreemarker/core/SimpleCharStream;->maxNextCharInd:I

    .line 32
    iput v0, p0, Lfreemarker/core/SimpleCharStream;->inBuf:I

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lfreemarker/core/SimpleCharStream;->tabSize:I

    .line 34
    iput-boolean v0, p0, Lfreemarker/core/SimpleCharStream;->trackLineColumn:Z

    .line 258
    iput-object p1, p0, Lfreemarker/core/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 259
    iput p2, p0, Lfreemarker/core/SimpleCharStream;->line:I

    sub-int/2addr p3, v0

    .line 260
    iput p3, p0, Lfreemarker/core/SimpleCharStream;->column:I

    .line 262
    iput p4, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    iput p4, p0, Lfreemarker/core/SimpleCharStream;->available:I

    .line 263
    new-array p1, p4, [C

    iput-object p1, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    .line 264
    new-array p1, p4, [I

    iput-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    .line 265
    new-array p1, p4, [I

    iput-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    return-void
.end method


# virtual methods
.method public BeginToken()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 137
    iput v0, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    .line 138
    invoke-virtual {p0}, Lfreemarker/core/SimpleCharStream;->readChar()C

    move-result v0

    .line 139
    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    iput v1, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    return v0
.end method

.method public Done()V
    .registers 2

    const/4 v0, 0x0

    .line 420
    iput-object v0, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    .line 421
    iput-object v0, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    .line 422
    iput-object v0, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    return-void
.end method

.method protected ExpandBuff(Z)V
    .registers 8

    .line 43
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    add-int/lit16 v1, v0, 0x800

    new-array v1, v1, [C

    add-int/lit16 v2, v0, 0x800

    .line 44
    new-array v2, v2, [I

    add-int/lit16 v3, v0, 0x800

    .line 45
    new-array v3, v3, [I

    const/4 v4, 0x0

    if-eqz p1, :cond_64

    .line 51
    :try_start_11
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    iget v5, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    iget v0, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    iget v5, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v5

    iget v5, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iput-object v1, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    .line 55
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    iget v0, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    iget v0, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iput-object v2, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    .line 59
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    iget v0, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    iget v0, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    invoke-static {p1, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iput-object v3, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    .line 63
    iget p1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    iget v0, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    iput p1, p0, Lfreemarker/core/SimpleCharStream;->maxNextCharInd:I

    goto :goto_8f

    .line 67
    :cond_64
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    iget v5, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iput-object v1, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    .line 70
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    iget v0, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput-object v2, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    .line 73
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    iget v0, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iput-object v3, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    .line 76
    iget p1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    iget v0, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    sub-int/2addr p1, v0

    iput p1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    iput p1, p0, Lfreemarker/core/SimpleCharStream;->maxNextCharInd:I
    :try_end_8f
    .catchall {:try_start_11 .. :try_end_8f} :catchall_9a

    .line 85
    :goto_8f
    iget p1, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    add-int/lit16 p1, p1, 0x800

    iput p1, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    .line 86
    iput p1, p0, Lfreemarker/core/SimpleCharStream;->available:I

    .line 87
    iput v4, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    return-void

    :catchall_9a
    move-exception p1

    .line 81
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected FillBuff()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->maxNextCharInd:I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->available:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_35

    .line 94
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    const/16 v4, 0x800

    if-ne v1, v0, :cond_24

    .line 96
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    if-le v0, v4, :cond_19

    .line 98
    iput v3, p0, Lfreemarker/core/SimpleCharStream;->maxNextCharInd:I

    iput v3, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    .line 99
    iput v0, p0, Lfreemarker/core/SimpleCharStream;->available:I

    goto :goto_35

    :cond_19
    if-gez v0, :cond_20

    .line 102
    iput v3, p0, Lfreemarker/core/SimpleCharStream;->maxNextCharInd:I

    iput v3, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    goto :goto_35

    .line 104
    :cond_20
    invoke-virtual {p0, v3}, Lfreemarker/core/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_35

    .line 106
    :cond_24
    iget v5, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    if-le v1, v5, :cond_2b

    .line 107
    iput v0, p0, Lfreemarker/core/SimpleCharStream;->available:I

    goto :goto_35

    :cond_2b
    sub-int v0, v5, v1

    if-ge v0, v4, :cond_33

    .line 109
    invoke-virtual {p0, v2}, Lfreemarker/core/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_35

    .line 111
    :cond_33
    iput v5, p0, Lfreemarker/core/SimpleCharStream;->available:I

    :cond_35
    :goto_35
    const/4 v0, -0x1

    .line 116
    :try_start_36
    iget-object v1, p0, Lfreemarker/core/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iget-object v4, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    iget v5, p0, Lfreemarker/core/SimpleCharStream;->maxNextCharInd:I

    iget v6, p0, Lfreemarker/core/SimpleCharStream;->available:I

    sub-int/2addr v6, v5

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-eq v1, v0, :cond_4b

    .line 122
    iget v4, p0, Lfreemarker/core/SimpleCharStream;->maxNextCharInd:I

    add-int/2addr v4, v1

    iput v4, p0, Lfreemarker/core/SimpleCharStream;->maxNextCharInd:I

    return-void

    .line 118
    :cond_4b
    iget-object v1, p0, Lfreemarker/core/SimpleCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 119
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_56} :catch_56

    :catch_56
    move-exception v1

    .line 126
    iget v4, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    sub-int/2addr v4, v2

    iput v4, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    .line 127
    invoke-virtual {p0, v3}, Lfreemarker/core/SimpleCharStream;->backup(I)V

    .line 128
    iget v2, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    if-ne v2, v0, :cond_67

    .line 129
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    iput v0, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    .line 130
    :cond_67
    throw v1
.end method

.method public GetImage()Ljava/lang/String;
    .registers 6

    .line 393
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_15

    .line 394
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    iget v2, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 396
    :cond_15
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    iget v2, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    iget v3, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSuffix(I)[C
    .registers 8

    .line 403
    new-array v0, p1, [C

    .line 405
    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-lt v2, p1, :cond_12

    .line 406
    iget-object v2, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2e

    .line 409
    :cond_12
    iget-object v2, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    iget v4, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v4, v5

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    iget-object v1, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    iget v2, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2e
    return-object v0
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 376
    invoke-virtual {p0, p1, v0, v0, v1}, Lfreemarker/core/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .registers 5

    const/16 v0, 0x1000

    .line 388
    invoke-virtual {p0, p1, p2, p3, v0}, Lfreemarker/core/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .registers 6

    .line 364
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lfreemarker/core/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v4, 0x1

    const/16 v5, 0x1000

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 370
    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 382
    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_8

    .line 357
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p2, v0

    :goto_e
    invoke-virtual {p0, p2, p3, p4, p5}, Lfreemarker/core/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 311
    invoke-virtual {p0, p1, v0, v0, v1}, Lfreemarker/core/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .registers 5

    const/16 v0, 0x1000

    .line 305
    invoke-virtual {p0, p1, p2, p3, v0}, Lfreemarker/core/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .registers 5

    .line 285
    iput-object p1, p0, Lfreemarker/core/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 286
    iput p2, p0, Lfreemarker/core/SimpleCharStream;->line:I

    add-int/lit8 p3, p3, -0x1

    .line 287
    iput p3, p0, Lfreemarker/core/SimpleCharStream;->column:I

    .line 289
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    if-eqz p1, :cond_f

    array-length p1, p1

    if-eq p4, p1, :cond_1f

    .line 291
    :cond_f
    iput p4, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    iput p4, p0, Lfreemarker/core/SimpleCharStream;->available:I

    .line 292
    new-array p1, p4, [C

    iput-object p1, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    .line 293
    new-array p1, p4, [I

    iput-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    .line 294
    new-array p1, p4, [I

    iput-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    :cond_1f
    const/4 p1, 0x0

    .line 296
    iput-boolean p1, p0, Lfreemarker/core/SimpleCharStream;->prevCharIsCR:Z

    iput-boolean p1, p0, Lfreemarker/core/SimpleCharStream;->prevCharIsLF:Z

    .line 297
    iput p1, p0, Lfreemarker/core/SimpleCharStream;->maxNextCharInd:I

    iput p1, p0, Lfreemarker/core/SimpleCharStream;->inBuf:I

    iput p1, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    const/4 p1, -0x1

    .line 298
    iput p1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    return-void
.end method

.method protected UpdateLineColumn(C)V
    .registers 6

    .line 146
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->column:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lfreemarker/core/SimpleCharStream;->column:I

    .line 148
    iget-boolean v0, p0, Lfreemarker/core/SimpleCharStream;->prevCharIsLF:Z

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v0, :cond_17

    .line 150
    iput-boolean v3, p0, Lfreemarker/core/SimpleCharStream;->prevCharIsLF:Z

    .line 151
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->line:I

    iput v1, p0, Lfreemarker/core/SimpleCharStream;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lfreemarker/core/SimpleCharStream;->line:I

    goto :goto_29

    .line 153
    :cond_17
    iget-boolean v0, p0, Lfreemarker/core/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_29

    .line 155
    iput-boolean v3, p0, Lfreemarker/core/SimpleCharStream;->prevCharIsCR:Z

    if-ne p1, v2, :cond_22

    .line 158
    iput-boolean v1, p0, Lfreemarker/core/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_29

    .line 161
    :cond_22
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->line:I

    iput v1, p0, Lfreemarker/core/SimpleCharStream;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lfreemarker/core/SimpleCharStream;->line:I

    :cond_29
    :goto_29
    const/16 v0, 0x9

    if-eq p1, v0, :cond_3a

    if-eq p1, v2, :cond_37

    const/16 v0, 0xd

    if-eq p1, v0, :cond_34

    goto :goto_47

    .line 167
    :cond_34
    iput-boolean v1, p0, Lfreemarker/core/SimpleCharStream;->prevCharIsCR:Z

    goto :goto_47

    .line 170
    :cond_37
    iput-boolean v1, p0, Lfreemarker/core/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_47

    .line 173
    :cond_3a
    iget p1, p0, Lfreemarker/core/SimpleCharStream;->column:I

    sub-int/2addr p1, v1

    iput p1, p0, Lfreemarker/core/SimpleCharStream;->column:I

    .line 174
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->tabSize:I

    rem-int v1, p1, v0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lfreemarker/core/SimpleCharStream;->column:I

    .line 180
    :goto_47
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    iget v0, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->line:I

    aput v1, p1, v0

    .line 181
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->column:I

    aput v1, p1, v0

    return-void
.end method

.method public adjustBeginLineColumn(II)V
    .registers 12

    .line 430
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    .line 433
    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    if-lt v1, v0, :cond_d

    sub-int/2addr v1, v0

    .line 435
    iget v2, p0, Lfreemarker/core/SimpleCharStream;->inBuf:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 439
    :cond_d
    iget v2, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->inBuf:I

    add-int/2addr v1, v2

    :goto_16
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_19
    if-ge v2, v1, :cond_3e

    .line 445
    iget-object v3, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    iget v5, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    rem-int v6, v0, v5

    aget v7, v3, v6

    add-int/lit8 v0, v0, 0x1

    rem-int v5, v0, v5

    aget v8, v3, v5

    if-ne v7, v8, :cond_3d

    .line 447
    aput p1, v3, v6

    .line 448
    iget-object v3, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    aget v5, v3, v5

    add-int/2addr v5, v4

    aget v7, v3, v6

    sub-int/2addr v5, v7

    add-int/2addr v4, p2

    .line 449
    aput v4, v3, v6

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    move v3, v6

    goto :goto_19

    :cond_3d
    move v3, v6

    :cond_3e
    if-ge v2, v1, :cond_69

    .line 456
    iget-object v5, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    add-int/lit8 v6, p1, 0x1

    aput p1, v5, v3

    .line 457
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    add-int/2addr p2, v4

    aput p2, p1, v3

    :goto_4b
    add-int/lit8 p1, v2, 0x1

    if-ge v2, v1, :cond_69

    .line 461
    iget-object p2, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    iget v2, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    rem-int v3, v0, v2

    aget v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    rem-int v2, v0, v2

    aget v2, p2, v2

    if-eq v4, v2, :cond_65

    add-int/lit8 v2, v6, 0x1

    .line 462
    aput v6, p2, v3

    move v6, v2

    goto :goto_67

    .line 464
    :cond_65
    aput v6, p2, v3

    :goto_67
    move v2, p1

    goto :goto_4b

    .line 468
    :cond_69
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    aget p1, p1, v3

    iput p1, p0, Lfreemarker/core/SimpleCharStream;->line:I

    .line 469
    iget-object p1, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    aget p1, p1, v3

    iput p1, p0, Lfreemarker/core/SimpleCharStream;->column:I

    return-void
.end method

.method public backup(I)V
    .registers 3

    .line 249
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lfreemarker/core/SimpleCharStream;->inBuf:I

    .line 250
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_11

    .line 251
    iget p1, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    add-int/2addr v0, p1

    iput v0, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    :cond_11
    return-void
.end method

.method public getBeginColumn()I
    .registers 3

    .line 238
    iget-object v0, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .registers 3

    .line 243
    iget-object v0, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    iget-object v0, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .registers 3

    .line 228
    iget-object v0, p0, Lfreemarker/core/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .registers 3

    .line 233
    iget-object v0, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Lfreemarker/core/SimpleCharStream;->bufline:[I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getTabSize()I
    .registers 2

    .line 37
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->tabSize:I

    return v0
.end method

.method getTrackLineColumn()Z
    .registers 2

    .line 471
    iget-boolean v0, p0, Lfreemarker/core/SimpleCharStream;->trackLineColumn:Z

    return v0
.end method

.method public readChar()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->inBuf:I

    if-lez v0, :cond_1c

    add-int/lit8 v0, v0, -0x1

    .line 189
    iput v0, p0, Lfreemarker/core/SimpleCharStream;->inBuf:I

    .line 191
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufsize:I

    if-ne v0, v1, :cond_15

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    .line 194
    :cond_15
    iget-object v0, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    aget-char v0, v0, v1

    return v0

    .line 197
    :cond_1c
    iget v0, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->maxNextCharInd:I

    if-lt v0, v1, :cond_29

    .line 198
    invoke-virtual {p0}, Lfreemarker/core/SimpleCharStream;->FillBuff()V

    .line 200
    :cond_29
    iget-object v0, p0, Lfreemarker/core/SimpleCharStream;->buffer:[C

    iget v1, p0, Lfreemarker/core/SimpleCharStream;->bufpos:I

    aget-char v0, v0, v1

    .line 202
    invoke-virtual {p0, v0}, Lfreemarker/core/SimpleCharStream;->UpdateLineColumn(C)V

    return v0
.end method

.method public setTabSize(I)V
    .registers 2

    .line 36
    iput p1, p0, Lfreemarker/core/SimpleCharStream;->tabSize:I

    return-void
.end method

.method setTrackLineColumn(Z)V
    .registers 2

    .line 472
    iput-boolean p1, p0, Lfreemarker/core/SimpleCharStream;->trackLineColumn:Z

    return-void
.end method
