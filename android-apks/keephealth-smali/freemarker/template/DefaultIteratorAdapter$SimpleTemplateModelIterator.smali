.class Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;
.super Ljava/lang/Object;
.source "DefaultIteratorAdapter.java"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultIteratorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleTemplateModelIterator"
.end annotation


# instance fields
.field private iteratorOwnedByMe:Z

.field final synthetic this$0:Lfreemarker/template/DefaultIteratorAdapter;


# direct methods
.method private constructor <init>(Lfreemarker/template/DefaultIteratorAdapter;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/DefaultIteratorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/template/DefaultIteratorAdapter;Lfreemarker/template/DefaultIteratorAdapter$1;)V
    .registers 3

    .line 87
    invoke-direct {p0, p1}, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;-><init>(Lfreemarker/template/DefaultIteratorAdapter;)V

    return-void
.end method

.method private checkNotOwner()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/DefaultIteratorAdapter;

    # getter for: Lfreemarker/template/DefaultIteratorAdapter;->iteratorOwnedBySomeone:Z
    invoke-static {v0}, Lfreemarker/template/DefaultIteratorAdapter;->access$100(Lfreemarker/template/DefaultIteratorAdapter;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 117
    :cond_9
    new-instance v0, Lfreemarker/template/TemplateModelException;

    const-string v1, "This collection value wraps a java.util.Iterator, thus it can be listed only once."

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

    .line 108
    iget-boolean v0, p0, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;->iteratorOwnedByMe:Z

    if-nez v0, :cond_7

    .line 109
    invoke-direct {p0}, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;->checkNotOwner()V

    .line 112
    :cond_7
    iget-object v0, p0, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/DefaultIteratorAdapter;

    # getter for: Lfreemarker/template/DefaultIteratorAdapter;->iterator:Ljava/util/Iterator;
    invoke-static {v0}, Lfreemarker/template/DefaultIteratorAdapter;->access$200(Lfreemarker/template/DefaultIteratorAdapter;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

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

    .line 92
    iget-boolean v0, p0, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;->iteratorOwnedByMe:Z

    if-nez v0, :cond_f

    .line 93
    invoke-direct {p0}, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;->checkNotOwner()V

    .line 94
    iget-object v0, p0, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/DefaultIteratorAdapter;

    const/4 v1, 0x1

    # setter for: Lfreemarker/template/DefaultIteratorAdapter;->iteratorOwnedBySomeone:Z
    invoke-static {v0, v1}, Lfreemarker/template/DefaultIteratorAdapter;->access$102(Lfreemarker/template/DefaultIteratorAdapter;Z)Z

    .line 95
    iput-boolean v1, p0, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;->iteratorOwnedByMe:Z

    .line 98
    :cond_f
    iget-object v0, p0, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/DefaultIteratorAdapter;

    # getter for: Lfreemarker/template/DefaultIteratorAdapter;->iterator:Ljava/util/Iterator;
    invoke-static {v0}, Lfreemarker/template/DefaultIteratorAdapter;->access$200(Lfreemarker/template/DefaultIteratorAdapter;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 102
    iget-object v0, p0, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/DefaultIteratorAdapter;

    # getter for: Lfreemarker/template/DefaultIteratorAdapter;->iterator:Ljava/util/Iterator;
    invoke-static {v0}, Lfreemarker/template/DefaultIteratorAdapter;->access$200(Lfreemarker/template/DefaultIteratorAdapter;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 103
    instance-of v1, v0, Lfreemarker/template/TemplateModel;

    if-eqz v1, :cond_2c

    check-cast v0, Lfreemarker/template/TemplateModel;

    goto :goto_32

    :cond_2c
    iget-object v1, p0, Lfreemarker/template/DefaultIteratorAdapter$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/DefaultIteratorAdapter;

    invoke-virtual {v1, v0}, Lfreemarker/template/DefaultIteratorAdapter;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :goto_32
    return-object v0

    .line 99
    :cond_33
    new-instance v0, Lfreemarker/template/TemplateModelException;

    const-string v1, "The collection has no more items."

    invoke-direct {v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
