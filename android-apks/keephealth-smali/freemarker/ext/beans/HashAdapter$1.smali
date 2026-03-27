.class Lfreemarker/ext/beans/HashAdapter$1;
.super Ljava/util/AbstractSet;
.source "HashAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/beans/HashAdapter;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/ext/beans/HashAdapter;


# direct methods
.method constructor <init>(Lfreemarker/ext/beans/HashAdapter;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lfreemarker/ext/beans/HashAdapter$1;->this$0:Lfreemarker/ext/beans/HashAdapter;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3

    .line 98
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/HashAdapter$1;->this$0:Lfreemarker/ext/beans/HashAdapter;

    # invokes: Lfreemarker/ext/beans/HashAdapter;->getModelEx()Lfreemarker/template/TemplateHashModelEx;
    invoke-static {v0}, Lfreemarker/ext/beans/HashAdapter;->access$000(Lfreemarker/ext/beans/HashAdapter;)Lfreemarker/template/TemplateHashModelEx;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0
    :try_end_e
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_e} :catch_14

    .line 102
    new-instance v1, Lfreemarker/ext/beans/HashAdapter$1$1;

    invoke-direct {v1, p0, v0}, Lfreemarker/ext/beans/HashAdapter$1$1;-><init>(Lfreemarker/ext/beans/HashAdapter$1;Lfreemarker/template/TemplateModelIterator;)V

    return-object v1

    :catch_14
    move-exception v0

    .line 100
    new-instance v1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public size()I
    .registers 3

    .line 165
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/HashAdapter$1;->this$0:Lfreemarker/ext/beans/HashAdapter;

    # invokes: Lfreemarker/ext/beans/HashAdapter;->getModelEx()Lfreemarker/template/TemplateHashModelEx;
    invoke-static {v0}, Lfreemarker/ext/beans/HashAdapter;->access$000(Lfreemarker/ext/beans/HashAdapter;)Lfreemarker/template/TemplateHashModelEx;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->size()I

    move-result v0
    :try_end_a
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    .line 167
    new-instance v1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
