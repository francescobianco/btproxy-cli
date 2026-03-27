.class public Lfreemarker/template/MapKeyValuePairIterator;
.super Ljava/lang/Object;
.source "MapKeyValuePairIterator.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;


# instance fields
.field private final entrySetIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final objectWrapper:Lfreemarker/template/ObjectWrapper;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lfreemarker/template/ObjectWrapper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "**>;",
            "Lfreemarker/template/ObjectWrapper;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/MapKeyValuePairIterator;->entrySetIterator:Ljava/util/Iterator;

    .line 43
    iput-object p2, p0, Lfreemarker/template/MapKeyValuePairIterator;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method static synthetic access$000(Lfreemarker/template/MapKeyValuePairIterator;Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lfreemarker/template/MapKeyValuePairIterator;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p0

    return-object p0
.end method

.method private wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 66
    instance-of v0, p1, Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_7

    check-cast p1, Lfreemarker/template/TemplateModel;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lfreemarker/template/MapKeyValuePairIterator;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    :goto_d
    return-object p1
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 47
    iget-object v0, p0, Lfreemarker/template/MapKeyValuePairIterator;->entrySetIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;
    .registers 3

    .line 51
    iget-object v0, p0, Lfreemarker/template/MapKeyValuePairIterator;->entrySetIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    new-instance v1, Lfreemarker/template/MapKeyValuePairIterator$1;

    invoke-direct {v1, p0, v0}, Lfreemarker/template/MapKeyValuePairIterator$1;-><init>(Lfreemarker/template/MapKeyValuePairIterator;Ljava/util/Map$Entry;)V

    return-object v1
.end method
