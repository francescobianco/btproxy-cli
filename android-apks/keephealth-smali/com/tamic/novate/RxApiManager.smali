.class public Lcom/tamic/novate/RxApiManager;
.super Ljava/lang/Object;
.source "RxApiManager.java"

# interfaces
.implements Lcom/tamic/novate/RxActionManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tamic/novate/RxActionManager<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/tamic/novate/RxApiManager;


# instance fields
.field private maps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/tamic/novate/RxApiManager;->maps:Landroid/util/ArrayMap;

    return-void
.end method

.method public static get()Lcom/tamic/novate/RxApiManager;
    .registers 2

    .line 40
    sget-object v0, Lcom/tamic/novate/RxApiManager;->sInstance:Lcom/tamic/novate/RxApiManager;

    if-nez v0, :cond_17

    .line 41
    const-class v0, Lcom/tamic/novate/RxApiManager;

    monitor-enter v0

    .line 42
    :try_start_7
    sget-object v1, Lcom/tamic/novate/RxApiManager;->sInstance:Lcom/tamic/novate/RxApiManager;

    if-nez v1, :cond_12

    .line 43
    new-instance v1, Lcom/tamic/novate/RxApiManager;

    invoke-direct {v1}, Lcom/tamic/novate/RxApiManager;-><init>()V

    sput-object v1, Lcom/tamic/novate/RxApiManager;->sInstance:Lcom/tamic/novate/RxApiManager;

    .line 45
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 47
    :cond_17
    :goto_17
    sget-object v0, Lcom/tamic/novate/RxApiManager;->sInstance:Lcom/tamic/novate/RxApiManager;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Lrx/Subscription;)V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/tamic/novate/RxApiManager;->maps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancel(Ljava/lang/Object;)V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/tamic/novate/RxApiManager;->maps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 81
    :cond_9
    iget-object v0, p0, Lcom/tamic/novate/RxApiManager;->maps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    .line 84
    :cond_12
    iget-object v0, p0, Lcom/tamic/novate/RxApiManager;->maps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_30

    .line 85
    iget-object v0, p0, Lcom/tamic/novate/RxApiManager;->maps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 86
    iget-object v0, p0, Lcom/tamic/novate/RxApiManager;->maps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    return-void
.end method

.method public cancelAll()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/tamic/novate/RxApiManager;->maps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 95
    :cond_9
    iget-object v0, p0, Lcom/tamic/novate/RxApiManager;->maps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 97
    invoke-virtual {p0, v1}, Lcom/tamic/novate/RxApiManager;->cancel(Ljava/lang/Object;)V

    goto :goto_13

    :cond_21
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/tamic/novate/RxApiManager;->maps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 65
    iget-object v0, p0, Lcom/tamic/novate/RxApiManager;->maps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public removeAll()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/tamic/novate/RxApiManager;->maps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 72
    iget-object v0, p0, Lcom/tamic/novate/RxApiManager;->maps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :cond_d
    return-void
.end method
