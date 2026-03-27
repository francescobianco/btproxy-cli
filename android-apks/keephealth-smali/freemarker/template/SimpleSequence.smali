.class public Lfreemarker/template/SimpleSequence;
.super Lfreemarker/template/WrappingTemplateModel;
.source "SimpleSequence.java"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/SimpleSequence$SynchronizedSequence;
    }
.end annotation


# instance fields
.field protected final list:Ljava/util/List;

.field private unwrappedList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 86
    move-object v1, v0

    check-cast v1, Lfreemarker/template/ObjectWrapper;

    invoke-direct {p0, v0}, Lfreemarker/template/SimpleSequence;-><init>(Lfreemarker/template/ObjectWrapper;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    invoke-direct {p0}, Lfreemarker/template/WrappingTemplateModel;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILfreemarker/template/ObjectWrapper;)V
    .registers 3

    .line 153
    invoke-direct {p0, p2}, Lfreemarker/template/WrappingTemplateModel;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 154
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/ObjectWrapper;)V
    .registers 2

    .line 140
    invoke-direct {p0, p1}, Lfreemarker/template/WrappingTemplateModel;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 141
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/TemplateCollectionModel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lfreemarker/template/WrappingTemplateModel;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-interface {p1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 125
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 127
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 128
    iput-object v0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V
    .registers 3

    .line 170
    invoke-direct {p0, p2}, Lfreemarker/template/WrappingTemplateModel;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 171
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3

    .line 183
    iget-object v0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lfreemarker/template/SimpleSequence;->unwrappedList:Ljava/util/List;

    return-void
.end method

.method public add(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_5

    .line 198
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_7

    :cond_5
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    :goto_7
    invoke-virtual {p0, p1}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 238
    :try_start_0
    iget-object v0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 239
    instance-of v1, v0, Lfreemarker/template/TemplateModel;

    if-eqz v1, :cond_d

    .line 240
    check-cast v0, Lfreemarker/template/TemplateModel;

    return-object v0

    .line 242
    :cond_d
    invoke-virtual {p0, v0}, Lfreemarker/template/SimpleSequence;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 251
    iget-object v0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synchronizedWrapper()Lfreemarker/template/SimpleSequence;
    .registers 3

    .line 258
    new-instance v0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/template/SimpleSequence$SynchronizedSequence;-><init>(Lfreemarker/template/SimpleSequence;Lfreemarker/template/SimpleSequence$1;)V

    return-object v0
.end method

.method public toList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    iget-object v0, p0, Lfreemarker/template/SimpleSequence;->unwrappedList:Ljava/util/List;

    if-nez v0, :cond_50

    .line 211
    iget-object v0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 214
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_36

    .line 219
    invoke-static {}, Lfreemarker/ext/beans/BeansWrapper;->getDefaultInstance()Lfreemarker/ext/beans/BeansWrapper;

    move-result-object v0

    const/4 v2, 0x0

    .line 220
    :goto_15
    iget-object v3, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 221
    iget-object v3, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 222
    instance-of v4, v3, Lfreemarker/template/TemplateModel;

    if-eqz v4, :cond_2d

    .line 223
    check-cast v3, Lfreemarker/template/TemplateModel;

    invoke-virtual {v0, v3}, Lfreemarker/ext/beans/BeansWrapper;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object v3

    .line 225
    :cond_2d
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 227
    :cond_33
    iput-object v1, p0, Lfreemarker/template/SimpleSequence;->unwrappedList:Ljava/util/List;

    goto :goto_50

    :catch_36
    move-exception v1

    .line 216
    new-instance v2, Lfreemarker/template/TemplateModelException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error instantiating an object of type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 229
    :cond_50
    :goto_50
    iget-object v0, p0, Lfreemarker/template/SimpleSequence;->unwrappedList:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 263
    iget-object v0, p0, Lfreemarker/template/SimpleSequence;->list:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
