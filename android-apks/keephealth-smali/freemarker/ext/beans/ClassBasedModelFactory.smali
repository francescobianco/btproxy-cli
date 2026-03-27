.class abstract Lfreemarker/ext/beans/ClassBasedModelFactory;
.super Ljava/lang/Object;
.source "ClassBasedModelFactory.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# instance fields
.field private final cache:Ljava/util/Map;

.field private final classIntrospectionsInProgress:Ljava/util/Set;

.field private final wrapper:Lfreemarker/ext/beans/BeansWrapper;


# direct methods
.method protected constructor <init>(Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->cache:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->classIntrospectionsInProgress:Ljava/util/Set;

    .line 44
    iput-object p1, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    return-void
.end method

.method private getInternal(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_b

    return-object v0

    .line 68
    :cond_b
    iget-object v0, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0}, Lfreemarker/ext/beans/BeansWrapper;->getSharedIntrospectionLock()Ljava/lang/Object;

    move-result-object v0

    .line 69
    monitor-enter v0

    .line 70
    :try_start_12
    iget-object v1, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/template/TemplateModel;

    if-eqz v1, :cond_1e

    .line 71
    monitor-exit v0

    return-object v1

    :cond_1e
    :goto_1e
    if-nez v1, :cond_4e

    .line 73
    iget-object v2, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->classIntrospectionsInProgress:Ljava/util/Set;

    .line 74
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_a5

    if-eqz v2, :cond_4e

    .line 78
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 79
    iget-object v1, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/template/TemplateModel;
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_33} :catch_34
    .catchall {:try_start_28 .. :try_end_33} :catchall_a5

    goto :goto_1e

    :catch_34
    move-exception p1

    .line 81
    :try_start_35
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class inrospection data lookup aborded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    if-eqz v1, :cond_52

    .line 85
    monitor-exit v0

    return-object v1

    .line 88
    :cond_52
    iget-object v1, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->classIntrospectionsInProgress:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v1}, Lfreemarker/ext/beans/BeansWrapper;->getClassIntrospector()Lfreemarker/ext/beans/ClassIntrospector;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lfreemarker/ext/beans/ClassIntrospector;->getClearingCounter()I

    move-result v2

    .line 94
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_35 .. :try_end_62} :catchall_a5

    .line 96
    :try_start_62
    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 102
    invoke-virtual {v1, v3}, Lfreemarker/ext/beans/ClassIntrospector;->get(Ljava/lang/Class;)Ljava/util/Map;

    .line 104
    invoke-virtual {p0, v3}, Lfreemarker/ext/beans/ClassBasedModelFactory;->createModel(Ljava/lang/Class;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    if-eqz v3, :cond_88

    .line 109
    monitor-enter v0
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_96

    .line 111
    :try_start_70
    iget-object v4, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v4}, Lfreemarker/ext/beans/BeansWrapper;->getClassIntrospector()Lfreemarker/ext/beans/ClassIntrospector;

    move-result-object v4

    if-ne v1, v4, :cond_83

    .line 112
    invoke-virtual {v1}, Lfreemarker/ext/beans/ClassIntrospector;->getClearingCounter()I

    move-result v1

    if-ne v2, v1, :cond_83

    .line 113
    iget-object v1, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_83
    monitor-exit v0

    goto :goto_88

    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_70 .. :try_end_87} :catchall_85

    :try_start_87
    throw v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_96

    .line 119
    :cond_88
    :goto_88
    monitor-enter v0

    .line 120
    :try_start_89
    iget-object v1, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->classIntrospectionsInProgress:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit v0

    return-object v3

    :catchall_93
    move-exception p1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_89 .. :try_end_95} :catchall_93

    throw p1

    :catchall_96
    move-exception v1

    .line 119
    monitor-enter v0

    .line 120
    :try_start_98
    iget-object v2, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->classIntrospectionsInProgress:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_a2

    .line 123
    throw v1

    :catchall_a2
    move-exception p1

    .line 122
    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw p1

    :catchall_a5
    move-exception p1

    .line 94
    :try_start_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw p1
.end method


# virtual methods
.method clearCache()V
    .registers 3

    .line 127
    iget-object v0, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0}, Lfreemarker/ext/beans/BeansWrapper;->getSharedIntrospectionLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 128
    :try_start_7
    iget-object v1, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 129
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method protected abstract createModel(Ljava/lang/Class;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 49
    :try_start_0
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/ClassBasedModelFactory;->getInternal(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception v0

    .line 51
    instance-of v1, v0, Lfreemarker/template/TemplateModelException;

    if-eqz v1, :cond_d

    .line 52
    check-cast v0, Lfreemarker/template/TemplateModelException;

    throw v0

    .line 54
    :cond_d
    new-instance v1, Lfreemarker/core/_TemplateModelException;

    new-instance v2, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v2, p1}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string p1, "; see cause exception."

    const-string v3, "Failed to get value for key "

    filled-new-array {v3, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected getWrapper()Lfreemarker/ext/beans/BeansWrapper;
    .registers 2

    .line 146
    iget-object v0, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method removeFromCache(Ljava/lang/Class;)V
    .registers 4

    .line 133
    iget-object v0, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0}, Lfreemarker/ext/beans/BeansWrapper;->getSharedIntrospectionLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 134
    :try_start_7
    iget-object v1, p0, Lfreemarker/ext/beans/ClassBasedModelFactory;->cache:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1
.end method
