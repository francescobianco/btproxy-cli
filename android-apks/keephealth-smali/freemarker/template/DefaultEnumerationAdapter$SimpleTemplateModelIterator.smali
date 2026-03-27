.class Lfreemarker/template/DefaultEnumerationAdapter$SimpleTemplateModelIterator;
.super Ljava/lang/Object;
.source "DefaultEnumerationAdapter.java"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultEnumerationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleTemplateModelIterator"
.end annotation


# instance fields
.field private enumerationOwnedByMe:Z

.field final synthetic this$0:Lfreemarker/template/DefaultEnumerationAdapter;


# direct methods
.method private constructor <init>(Lfreemarker/template/DefaultEnumerationAdapter;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lfreemarker/template/DefaultEnumerationAdapter$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/DefaultEnumerationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/template/DefaultEnumerationAdapter;Lfreemarker/template/DefaultEnumerationAdapter$1;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1}, Lfreemarker/template/DefaultEnumerationAdapter$SimpleTemplateModelIterator;-><init>(Lfreemarker/template/DefaultEnumerationAdapter;)V

    return-void
.end method

.method private checkNotOwner()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lfreemarker/template/DefaultEnumerationAdapter$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/DefaultEnumerationAdapter;

    # getter for: Lfreemarker/template/DefaultEnumerationAdapter;->enumerationOwnedBySomeone:Z
    invoke-static {v0}, Lfreemarker/template/DefaultEnumerationAdapter;->access$100(Lfreemarker/template/DefaultEnumerationAdapter;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 108
    :cond_9
    new-instance v0, Lfreemarker/template/TemplateModelException;

    const-string v1, "This collection value wraps a java.util.Enumeration, thus it can be listed only once."

    invoke-direct {v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lfreemarker/template/DefaultEnumerationAdapter$SimpleTemplateModelIterator;->enumerationOwnedByMe:Z

    if-nez v0, :cond_7

    .line 100
    invoke-direct {p0}, Lfreemarker/template/DefaultEnumerationAdapter$SimpleTemplateModelIterator;->checkNotOwner()V

    .line 103
    :cond_7
    iget-object v0, p0, Lfreemarker/template/DefaultEnumerationAdapter$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/DefaultEnumerationAdapter;

    # getter for: Lfreemarker/template/DefaultEnumerationAdapter;->enumeration:Ljava/util/Enumeration;
    invoke-static {v0}, Lfreemarker/template/DefaultEnumerationAdapter;->access$200(Lfreemarker/template/DefaultEnumerationAdapter;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 83
    iget-boolean v0, p0, Lfreemarker/template/DefaultEnumerationAdapter$SimpleTemplateModelIterator;->enumerationOwnedByMe:Z

    if-nez v0, :cond_f

    .line 84
    invoke-direct {p0}, Lfreemarker/template/DefaultEnumerationAdapter$SimpleTemplateModelIterator;->checkNotOwner()V

    .line 85
    iget-object v0, p0, Lfreemarker/template/DefaultEnumerationAdapter$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/DefaultEnumerationAdapter;

    const/4 v1, 0x1

    # setter for: Lfreemarker/template/DefaultEnumerationAdapter;->enumerationOwnedBySomeone:Z
    invoke-static {v0, v1}, Lfreemarker/template/DefaultEnumerationAdapter;->access$102(Lfreemarker/template/DefaultEnumerationAdapter;Z)Z

    .line 86
    iput-boolean v1, p0, Lfreemarker/template/DefaultEnumerationAdapter$SimpleTemplateModelIterator;->enumerationOwnedByMe:Z

    .line 89
    :cond_f
    iget-object v0, p0, Lfreemarker/template/DefaultEnumerationAdapter$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/DefaultEnumerationAdapter;

    # getter for: Lfreemarker/template/DefaultEnumerationAdapter;->enumeration:Ljava/util/Enumeration;
    invoke-static {v0}, Lfreemarker/template/DefaultEnumerationAdapter;->access$200(Lfreemarker/template/DefaultEnumerationAdapter;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 93
    iget-object v0, p0, Lfreemarker/template/DefaultEnumerationAdapter$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/DefaultEnumerationAdapter;

    # getter for: Lfreemarker/template/DefaultEnumerationAdapter;->enumeration:Ljava/util/Enumeration;
    invoke-static {v0}, Lfreemarker/template/DefaultEnumerationAdapter;->access$200(Lfreemarker/template/DefaultEnumerationAdapter;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 94
    instance-of v1, v0, Lfreemarker/template/TemplateModel;

    if-eqz v1, :cond_2c

    check-cast v0, Lfreemarker/template/TemplateModel;

    goto :goto_32

    :cond_2c
    iget-object v1, p0, Lfreemarker/template/DefaultEnumerationAdapter$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/DefaultEnumerationAdapter;

    invoke-virtual {v1, v0}, Lfreemarker/template/DefaultEnumerationAdapter;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :goto_32
    return-object v0

    .line 90
    :cond_33
    new-instance v0, Lfreemarker/template/TemplateModelException;

    const-string v1, "The collection has no more items."

    invoke-direct {v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
