.class Lfreemarker/ext/xml/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModel;
.implements Ljava/lang/Cloneable;


# instance fields
.field private namespaces:Ljava/util/HashMap;

.field private shared:Z


# direct methods
.method constructor <init>()V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/xml/Namespaces;->namespaces:Ljava/util/HashMap;

    .line 39
    const-string v1, ""

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lfreemarker/ext/xml/Namespaces;->namespaces:Ljava/util/HashMap;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lfreemarker/ext/xml/Namespaces;->shared:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .line 47
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/xml/Namespaces;

    .line 48
    iget-object v1, p0, Lfreemarker/ext/xml/Namespaces;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lfreemarker/ext/xml/Namespaces;->namespaces:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, v0, Lfreemarker/ext/xml/Namespaces;->shared:Z
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    .line 52
    :catch_14
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    .line 66
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lfreemarker/ext/xml/Namespaces;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object p1, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    return-object p1

    .line 64
    :cond_1b
    new-instance p1, Lfreemarker/template/TemplateModelException;

    const-string v0, "_registerNamespace(prefix, uri) requires two arguments"

    invoke-direct {p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method isShared()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lfreemarker/ext/xml/Namespaces;->shared:Z

    return v0
.end method

.method markShared()V
    .registers 2

    .line 77
    iget-boolean v0, p0, Lfreemarker/ext/xml/Namespaces;->shared:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lfreemarker/ext/xml/Namespaces;->shared:Z

    :cond_7
    return-void
.end method

.method registerNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 71
    iget-object v0, p0, Lfreemarker/ext/xml/Namespaces;->namespaces:Ljava/util/HashMap;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/xml/Namespaces;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 57
    iget-object v0, p0, Lfreemarker/ext/xml/Namespaces;->namespaces:Ljava/util/HashMap;

    monitor-enter v0

    .line 58
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/xml/Namespaces;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    .line 59
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method
