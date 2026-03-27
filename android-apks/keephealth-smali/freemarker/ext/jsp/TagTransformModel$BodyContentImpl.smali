.class Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;
.super Ljavax/servlet/jsp/tagext/BodyContent;
.source "TagTransformModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TagTransformModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BodyContentImpl"
.end annotation


# instance fields
.field private buf:Ljava/io/CharArrayWriter;


# direct methods
.method constructor <init>(Ljavax/servlet/jsp/JspWriter;Z)V
    .registers 3

    .line 104
    invoke-direct {p0, p1}, Ljavax/servlet/jsp/tagext/BodyContent;-><init>(Ljavax/servlet/jsp/JspWriter;)V

    if-eqz p2, :cond_8

    .line 105
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->initBuffer()V

    :cond_8
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->buf:Ljava/io/CharArrayWriter;

    if-eqz v0, :cond_c

    .line 122
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->buf:Ljava/io/CharArrayWriter;

    return-void

    .line 124
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t clear"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearBuffer()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->buf:Ljava/io/CharArrayWriter;

    if-eqz v0, :cond_c

    .line 131
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->buf:Ljava/io/CharArrayWriter;

    return-void

    .line 133
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t clear"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->buf:Ljava/io/CharArrayWriter;

    if-nez v0, :cond_b

    .line 115
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->getEnclosingWriter()Ljavax/servlet/jsp/JspWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/servlet/jsp/JspWriter;->flush()V

    :cond_b
    return-void
.end method

.method public getReader()Ljava/io/Reader;
    .registers 3

    .line 280
    new-instance v0, Ljava/io/CharArrayReader;

    iget-object v1, p0, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->buf:Ljava/io/CharArrayWriter;

    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharArrayReader;-><init>([C)V

    return-object v0
.end method

.method public getRemaining()I
    .registers 2

    const v0, 0x7fffffff

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .line 275
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->buf:Ljava/io/CharArrayWriter;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initBuffer()V
    .registers 2

    .line 109
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->buf:Ljava/io/CharArrayWriter;

    return-void
.end method

.method public newLine()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    sget-object v0, Lfreemarker/ext/jsp/JspWriterAdapter;->NEWLINE:[C

    invoke-virtual {p0, v0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->write([C)V

    return-void
.end method

.method public print(C)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->write(I)V

    return-void
.end method

.method public print(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_5

    .line 188
    const-string p1, "null"

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 153
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print([C)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->write([C)V

    return-void
.end method

.method public println()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->newLine()V

    return-void
.end method

.method public println(C)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->print(C)V

    .line 210
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->newLine()V

    return-void
.end method

.method public println(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->print(D)V

    .line 222
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->newLine()V

    return-void
.end method

.method public println(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->print(F)V

    .line 228
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->newLine()V

    return-void
.end method

.method public println(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->print(I)V

    .line 234
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->newLine()V

    return-void
.end method

.method public println(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->print(J)V

    .line 240
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->newLine()V

    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->print(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->newLine()V

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->print(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->newLine()V

    return-void
.end method

.method public println(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->print(Z)V

    .line 204
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->newLine()V

    return-void
.end method

.method public println([C)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->print([C)V

    .line 216
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->newLine()V

    return-void
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->buf:Ljava/io/CharArrayWriter;

    if-eqz v0, :cond_8

    .line 258
    invoke-virtual {v0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    goto :goto_f

    .line 260
    :cond_8
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->getEnclosingWriter()Ljavax/servlet/jsp/JspWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/servlet/jsp/JspWriter;->write(I)V

    :goto_f
    return-void
.end method

.method public write([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->buf:Ljava/io/CharArrayWriter;

    if-eqz v0, :cond_8

    .line 267
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_f

    .line 269
    :cond_8
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->getEnclosingWriter()Ljavax/servlet/jsp/JspWriter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/servlet/jsp/JspWriter;->write([CII)V

    :goto_f
    return-void
.end method

.method public writeOut(Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;->buf:Ljava/io/CharArrayWriter;

    invoke-virtual {v0, p1}, Ljava/io/CharArrayWriter;->writeTo(Ljava/io/Writer;)V

    return-void
.end method
