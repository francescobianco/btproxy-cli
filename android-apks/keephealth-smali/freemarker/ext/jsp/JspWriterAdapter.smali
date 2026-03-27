.class Lfreemarker/ext/jsp/JspWriterAdapter;
.super Ljavax/servlet/jsp/JspWriter;
.source "JspWriterAdapter.java"


# static fields
.field static final NEWLINE:[C


# instance fields
.field private final out:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/JspWriterAdapter;->NEWLINE:[C

    return-void
.end method

.method constructor <init>(Ljava/io/Writer;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 35
    invoke-direct {p0, v0, v1}, Ljavax/servlet/jsp/JspWriter;-><init>(IZ)V

    .line 36
    iput-object p1, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

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

    .line 46
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

    .line 51
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t clear"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Close not permitted."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public getRemaining()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public newLine()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

    sget-object v1, Lfreemarker/ext/jsp/JspWriterAdapter;->NEWLINE:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    return-void
.end method

.method public print(C)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public print(D)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

    if-nez p1, :cond_7

    const-string p1, "null"

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_7

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print([C)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    return-void
.end method

.method public println()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lfreemarker/ext/jsp/JspWriterAdapter;->newLine()V

    return-void
.end method

.method public println(C)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/JspWriterAdapter;->print(C)V

    .line 133
    invoke-virtual {p0}, Lfreemarker/ext/jsp/JspWriterAdapter;->newLine()V

    return-void
.end method

.method public println(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/jsp/JspWriterAdapter;->print(D)V

    .line 145
    invoke-virtual {p0}, Lfreemarker/ext/jsp/JspWriterAdapter;->newLine()V

    return-void
.end method

.method public println(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/JspWriterAdapter;->print(F)V

    .line 151
    invoke-virtual {p0}, Lfreemarker/ext/jsp/JspWriterAdapter;->newLine()V

    return-void
.end method

.method public println(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/JspWriterAdapter;->print(I)V

    .line 157
    invoke-virtual {p0}, Lfreemarker/ext/jsp/JspWriterAdapter;->newLine()V

    return-void
.end method

.method public println(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/jsp/JspWriterAdapter;->print(J)V

    .line 163
    invoke-virtual {p0}, Lfreemarker/ext/jsp/JspWriterAdapter;->newLine()V

    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/JspWriterAdapter;->print(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Lfreemarker/ext/jsp/JspWriterAdapter;->newLine()V

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/JspWriterAdapter;->print(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lfreemarker/ext/jsp/JspWriterAdapter;->newLine()V

    return-void
.end method

.method public println(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/JspWriterAdapter;->print(Z)V

    .line 127
    invoke-virtual {p0}, Lfreemarker/ext/jsp/JspWriterAdapter;->newLine()V

    return-void
.end method

.method public println([C)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/JspWriterAdapter;->print([C)V

    .line 139
    invoke-virtual {p0}, Lfreemarker/ext/jsp/JspWriterAdapter;->newLine()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JspWriterAdapter wrapping a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public write([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lfreemarker/ext/jsp/JspWriterAdapter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method
