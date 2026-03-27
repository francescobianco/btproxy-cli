.class public Lfreemarker/template/utility/Execute;
.super Ljava/lang/Object;
.source "Execute.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModel;


# static fields
.field private static final OUTPUT_BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_51

    const/4 v1, 0x0

    .line 80
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 83
    :try_start_16
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_22} :catch_46

    .line 88
    :try_start_22
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    .line 90
    new-array v3, v3, [C

    .line 91
    invoke-virtual {v2, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    :goto_2f
    if-lez v4, :cond_39

    .line 93
    invoke-virtual {v0, v3, v1, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v2, v3}, Ljava/io/Reader;->read([C)I

    move-result v4
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_41

    goto :goto_2f

    .line 97
    :cond_39
    :try_start_39
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_46

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_41
    move-exception v0

    .line 97
    :try_start_42
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 98
    throw v0
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_46

    :catch_46
    move-exception p1

    .line 100
    new-instance v0, Lfreemarker/template/TemplateModelException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_51
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string v0, "Need an argument to execute"

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
