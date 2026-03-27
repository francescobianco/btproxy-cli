.class Lfreemarker/template/Template$LineTableBuilder;
.super Ljava/io/FilterReader;
.source "Template.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LineTableBuilder"
.end annotation


# instance fields
.field closed:Z

.field private failure:Ljava/lang/Exception;

.field lastChar:I

.field private final lineBuf:Ljava/lang/StringBuilder;

.field private final tabSize:I

.field final synthetic this$0:Lfreemarker/template/Template;


# direct methods
.method constructor <init>(Lfreemarker/template/Template;Ljava/io/Reader;Lfreemarker/core/ParserConfiguration;)V
    .registers 4

    .line 814
    iput-object p1, p0, Lfreemarker/template/Template$LineTableBuilder;->this$0:Lfreemarker/template/Template;

    .line 815
    invoke-direct {p0, p2}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lfreemarker/template/Template$LineTableBuilder;->lineBuf:Ljava/lang/StringBuilder;

    .line 816
    invoke-interface {p3}, Lfreemarker/core/ParserConfiguration;->getTabSize()I

    move-result p1

    iput p1, p0, Lfreemarker/template/Template$LineTableBuilder;->tabSize:I

    return-void
.end method

.method private handleChar(I)V
    .registers 7

    const/4 v0, 0x0

    const/16 v1, 0xd

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-eq p1, v3, :cond_30

    if-ne p1, v1, :cond_b

    goto :goto_30

    :cond_b
    const/16 v1, 0x9

    if-ne p1, v1, :cond_29

    .line 895
    iget v1, p0, Lfreemarker/template/Template$LineTableBuilder;->tabSize:I

    if-eq v1, v2, :cond_29

    .line 896
    iget-object v2, p0, Lfreemarker/template/Template$LineTableBuilder;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget v3, p0, Lfreemarker/template/Template$LineTableBuilder;->tabSize:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    :goto_1d
    if-ge v0, v1, :cond_82

    .line 898
    iget-object v2, p0, Lfreemarker/template/Template$LineTableBuilder;->lineBuf:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 901
    :cond_29
    iget-object v0, p0, Lfreemarker/template/Template$LineTableBuilder;->lineBuf:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_82

    .line 886
    :cond_30
    :goto_30
    iget v4, p0, Lfreemarker/template/Template$LineTableBuilder;->lastChar:I

    if-ne v4, v1, :cond_68

    if-ne p1, v3, :cond_68

    .line 887
    iget-object v0, p0, Lfreemarker/template/Template$LineTableBuilder;->this$0:Lfreemarker/template/Template;

    # getter for: Lfreemarker/template/Template;->lines:Ljava/util/ArrayList;
    invoke-static {v0}, Lfreemarker/template/Template;->access$000(Lfreemarker/template/Template;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .line 888
    iget-object v1, p0, Lfreemarker/template/Template$LineTableBuilder;->this$0:Lfreemarker/template/Template;

    # getter for: Lfreemarker/template/Template;->lines:Ljava/util/ArrayList;
    invoke-static {v1}, Lfreemarker/template/Template;->access$000(Lfreemarker/template/Template;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 889
    iget-object v2, p0, Lfreemarker/template/Template$LineTableBuilder;->this$0:Lfreemarker/template/Template;

    # getter for: Lfreemarker/template/Template;->lines:Ljava/util/ArrayList;
    invoke-static {v2}, Lfreemarker/template/Template;->access$000(Lfreemarker/template/Template;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    .line 891
    :cond_68
    iget-object v1, p0, Lfreemarker/template/Template$LineTableBuilder;->lineBuf:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 892
    iget-object v1, p0, Lfreemarker/template/Template$LineTableBuilder;->this$0:Lfreemarker/template/Template;

    # getter for: Lfreemarker/template/Template;->lines:Ljava/util/ArrayList;
    invoke-static {v1}, Lfreemarker/template/Template;->access$000(Lfreemarker/template/Template;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/template/Template$LineTableBuilder;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    iget-object v1, p0, Lfreemarker/template/Template$LineTableBuilder;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 903
    :cond_82
    :goto_82
    iput p1, p0, Lfreemarker/template/Template$LineTableBuilder;->lastChar:I

    return-void
.end method

.method private rememberException(Ljava/lang/Exception;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 848
    iget-boolean v0, p0, Lfreemarker/template/Template$LineTableBuilder;->closed:Z

    if-nez v0, :cond_6

    .line 849
    iput-object p1, p0, Lfreemarker/template/Template$LineTableBuilder;->failure:Ljava/lang/Exception;

    .line 851
    :cond_6
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_d

    .line 852
    check-cast p1, Ljava/io/IOException;

    return-object p1

    .line 854
    :cond_d
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_14

    .line 855
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 857
    :cond_14
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lfreemarker/template/Template$LineTableBuilder;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 877
    iget-object v0, p0, Lfreemarker/template/Template$LineTableBuilder;->this$0:Lfreemarker/template/Template;

    # getter for: Lfreemarker/template/Template;->lines:Ljava/util/ArrayList;
    invoke-static {v0}, Lfreemarker/template/Template;->access$000(Lfreemarker/template/Template;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/template/Template$LineTableBuilder;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    iget-object v0, p0, Lfreemarker/template/Template$LineTableBuilder;->lineBuf:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 880
    :cond_1d
    invoke-super {p0}, Ljava/io/FilterReader;->close()V

    const/4 v0, 0x1

    .line 881
    iput-boolean v0, p0, Lfreemarker/template/Template$LineTableBuilder;->closed:Z

    return-void
.end method

.method public hasFailure()Z
    .registers 2

    .line 820
    iget-object v0, p0, Lfreemarker/template/Template$LineTableBuilder;->failure:Ljava/lang/Exception;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    :try_start_0
    iget-object v0, p0, Lfreemarker/template/Template$LineTableBuilder;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 839
    invoke-direct {p0, v0}, Lfreemarker/template/Template$LineTableBuilder;->handleChar(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    :catch_a
    move-exception v0

    .line 842
    invoke-direct {p0, v0}, Lfreemarker/template/Template$LineTableBuilder;->rememberException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public read([CII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    :try_start_0
    iget-object v0, p0, Lfreemarker/template/Template$LineTableBuilder;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p3

    move v0, p2

    :goto_7
    add-int v1, p2, p3

    if-ge v0, v1, :cond_13

    .line 865
    aget-char v1, p1, v0

    .line 866
    invoke-direct {p0, v1}, Lfreemarker/template/Template$LineTableBuilder;->handleChar(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_13
    return p3

    :catch_14
    move-exception p1

    .line 870
    invoke-direct {p0, p1}, Lfreemarker/template/Template$LineTableBuilder;->rememberException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public throwFailure()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lfreemarker/template/Template$LineTableBuilder;->failure:Ljava/lang/Exception;

    if-eqz v0, :cond_1a

    .line 825
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_17

    .line 828
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_f

    .line 829
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 831
    :cond_f
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    iget-object v1, p0, Lfreemarker/template/Template$LineTableBuilder;->failure:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 826
    :cond_17
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_1a
    return-void
.end method
