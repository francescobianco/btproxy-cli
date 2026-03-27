.class public Lfreemarker/ext/beans/_BeansAPI;
.super Ljava/lang/Object;
.source "_BeansAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clone(Lfreemarker/ext/beans/BeansWrapperConfiguration;)Lfreemarker/ext/beans/BeansWrapperConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BWC:",
            "Lfreemarker/ext/beans/BeansWrapperConfiguration;",
            ">(TBWC;)TBWC;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, v0}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->clone(Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;

    return-object p0
.end method

.method public static getAsClassicCompatibleString(Lfreemarker/ext/beans/BeanModel;)Ljava/lang/String;
    .registers 1

    .line 49
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeanModel;->getAsClassicCompatibleString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBeansWrapperSubclassSingleton(Lfreemarker/ext/beans/BeansWrapperConfiguration;Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory;)Lfreemarker/ext/beans/BeansWrapper;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BW:",
            "Lfreemarker/ext/beans/BeansWrapper;",
            "BWC:",
            "Lfreemarker/ext/beans/BeansWrapperConfiguration;",
            ">(TBWC;",
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "TBWC;",
            "Ljava/lang/ref/WeakReference<",
            "TBW;>;>;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TBW;>;",
            "Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory<",
            "TBW;TBWC;>;)TBW;"
        }
    .end annotation

    .line 151
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 155
    monitor-enter p1

    .line 156
    :try_start_9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 159
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_22

    .line 162
    :cond_1c
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 164
    :goto_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_68

    if-eqz v0, :cond_2c

    .line 166
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/beans/BeansWrapper;

    goto :goto_2d

    :cond_2c
    move-object v0, v2

    :goto_2d
    if-eqz v0, :cond_30

    return-object v0

    .line 172
    :cond_30
    invoke-static {p0}, Lfreemarker/ext/beans/_BeansAPI;->clone(Lfreemarker/ext/beans/BeansWrapperConfiguration;)Lfreemarker/ext/beans/BeansWrapperConfiguration;

    move-result-object p0

    .line 173
    invoke-interface {p3, p0}, Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory;->create(Lfreemarker/ext/beans/BeansWrapperConfiguration;)Lfreemarker/ext/beans/BeansWrapper;

    move-result-object p3

    .line 174
    invoke-virtual {p3}, Lfreemarker/ext/beans/BeansWrapper;->isWriteProtected()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 178
    monitor-enter p1

    .line 179
    :try_start_3f
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-eqz v0, :cond_4e

    .line 180
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lfreemarker/ext/beans/BeansWrapper;

    :cond_4e
    if-nez v2, :cond_59

    .line 182
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    :cond_59
    move-object p3, v2

    .line 186
    :goto_5a
    monitor-exit p1
    :try_end_5b
    .catchall {:try_start_3f .. :try_end_5b} :catchall_5f

    .line 188
    invoke-static {p1, p2}, Lfreemarker/ext/beans/_BeansAPI;->removeClearedReferencesFromCache(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    return-object p3

    :catchall_5f
    move-exception p0

    .line 186
    :try_start_60
    monitor-exit p1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0

    .line 175
    :cond_62
    new-instance p0, Lfreemarker/core/BugException;

    invoke-direct {p0}, Lfreemarker/core/BugException;-><init>()V

    throw p0

    :catchall_68
    move-exception p0

    .line 164
    :try_start_69
    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public static getClassIntrospectorBuilder(Lfreemarker/ext/beans/BeansWrapperConfiguration;)Lfreemarker/ext/beans/ClassIntrospectorBuilder;
    .registers 1

    .line 227
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->getClassIntrospectorBuilder()Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static getConstructorDescriptor(Ljava/lang/Class;[Ljava/lang/Object;)Lfreemarker/ext/beans/CallableMemberDescriptor;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lfreemarker/ext/beans/CallableMemberDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-nez p1, :cond_4

    .line 65
    sget-object p1, Lfreemarker/template/utility/CollectionUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 67
    :cond_4
    new-instance v0, Lfreemarker/ext/beans/ArgumentTypes;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lfreemarker/ext/beans/ArgumentTypes;-><init>([Ljava/lang/Object;Z)V

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 73
    :goto_1a
    array-length v6, v3

    if-ge v5, v6, :cond_38

    .line 74
    aget-object v6, v3, v5

    .line 75
    new-instance v7, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;-><init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)V

    .line 76
    invoke-static {v6}, Lfreemarker/ext/beans/_MethodUtil;->isVarargs(Ljava/lang/reflect/Member;)Z

    move-result v6

    if-nez v6, :cond_32

    .line 77
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 79
    :cond_32
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 83
    :cond_38
    invoke-virtual {v0, p1, v4}, Lfreemarker/ext/beans/ArgumentTypes;->getMostSpecific(Ljava/util/List;Z)Lfreemarker/ext/beans/MaybeEmptyCallableMemberDescriptor;

    move-result-object p1

    .line 84
    sget-object v3, Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;->NO_SUCH_METHOD:Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;

    if-ne p1, v3, :cond_44

    .line 85
    invoke-virtual {v0, v2, v1}, Lfreemarker/ext/beans/ArgumentTypes;->getMostSpecific(Ljava/util/List;Z)Lfreemarker/ext/beans/MaybeEmptyCallableMemberDescriptor;

    move-result-object p1

    .line 88
    :cond_44
    instance-of v0, p1, Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;

    if-eqz v0, :cond_94

    .line 89
    sget-object v0, Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;->NO_SUCH_METHOD:Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;

    if-eq p1, v0, :cond_75

    .line 93
    sget-object v0, Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;->AMBIGUOUS_METHOD:Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;

    if-ne p1, v0, :cond_6f

    .line 94
    new-instance p1, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "There are multiple public "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " constructors that match the compatible parameter list with the same preferability."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_6f
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0

    .line 90
    :cond_75
    new-instance p1, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "There\'s no public "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " constructor with compatible parameter list."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_94
    check-cast p1, Lfreemarker/ext/beans/CallableMemberDescriptor;

    return-object p1
.end method

.method private static newInstance(Lfreemarker/ext/beans/CallableMemberDescriptor;[Ljava/lang/Object;Lfreemarker/ext/beans/BeansWrapper;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalArgumentException;,
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-nez p1, :cond_4

    .line 108
    sget-object p1, Lfreemarker/template/utility/CollectionUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 111
    :cond_4
    invoke-virtual {p0}, Lfreemarker/ext/beans/CallableMemberDescriptor;->isVarargs()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 114
    invoke-virtual {p0}, Lfreemarker/ext/beans/CallableMemberDescriptor;->getParamTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 115
    array-length v1, v0

    add-int/lit8 v2, v1, -0x1

    .line 117
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_1e

    .line 119
    aget-object v5, p1, v4

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 122
    :cond_1e
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 123
    array-length v4, p1

    sub-int/2addr v4, v2

    .line 124
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    :goto_2a
    if-ge v3, v4, :cond_36

    add-int v5, v2, v3

    .line 126
    aget-object v5, p1, v5

    invoke-static {v0, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 128
    :cond_36
    aput-object v0, v1, v2

    move-object p1, v1

    .line 133
    :cond_39
    invoke-virtual {p0, p2, p1}, Lfreemarker/ext/beans/CallableMemberDescriptor;->invokeConstructor(Lfreemarker/ext/beans/BeansWrapper;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/Class;[Ljava/lang/Object;Lfreemarker/ext/beans/BeansWrapper;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "Lfreemarker/ext/beans/BeansWrapper;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 55
    invoke-static {p0, p1}, Lfreemarker/ext/beans/_BeansAPI;->getConstructorDescriptor(Ljava/lang/Class;[Ljava/lang/Object;)Lfreemarker/ext/beans/CallableMemberDescriptor;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lfreemarker/ext/beans/_BeansAPI;->newInstance(Lfreemarker/ext/beans/CallableMemberDescriptor;[Ljava/lang/Object;Lfreemarker/ext/beans/BeansWrapper;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static removeClearedReferencesFromCache(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BW:",
            "Lfreemarker/ext/beans/BeansWrapper;",
            "BWC:",
            "Lfreemarker/ext/beans/BeansWrapperConfiguration;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "TBWC;",
            "Ljava/lang/ref/WeakReference<",
            "TBW;>;>;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TBW;>;)V"
        }
    .end annotation

    .line 203
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 204
    monitor-enter p0

    .line 205
    :try_start_7
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 206
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_23

    .line 208
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 213
    :cond_32
    monitor-exit p0

    goto :goto_0

    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1

    :cond_37
    return-void
.end method
