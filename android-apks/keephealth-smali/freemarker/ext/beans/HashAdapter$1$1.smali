.class Lfreemarker/ext/beans/HashAdapter$1$1;
.super Ljava/lang/Object;
.source "HashAdapter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/beans/HashAdapter$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfreemarker/ext/beans/HashAdapter$1;

.field final synthetic val$i:Lfreemarker/template/TemplateModelIterator;


# direct methods
.method constructor <init>(Lfreemarker/ext/beans/HashAdapter$1;Lfreemarker/template/TemplateModelIterator;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lfreemarker/ext/beans/HashAdapter$1$1;->this$1:Lfreemarker/ext/beans/HashAdapter$1;

    iput-object p2, p0, Lfreemarker/ext/beans/HashAdapter$1$1;->val$i:Lfreemarker/template/TemplateModelIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 105
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/HashAdapter$1$1;->val$i:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0
    :try_end_6
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 107
    new-instance v1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    .line 114
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/HashAdapter$1$1;->this$1:Lfreemarker/ext/beans/HashAdapter$1;

    iget-object v0, v0, Lfreemarker/ext/beans/HashAdapter$1;->this$0:Lfreemarker/ext/beans/HashAdapter;

    # getter for: Lfreemarker/ext/beans/HashAdapter;->wrapper:Lfreemarker/ext/beans/BeansWrapper;
    invoke-static {v0}, Lfreemarker/ext/beans/HashAdapter;->access$100(Lfreemarker/ext/beans/HashAdapter;)Lfreemarker/ext/beans/BeansWrapper;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/HashAdapter$1$1;->val$i:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/ext/beans/BeansWrapper;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_12} :catch_18

    .line 118
    new-instance v1, Lfreemarker/ext/beans/HashAdapter$1$1$1;

    invoke-direct {v1, p0, v0}, Lfreemarker/ext/beans/HashAdapter$1$1$1;-><init>(Lfreemarker/ext/beans/HashAdapter$1$1;Ljava/lang/Object;)V

    return-object v1

    :catch_18
    move-exception v0

    .line 116
    new-instance v1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public remove()V
    .registers 2

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
