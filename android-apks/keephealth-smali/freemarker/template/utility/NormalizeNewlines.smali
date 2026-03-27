.class public Lfreemarker/template/utility/NormalizeNewlines;
.super Ljava/lang/Object;
.source "NormalizeNewlines.java"

# interfaces
.implements Lfreemarker/template/TemplateTransformModel;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .registers 4

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    new-instance v0, Lfreemarker/template/utility/NormalizeNewlines$1;

    invoke-direct {v0, p0, p2, p1}, Lfreemarker/template/utility/NormalizeNewlines$1;-><init>(Lfreemarker/template/utility/NormalizeNewlines;Ljava/lang/StringBuilder;Ljava/io/Writer;)V

    return-object v0
.end method

.method public transform(Ljava/io/Reader;Ljava/io/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/io/BufferedReader;

    goto :goto_d

    :cond_7
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    .line 100
    :goto_d
    instance-of v0, p2, Ljava/io/PrintWriter;

    if-eqz v0, :cond_14

    check-cast p2, Ljava/io/PrintWriter;

    goto :goto_1a

    :cond_14
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object p2, v0

    .line 103
    :goto_1a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_29

    .line 106
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    :cond_29
    :goto_29
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 110
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_29

    :cond_33
    return-void
.end method
