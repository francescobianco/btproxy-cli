.class public Lfreemarker/template/SimpleCollection;
.super Lfreemarker/template/WrappingTemplateModel;
.source "SimpleCollection.java"

# interfaces
.implements Lfreemarker/template/TemplateCollectionModel;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;
    }
.end annotation


# instance fields
.field private final iterable:Ljava/lang/Iterable;

.field private final iterator:Ljava/util/Iterator;

.field private iteratorOwned:Z


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-direct {p0}, Lfreemarker/template/WrappingTemplateModel;-><init>()V

    .line 62
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->iterable:Ljava/lang/Iterable;

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;Lfreemarker/template/ObjectWrapper;)V
    .registers 3

    .line 93
    invoke-direct {p0, p2}, Lfreemarker/template/WrappingTemplateModel;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 94
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->iterable:Ljava/lang/Iterable;

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V
    .registers 3

    .line 80
    invoke-direct {p0, p1, p2}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/lang/Iterable;Lfreemarker/template/ObjectWrapper;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0}, Lfreemarker/template/WrappingTemplateModel;-><init>()V

    .line 53
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->iterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->iterable:Ljava/lang/Iterable;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)V
    .registers 3

    .line 84
    invoke-direct {p0, p2}, Lfreemarker/template/WrappingTemplateModel;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 85
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->iterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lfreemarker/template/SimpleCollection;->iterable:Ljava/lang/Iterable;

    return-void
.end method

.method static synthetic access$000(Lfreemarker/template/SimpleCollection;)Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lfreemarker/template/SimpleCollection;->iteratorOwned:Z

    return p0
.end method

.method static synthetic access$002(Lfreemarker/template/SimpleCollection;Z)Z
    .registers 2

    .line 41
    iput-boolean p1, p0, Lfreemarker/template/SimpleCollection;->iteratorOwned:Z

    return p1
.end method


# virtual methods
.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .registers 4

    .line 108
    iget-object v0, p0, Lfreemarker/template/SimpleCollection;->iterator:Ljava/util/Iterator;

    if-eqz v0, :cond_d

    new-instance v0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;

    iget-object v1, p0, Lfreemarker/template/SimpleCollection;->iterator:Ljava/util/Iterator;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;-><init>(Lfreemarker/template/SimpleCollection;Ljava/util/Iterator;Z)V

    goto :goto_19

    :cond_d
    new-instance v0, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;

    iget-object v1, p0, Lfreemarker/template/SimpleCollection;->iterable:Ljava/lang/Iterable;

    .line 110
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lfreemarker/template/SimpleCollection$SimpleTemplateModelIterator;-><init>(Lfreemarker/template/SimpleCollection;Ljava/util/Iterator;Z)V

    :goto_19
    return-object v0
.end method
