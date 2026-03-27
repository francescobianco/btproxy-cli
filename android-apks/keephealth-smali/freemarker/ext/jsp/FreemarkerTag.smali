.class public Lfreemarker/ext/jsp/FreemarkerTag;
.super Ljava/lang/Object;
.source "FreemarkerTag.java"

# interfaces
.implements Ljavax/servlet/jsp/tagext/BodyTag;


# instance fields
.field private bodyContent:Ljavax/servlet/jsp/tagext/BodyContent;

.field private caching:Z

.field private name:Ljava/lang/String;

.field private pageContext:Ljavax/servlet/jsp/PageContext;

.field private parent:Ljavax/servlet/jsp/tagext/Tag;

.field private root:Lfreemarker/template/SimpleHash;

.field private template:Lfreemarker/template/Template;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lfreemarker/ext/jsp/FreemarkerTag;->caching:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lfreemarker/ext/jsp/FreemarkerTag;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doAfterBody()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public doEndTag()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/JspException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lfreemarker/ext/jsp/FreemarkerTag;->bodyContent:Ljavax/servlet/jsp/tagext/BodyContent;

    const/4 v1, 0x6

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 100
    :try_start_7
    iget-object v2, p0, Lfreemarker/ext/jsp/FreemarkerTag;->template:Lfreemarker/template/Template;

    if-nez v2, :cond_1a

    .line 101
    new-instance v2, Lfreemarker/template/Template;

    iget-object v3, p0, Lfreemarker/ext/jsp/FreemarkerTag;->name:Ljava/lang/String;

    iget-object v4, p0, Lfreemarker/ext/jsp/FreemarkerTag;->bodyContent:Ljavax/servlet/jsp/tagext/BodyContent;

    invoke-virtual {v4}, Ljavax/servlet/jsp/tagext/BodyContent;->getReader()Ljava/io/Reader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    iput-object v2, p0, Lfreemarker/ext/jsp/FreemarkerTag;->template:Lfreemarker/template/Template;

    .line 104
    :cond_1a
    iget-object v2, p0, Lfreemarker/ext/jsp/FreemarkerTag;->root:Lfreemarker/template/SimpleHash;

    if-nez v2, :cond_6e

    .line 105
    new-instance v2, Lfreemarker/template/SimpleHash;

    invoke-direct {v2}, Lfreemarker/template/SimpleHash;-><init>()V

    iput-object v2, p0, Lfreemarker/ext/jsp/FreemarkerTag;->root:Lfreemarker/template/SimpleHash;

    .line 106
    const-string v3, "page"

    new-instance v4, Lfreemarker/ext/jsp/JspContextModel;

    iget-object v5, p0, Lfreemarker/ext/jsp/FreemarkerTag;->pageContext:Ljavax/servlet/jsp/PageContext;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lfreemarker/ext/jsp/JspContextModel;-><init>(Ljavax/servlet/jsp/PageContext;I)V

    invoke-virtual {v2, v3, v4}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    iget-object v2, p0, Lfreemarker/ext/jsp/FreemarkerTag;->root:Lfreemarker/template/SimpleHash;

    const-string v3, "request"

    new-instance v4, Lfreemarker/ext/jsp/JspContextModel;

    iget-object v5, p0, Lfreemarker/ext/jsp/FreemarkerTag;->pageContext:Ljavax/servlet/jsp/PageContext;

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lfreemarker/ext/jsp/JspContextModel;-><init>(Ljavax/servlet/jsp/PageContext;I)V

    invoke-virtual {v2, v3, v4}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v2, p0, Lfreemarker/ext/jsp/FreemarkerTag;->root:Lfreemarker/template/SimpleHash;

    const-string v3, "session"

    new-instance v4, Lfreemarker/ext/jsp/JspContextModel;

    iget-object v5, p0, Lfreemarker/ext/jsp/FreemarkerTag;->pageContext:Ljavax/servlet/jsp/PageContext;

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lfreemarker/ext/jsp/JspContextModel;-><init>(Ljavax/servlet/jsp/PageContext;I)V

    invoke-virtual {v2, v3, v4}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    iget-object v2, p0, Lfreemarker/ext/jsp/FreemarkerTag;->root:Lfreemarker/template/SimpleHash;

    const-string v3, "application"

    new-instance v4, Lfreemarker/ext/jsp/JspContextModel;

    iget-object v5, p0, Lfreemarker/ext/jsp/FreemarkerTag;->pageContext:Ljavax/servlet/jsp/PageContext;

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lfreemarker/ext/jsp/JspContextModel;-><init>(Ljavax/servlet/jsp/PageContext;I)V

    invoke-virtual {v2, v3, v4}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lfreemarker/ext/jsp/FreemarkerTag;->root:Lfreemarker/template/SimpleHash;

    const-string v3, "any"

    new-instance v4, Lfreemarker/ext/jsp/JspContextModel;

    iget-object v5, p0, Lfreemarker/ext/jsp/FreemarkerTag;->pageContext:Ljavax/servlet/jsp/PageContext;

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lfreemarker/ext/jsp/JspContextModel;-><init>(Ljavax/servlet/jsp/PageContext;I)V

    invoke-virtual {v2, v3, v4}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    :cond_6e
    iget-object v2, p0, Lfreemarker/ext/jsp/FreemarkerTag;->template:Lfreemarker/template/Template;

    iget-object v3, p0, Lfreemarker/ext/jsp/FreemarkerTag;->root:Lfreemarker/template/SimpleHash;

    iget-object v4, p0, Lfreemarker/ext/jsp/FreemarkerTag;->pageContext:Ljavax/servlet/jsp/PageContext;

    invoke-virtual {v4}, Ljavax/servlet/jsp/PageContext;->getOut()Ljavax/servlet/jsp/JspWriter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lfreemarker/template/Template;->process(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7b} :catch_82
    .catchall {:try_start_7 .. :try_end_7b} :catchall_80

    .line 122
    iget-boolean v2, p0, Lfreemarker/ext/jsp/FreemarkerTag;->caching:Z

    if-nez v2, :cond_8e

    goto :goto_8c

    :catchall_80
    move-exception v1

    goto :goto_a5

    :catch_82
    move-exception v2

    .line 115
    :try_start_83
    iget-object v3, p0, Lfreemarker/ext/jsp/FreemarkerTag;->pageContext:Ljavax/servlet/jsp/PageContext;

    invoke-virtual {v3, v2}, Ljavax/servlet/jsp/PageContext;->handlePageException(Ljava/lang/Exception;)V
    :try_end_88
    .catch Ljavax/servlet/ServletException; {:try_start_83 .. :try_end_88} :catch_9a
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_88} :catch_8f
    .catchall {:try_start_83 .. :try_end_88} :catchall_80

    .line 122
    iget-boolean v2, p0, Lfreemarker/ext/jsp/FreemarkerTag;->caching:Z

    if-nez v2, :cond_8e

    .line 123
    :goto_8c
    iput-object v0, p0, Lfreemarker/ext/jsp/FreemarkerTag;->template:Lfreemarker/template/Template;

    :cond_8e
    return v1

    :catch_8f
    move-exception v1

    .line 119
    :try_start_90
    new-instance v2, Ljavax/servlet/jsp/JspException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/servlet/jsp/JspException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_9a
    move-exception v1

    .line 117
    new-instance v2, Ljavax/servlet/jsp/JspException;

    invoke-virtual {v1}, Ljavax/servlet/ServletException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/servlet/jsp/JspException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a5
    .catchall {:try_start_90 .. :try_end_a5} :catchall_80

    .line 122
    :goto_a5
    iget-boolean v2, p0, Lfreemarker/ext/jsp/FreemarkerTag;->caching:Z

    if-nez v2, :cond_ab

    .line 123
    iput-object v0, p0, Lfreemarker/ext/jsp/FreemarkerTag;->template:Lfreemarker/template/Template;

    .line 125
    :cond_ab
    throw v1
.end method

.method public doInitBody()V
    .registers 1

    return-void
.end method

.method public doStartTag()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getCaching()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lfreemarker/ext/jsp/FreemarkerTag;->caching:Z

    return v0
.end method

.method public getParent()Ljavax/servlet/jsp/tagext/Tag;
    .registers 2

    .line 61
    iget-object v0, p0, Lfreemarker/ext/jsp/FreemarkerTag;->parent:Ljavax/servlet/jsp/tagext/Tag;

    return-object v0
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lfreemarker/ext/jsp/FreemarkerTag;->root:Lfreemarker/template/SimpleHash;

    .line 90
    iput-object v0, p0, Lfreemarker/ext/jsp/FreemarkerTag;->template:Lfreemarker/template/Template;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lfreemarker/ext/jsp/FreemarkerTag;->name:Ljava/lang/String;

    return-void
.end method

.method public setBodyContent(Ljavax/servlet/jsp/tagext/BodyContent;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lfreemarker/ext/jsp/FreemarkerTag;->bodyContent:Ljavax/servlet/jsp/tagext/BodyContent;

    return-void
.end method

.method public setCaching(Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lfreemarker/ext/jsp/FreemarkerTag;->caching:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_4

    .line 57
    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lfreemarker/ext/jsp/FreemarkerTag;->name:Ljava/lang/String;

    return-void
.end method

.method public setPageContext(Ljavax/servlet/jsp/PageContext;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lfreemarker/ext/jsp/FreemarkerTag;->pageContext:Ljavax/servlet/jsp/PageContext;

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lfreemarker/ext/jsp/FreemarkerTag;->root:Lfreemarker/template/SimpleHash;

    return-void
.end method

.method public setParent(Ljavax/servlet/jsp/tagext/Tag;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lfreemarker/ext/jsp/FreemarkerTag;->parent:Ljavax/servlet/jsp/tagext/Tag;

    return-void
.end method
