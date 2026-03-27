.class public Lfreemarker/ext/beans/BeansModelCache;
.super Lfreemarker/ext/util/ModelCache;
.source "BeansModelCache.java"


# instance fields
.field private final classToFactory:Ljava/util/Map;

.field private final mappedClassNames:Ljava/util/Set;

.field private final wrapper:Lfreemarker/ext/beans/BeansWrapper;


# direct methods
.method constructor <init>(Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Lfreemarker/ext/util/ModelCache;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/beans/BeansModelCache;->classToFactory:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/beans/BeansModelCache;->mappedClassNames:Ljava/util/Set;

    .line 39
    iput-object p1, p0, Lfreemarker/ext/beans/BeansModelCache;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 6

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lfreemarker/ext/beans/BeansModelCache;->classToFactory:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/util/ModelFactory;

    if-nez v1, :cond_46

    .line 56
    iget-object v2, p0, Lfreemarker/ext/beans/BeansModelCache;->classToFactory:Ljava/util/Map;

    monitor-enter v2

    .line 57
    :try_start_11
    iget-object v1, p0, Lfreemarker/ext/beans/BeansModelCache;->classToFactory:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/util/ModelFactory;

    if-nez v1, :cond_41

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v3, p0, Lfreemarker/ext/beans/BeansModelCache;->mappedClassNames:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 62
    iget-object v3, p0, Lfreemarker/ext/beans/BeansModelCache;->classToFactory:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 63
    iget-object v3, p0, Lfreemarker/ext/beans/BeansModelCache;->mappedClassNames:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 64
    iget-object v3, p0, Lfreemarker/ext/beans/BeansModelCache;->mappedClassNames:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_36
    iget-object v1, p0, Lfreemarker/ext/beans/BeansModelCache;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v1, v0}, Lfreemarker/ext/beans/BeansWrapper;->getModelFactory(Ljava/lang/Class;)Lfreemarker/ext/util/ModelFactory;

    move-result-object v1

    .line 67
    iget-object v3, p0, Lfreemarker/ext/beans/BeansModelCache;->classToFactory:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_41
    monitor-exit v2

    goto :goto_46

    :catchall_43
    move-exception p1

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_11 .. :try_end_45} :catchall_43

    throw p1

    .line 72
    :cond_46
    :goto_46
    iget-object v0, p0, Lfreemarker/ext/beans/BeansModelCache;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-interface {v1, p1, v0}, Lfreemarker/ext/util/ModelFactory;->create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method protected isCacheable(Ljava/lang/Object;)Z
    .registers 3

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
