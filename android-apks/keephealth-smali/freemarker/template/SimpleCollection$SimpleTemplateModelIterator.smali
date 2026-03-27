.class Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;
.super Ljava/lang/Object;
.source "SimpleCollection.java"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/SimpleCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleTemplateModelIterator"
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;

.field private iteratorOwnedByMe:Z

.field final synthetic this$0:Lfreemarker/template/SimpleCollection;


# direct methods
.method constructor <init>(Lfreemarker/template/SimpleCollection;Ljava/util/Iterator;Z)V
    .registers 4

    .line 124
    iput-object p1, p0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/SimpleCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->iterator:Ljava/util/Iterator;

    .line 126
    iput-boolean p3, p0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->iteratorOwnedByMe:Z

    return-void
.end method

.method private checkIteratorOwned()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/SimpleCollection;

    # getter for: Lfreemarker/template/SimpleCollection;->iteratorOwned:Z
    invoke-static {v0}, Lfreemarker/template/SimpleCollection;->access$000(Lfreemarker/template/SimpleCollection;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 159
    :cond_9
    new-instance v0, Lfreemarker/template/TemplateModelException;

    const-string v1, "This collection value wraps a java.util.Iterator, thus it can be listed only once."

    invoke-direct {v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 148
    iget-boolean v0, p0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->iteratorOwnedByMe:Z

    if-nez v0, :cond_f

    .line 149
    iget-object v0, p0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/SimpleCollection;

    monitor-enter v0

    .line 150
    :try_start_7
    invoke-direct {p0}, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->checkIteratorOwned()V

    .line 151
    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1

    .line 154
    :cond_f
    :goto_f
    iget-object v0, p0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 130
    iget-boolean v0, p0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->iteratorOwnedByMe:Z

    if-nez v0, :cond_17

    .line 131
    iget-object v0, p0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/SimpleCollection;

    monitor-enter v0

    .line 132
    :try_start_7
    invoke-direct {p0}, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->checkIteratorOwned()V

    .line 133
    iget-object v1, p0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/SimpleCollection;

    const/4 v2, 0x1

    # setter for: Lfreemarker/template/SimpleCollection;->iteratorOwned:Z
    invoke-static {v1, v2}, Lfreemarker/template/SimpleCollection;->access$002(Lfreemarker/template/SimpleCollection;Z)Z

    .line 134
    iput-boolean v2, p0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->iteratorOwnedByMe:Z

    .line 135
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 138
    :cond_17
    :goto_17
    iget-object v0, p0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 142
    iget-object v0, p0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 143
    instance-of v1, v0, Lfreemarker/template/TemplateModel;

    if-eqz v1, :cond_2c

    check-cast v0, Lfreemarker/template/TemplateModel;

    goto :goto_32

    :cond_2c
    iget-object v1, p0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;->this$0:Lfreemarker/template/SimpleCollection;

    invoke-virtual {v1, v0}, Lfreemarker/template/SimpleCollection;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :goto_32
    return-object v0

    .line 139
    :cond_33
    new-instance v0, Lfreemarker/template/TemplateModelException;

    const-string v1, "The collection has no more items."

    invoke-direct {v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
