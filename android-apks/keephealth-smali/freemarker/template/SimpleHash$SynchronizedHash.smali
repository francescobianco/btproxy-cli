.class Lfreemarker/template/SimpleHash$SynchronizedHash;
.super Lfreemarker/template/SimpleHash;
.source "SimpleHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/SimpleHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynchronizedHash"
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/template/SimpleHash;


# direct methods
.method private constructor <init>(Lfreemarker/template/SimpleHash;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-direct {p0}, Lfreemarker/template/SimpleHash;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/template/SimpleHash;Lfreemarker/template/SimpleHash$1;)V
    .registers 3

    .line 350
    invoke-direct {p0, p1}, Lfreemarker/template/SimpleHash$SynchronizedHash;-><init>(Lfreemarker/template/SimpleHash;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    .line 369
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {v1, p1}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_b
    move-exception p1

    .line 370
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public isEmpty()Z
    .registers 3

    .line 354
    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {v1}, Lfreemarker/template/SimpleHash;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 356
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;
    .registers 3

    .line 403
    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    .line 404
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {v1}, Lfreemarker/template/SimpleHash;->keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 405
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 3

    .line 389
    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    .line 390
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {v1}, Lfreemarker/template/SimpleHash;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 391
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 361
    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    .line 362
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {v1, p1, p2}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4

    .line 375
    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    .line 376
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {v1, p1}, Lfreemarker/template/SimpleHash;->remove(Ljava/lang/String;)V

    .line 377
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public size()I
    .registers 3

    .line 382
    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    .line 383
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {v1}, Lfreemarker/template/SimpleHash;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 384
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public toMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    .line 411
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {v1}, Lfreemarker/template/SimpleHash;->toMap()Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 412
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 3

    .line 396
    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    .line 397
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {v1}, Lfreemarker/template/SimpleHash;->values()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 398
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
