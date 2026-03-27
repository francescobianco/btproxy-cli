.class public Lcom/tamic/novate/cookie/NovateCookieManager;
.super Ljava/lang/Object;
.source "NovateCookieManager.java"

# interfaces
.implements Lcom/tamic/novate/cookie/ClearableCookieJar;


# instance fields
.field private cache:Lcom/tamic/novate/cache/CookieCache;

.field private persistor:Lcom/tamic/novate/cookie/CookiePersistor;


# direct methods
.method public constructor <init>(Lcom/tamic/novate/cache/CookieCache;Lcom/tamic/novate/cookie/CookiePersistor;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/tamic/novate/cookie/NovateCookieManager;->cache:Lcom/tamic/novate/cache/CookieCache;

    .line 39
    iput-object p2, p0, Lcom/tamic/novate/cookie/NovateCookieManager;->persistor:Lcom/tamic/novate/cookie/CookiePersistor;

    .line 41
    invoke-interface {p2}, Lcom/tamic/novate/cookie/CookiePersistor;->loadAll()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tamic/novate/cache/CookieCache;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method private static filterPersistentCookies(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Cookie;

    .line 54
    invoke-virtual {v1}, Lokhttp3/Cookie;->persistent()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v0
.end method

.method private static isCookieExpired(Lokhttp3/Cookie;)Z
    .registers 5

    .line 84
    invoke-virtual {p0}, Lokhttp3/Cookie;->expiresAt()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/tamic/novate/cookie/NovateCookieManager;->cache:Lcom/tamic/novate/cache/CookieCache;

    invoke-interface {v0}, Lcom/tamic/novate/cache/CookieCache;->clear()V

    .line 96
    iget-object v0, p0, Lcom/tamic/novate/cookie/NovateCookieManager;->persistor:Lcom/tamic/novate/cookie/CookiePersistor;

    invoke-interface {v0}, Lcom/tamic/novate/cookie/CookiePersistor;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 97
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearSession()V
    .registers 3

    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/tamic/novate/cookie/NovateCookieManager;->cache:Lcom/tamic/novate/cache/CookieCache;

    invoke-interface {v0}, Lcom/tamic/novate/cache/CookieCache;->clear()V

    .line 90
    iget-object v0, p0, Lcom/tamic/novate/cookie/NovateCookieManager;->cache:Lcom/tamic/novate/cache/CookieCache;

    iget-object v1, p0, Lcom/tamic/novate/cookie/NovateCookieManager;->persistor:Lcom/tamic/novate/cookie/CookiePersistor;

    invoke-interface {v1}, Lcom/tamic/novate/cookie/CookiePersistor;->loadAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tamic/novate/cache/CookieCache;->addAll(Ljava/util/Collection;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 91
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v2, p0, Lcom/tamic/novate/cookie/NovateCookieManager;->cache:Lcom/tamic/novate/cache/CookieCache;

    invoke-interface {v2}, Lcom/tamic/novate/cache/CookieCache;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Cookie;

    .line 69
    invoke-static {v3}, Lcom/tamic/novate/cookie/NovateCookieManager;->isCookieExpired(Lokhttp3/Cookie;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 70
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 73
    :cond_2a
    invoke-virtual {v3, p1}, Lokhttp3/Cookie;->matches(Lokhttp3/HttpUrl;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 74
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 78
    :cond_34
    iget-object p1, p0, Lcom/tamic/novate/cookie/NovateCookieManager;->persistor:Lcom/tamic/novate/cookie/CookiePersistor;

    invoke-interface {p1, v0}, Lcom/tamic/novate/cookie/CookiePersistor;->removeAll(Ljava/util/Collection;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 80
    monitor-exit p0

    return-object v1

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 46
    :try_start_1
    iget-object p1, p0, Lcom/tamic/novate/cookie/NovateCookieManager;->cache:Lcom/tamic/novate/cache/CookieCache;

    invoke-interface {p1, p2}, Lcom/tamic/novate/cache/CookieCache;->addAll(Ljava/util/Collection;)V

    .line 47
    iget-object p1, p0, Lcom/tamic/novate/cookie/NovateCookieManager;->persistor:Lcom/tamic/novate/cookie/CookiePersistor;

    invoke-static {p2}, Lcom/tamic/novate/cookie/NovateCookieManager;->filterPersistentCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tamic/novate/cookie/CookiePersistor;->saveAll(Ljava/util/Collection;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 48
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
