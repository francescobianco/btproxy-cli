.class public Lfreemarker/cache/NullCacheStorage;
.super Ljava/lang/Object;
.source "NullCacheStorage.java"

# interfaces
.implements Lfreemarker/cache/ConcurrentCacheStorage;
.implements Lfreemarker/cache/CacheStorageWithGetSize;


# static fields
.field public static final INSTANCE:Lfreemarker/cache/NullCacheStorage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lfreemarker/cache/NullCacheStorage;

    invoke-direct {v0}, Lfreemarker/cache/NullCacheStorage;-><init>()V

    sput-object v0, Lfreemarker/cache/NullCacheStorage;->INSTANCE:Lfreemarker/cache/NullCacheStorage;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSize()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isConcurrent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
