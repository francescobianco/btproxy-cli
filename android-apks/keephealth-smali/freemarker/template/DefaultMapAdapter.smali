.class public Lfreemarker/template/DefaultMapAdapter;
.super Lfreemarker/template/WrappingTemplateModel;
.source "DefaultMapAdapter.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Lfreemarker/template/TemplateModelWithAPISupport;
.implements Ljava/io/Serializable;


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/util/Map;Lfreemarker/template/ObjectWrapper;)V
    .registers 3

    .line 66
    invoke-direct {p0, p2}, Lfreemarker/template/WrappingTemplateModel;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 67
    iput-object p1, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    return-void
.end method

.method public static adapt(Ljava/util/Map;Lfreemarker/template/utility/ObjectWrapperWithAPISupport;)Lfreemarker/template/DefaultMapAdapter;
    .registers 3

    .line 62
    new-instance v0, Lfreemarker/template/DefaultMapAdapter;

    invoke-direct {v0, p0, p1}, Lfreemarker/template/DefaultMapAdapter;-><init>(Ljava/util/Map;Lfreemarker/template/ObjectWrapper;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 73
    :try_start_0
    iget-object v0, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_8e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7c

    if-nez v0, :cond_77

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_66

    iget-object v0, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-nez v0, :cond_66

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 90
    :try_start_1f
    iget-object v1, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_40

    .line 92
    invoke-virtual {p0, v2}, Lfreemarker/template/DefaultMapAdapter;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 93
    iget-object v3, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    iget-object p1, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3b
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_3b} :catch_54
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_3b} :catch_42

    if-nez p1, :cond_3e

    goto :goto_3f

    :cond_3e
    return-object v1

    :cond_3f
    :goto_3f
    return-object v2

    :cond_40
    move-object v0, v1

    goto :goto_77

    :catch_42
    move-exception p1

    .line 104
    new-instance v1, Lfreemarker/core/_TemplateModelException;

    new-instance v2, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v2, v0}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string v0, "NullPointerException while getting Map entry with Character key "

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1

    :catch_54
    move-exception p1

    .line 100
    new-instance v1, Lfreemarker/core/_TemplateModelException;

    new-instance v2, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v2, v0}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string v0, "Class casting exception while getting Map entry with Character key "

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1

    .line 109
    :cond_66
    invoke-virtual {p0, v2}, Lfreemarker/template/DefaultMapAdapter;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 110
    iget-object v1, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_75

    goto :goto_76

    :cond_75
    return-object v0

    :cond_76
    :goto_76
    return-object v2

    .line 118
    :cond_77
    :goto_77
    invoke-virtual {p0, v0}, Lfreemarker/template/DefaultMapAdapter;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :catch_7c
    move-exception v0

    .line 79
    new-instance v1, Lfreemarker/core/_TemplateModelException;

    new-instance v2, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v2, p1}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string p1, "NullPointerException while getting Map entry with String key "

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1

    :catch_8e
    move-exception v0

    .line 75
    new-instance v1, Lfreemarker/core/_TemplateModelException;

    new-instance v2, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v2, p1}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string p1, "ClassCastException while getting Map entry with String key "

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public getAPI()Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lfreemarker/template/DefaultMapAdapter;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    check-cast v0, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;

    iget-object v1, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0, v1}, Lfreemarker/template/utility/ObjectWrapperWithAPISupport;->wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 142
    iget-object p1, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .registers 2

    .line 146
    iget-object v0, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 122
    iget-object v0, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;
    .registers 4

    .line 138
    new-instance v0, Lfreemarker/template/MapKeyValuePairIterator;

    iget-object v1, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-virtual {p0}, Lfreemarker/template/DefaultMapAdapter;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/template/MapKeyValuePairIterator;-><init>(Ljava/util/Map;Lfreemarker/template/ObjectWrapper;)V

    return-object v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 4

    .line 130
    new-instance v0, Lfreemarker/template/SimpleCollection;

    iget-object v1, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/template/DefaultMapAdapter;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 126
    iget-object v0, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 4

    .line 134
    new-instance v0, Lfreemarker/template/SimpleCollection;

    iget-object v1, p0, Lfreemarker/template/DefaultMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/template/DefaultMapAdapter;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    return-object v0
.end method
