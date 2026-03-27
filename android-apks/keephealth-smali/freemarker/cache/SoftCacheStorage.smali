.class public Lfreemarker/cache/SoftCacheStorage;
.super Ljava/lang/Object;
.source "SoftCacheStorage.java"

# interfaces
.implements Lfreemarker/cache/ConcurrentCacheStorage;
.implements Lfreemarker/cache/CacheStorageWithGetSize;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/cache/SoftCacheStorage$SoftValueReference;
    }
.end annotation


# static fields
.field private static final atomicRemove:Ljava/lang/reflect/Method;


# instance fields
.field private final concurrent:Z

.field private final map:Ljava/util/Map;

.field private final queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    invoke-static {}, Lfreemarker/cache/SoftCacheStorage;->getAtomicRemoveMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/cache/SoftCacheStorage;->atomicRemove:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, v0}, Lfreemarker/cache/SoftCacheStorage;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lfreemarker/cache/SoftCacheStorage;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 63
    iput-object p1, p0, Lfreemarker/cache/SoftCacheStorage;->map:Ljava/util/Map;

    .line 64
    instance-of p1, p1, Ljava/util/concurrent/ConcurrentMap;

    iput-boolean p1, p0, Lfreemarker/cache/SoftCacheStorage;->concurrent:Z

    return-void
.end method

.method private static getAtomicRemoveMethod()Ljava/lang/reflect/Method;
    .registers 5

    .line 134
    :try_start_0
    const-string v0, "java.util.concurrent.ConcurrentMap"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "remove"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_19} :catch_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception v0

    .line 138
    new-instance v1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_21
    const/4 v0, 0x0

    return-object v0
.end method

.method private processQueue()V
    .registers 5

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Lfreemarker/cache/SoftCacheStorage;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lfreemarker/cache/SoftCacheStorage$SoftValueReference;

    if-nez v0, :cond_b

    return-void

    .line 104
    :cond_b
    invoke-virtual {v0}, Lfreemarker/cache/SoftCacheStorage$SoftValueReference;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 105
    iget-boolean v2, p0, Lfreemarker/cache/SoftCacheStorage;->concurrent:Z

    if-eqz v2, :cond_2d

    .line 107
    :try_start_13
    sget-object v2, Lfreemarker/cache/SoftCacheStorage;->atomicRemove:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lfreemarker/cache/SoftCacheStorage;->map:Ljava/util/Map;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_1e} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_1e} :catch_1f

    goto :goto_0

    :catch_1f
    move-exception v0

    .line 111
    new-instance v1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_26
    move-exception v0

    .line 109
    new-instance v1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :cond_2d
    iget-object v2, p0, Lfreemarker/cache/SoftCacheStorage;->map:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 114
    iget-object v0, p0, Lfreemarker/cache/SoftCacheStorage;->map:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 84
    iget-object v0, p0, Lfreemarker/cache/SoftCacheStorage;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    invoke-direct {p0}, Lfreemarker/cache/SoftCacheStorage;->processQueue()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 68
    invoke-direct {p0}, Lfreemarker/cache/SoftCacheStorage;->processQueue()V

    .line 69
    iget-object v0, p0, Lfreemarker/cache/SoftCacheStorage;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/Reference;

    if-nez p1, :cond_f

    const/4 p1, 0x0

    goto :goto_13

    .line 70
    :cond_f
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method public getSize()I
    .registers 2

    .line 94
    invoke-direct {p0}, Lfreemarker/cache/SoftCacheStorage;->processQueue()V

    .line 95
    iget-object v0, p0, Lfreemarker/cache/SoftCacheStorage;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public isConcurrent()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lfreemarker/cache/SoftCacheStorage;->concurrent:Z

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 74
    invoke-direct {p0}, Lfreemarker/cache/SoftCacheStorage;->processQueue()V

    .line 75
    iget-object v0, p0, Lfreemarker/cache/SoftCacheStorage;->map:Ljava/util/Map;

    new-instance v1, Lfreemarker/cache/SoftCacheStorage$SoftValueReference;

    iget-object v2, p0, Lfreemarker/cache/SoftCacheStorage;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p2, v2}, Lfreemarker/cache/SoftCacheStorage$SoftValueReference;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Lfreemarker/cache/SoftCacheStorage;->processQueue()V

    .line 80
    iget-object v0, p0, Lfreemarker/cache/SoftCacheStorage;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
