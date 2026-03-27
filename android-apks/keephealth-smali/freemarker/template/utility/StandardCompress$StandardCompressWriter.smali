.class Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;
.super Ljava/io/Writer;
.source "StandardCompress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/StandardCompress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardCompressWriter"
.end annotation


# static fields
.field private static final AT_BEGINNING:I = 0x0

.field private static final INIT:I = 0x2

.field private static final LINEBREAK_CR:I = 0x4

.field private static final LINEBREAK_CRLF:I = 0x5

.field private static final LINEBREAK_LF:I = 0x6

.field private static final MAX_EOL_LENGTH:I = 0x2

.field private static final SAW_CR:I = 0x3

.field private static final SINGLE_LINE:I = 0x1


# instance fields
.field private final buf:[C

.field private inWhitespace:Z

.field private lineBreakState:I

.field private final out:Ljava/io/Writer;

.field private pos:I

.field private final singleLine:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;IZ)V
    .registers 6

    .line 132
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    const/4 v1, 0x1

    .line 129
    iput-boolean v1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->inWhitespace:Z

    .line 130
    iput v0, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->lineBreakState:I

    .line 133
    iput-object p1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->out:Ljava/io/Writer;

    .line 134
    iput-boolean p3, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->singleLine:Z

    .line 135
    new-array p1, p2, [C

    iput-object p1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->buf:[C

    return-void
.end method

.method private flushInternal()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->buf:[C

    iget v2, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 223
    iput v3, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    return-void
.end method

.method private updateLineBreakState(C)V
    .registers 6

    .line 181
    iget v0, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->lineBreakState:I

    const/4 v1, 0x2

    const/16 v2, 0xa

    const/4 v3, 0x3

    if-eq v0, v1, :cond_15

    if-eq v0, v3, :cond_b

    goto :goto_21

    :cond_b
    if-ne p1, v2, :cond_11

    const/4 p1, 0x5

    .line 191
    iput p1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->lineBreakState:I

    goto :goto_21

    :cond_11
    const/4 p1, 0x4

    .line 193
    iput p1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->lineBreakState:I

    goto :goto_21

    :cond_15
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1c

    .line 184
    iput v3, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->lineBreakState:I

    goto :goto_21

    :cond_1c
    if-ne p1, v2, :cond_21

    const/4 p1, 0x6

    .line 186
    iput p1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->lineBreakState:I

    :cond_21
    :goto_21
    return-void
.end method

.method private writeHelper([CII)V
    .registers 8

    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_34

    .line 159
    aget-char v0, p1, p2

    .line 160
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    .line 161
    iput-boolean v1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->inWhitespace:Z

    .line 162
    invoke-direct {p0, v0}, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->updateLineBreakState(C)V

    goto :goto_31

    .line 163
    :cond_12
    iget-boolean v1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->inWhitespace:Z

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    .line 164
    iput-boolean v1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->inWhitespace:Z

    .line 165
    invoke-direct {p0}, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->writeLineBreakOrSpace()V

    .line 166
    iget-object v1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->buf:[C

    iget v2, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    aput-char v0, v1, v2

    goto :goto_31

    .line 168
    :cond_27
    iget-object v1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->buf:[C

    iget v2, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    aput-char v0, v1, v2

    :goto_31
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_34
    return-void
.end method

.method private writeLineBreakOrSpace()V
    .registers 5

    .line 199
    iget v0, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->lineBreakState:I

    const/16 v1, 0xd

    packed-switch v0, :pswitch_data_40

    goto :goto_36

    .line 206
    :pswitch_8
    iget-object v0, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->buf:[C

    iget v2, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    aput-char v1, v0, v2

    .line 209
    :pswitch_12
    iget-object v0, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->buf:[C

    iget v1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    const/16 v2, 0xa

    aput-char v2, v0, v1

    goto :goto_36

    .line 203
    :pswitch_1f
    iget-object v0, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->buf:[C

    iget v2, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    aput-char v1, v0, v2

    goto :goto_36

    .line 216
    :pswitch_2a
    iget-object v0, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->buf:[C

    iget v1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 218
    :goto_36
    iget-boolean v0, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->singleLine:Z

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x2

    :goto_3d
    iput v0, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->lineBreakState:I

    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2a
        :pswitch_1f
        :pswitch_1f
        :pswitch_8
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->flushInternal()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->flushInternal()V

    .line 229
    iget-object v0, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    :goto_0
    iget-object v0, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->buf:[C

    array-length v0, v0

    iget v1, p0, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->pos:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    if-lt v0, p3, :cond_e

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->writeHelper([CII)V

    return-void

    :cond_e
    if-gtz v0, :cond_14

    .line 147
    invoke-direct {p0}, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->flushInternal()V

    goto :goto_0

    .line 149
    :cond_14
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->writeHelper([CII)V

    .line 150
    invoke-direct {p0}, Lfreemarker/template/utility/StandardCompress$StandardCompressWriter;->flushInternal()V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0
.end method
