.class Lfreemarker/template/SimpleSequence$SynchronizedSequence;
.super Lfreemarker/template/SimpleSequence;
.source "SimpleSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/SimpleSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynchronizedSequence"
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/template/SimpleSequence;


# direct methods
.method private constructor <init>(Lfreemarker/template/SimpleSequence;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    invoke-direct {p0}, Lfreemarker/template/SimpleSequence;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/template/SimpleSequence;Lfreemarker/template/SimpleSequence$1;)V
    .registers 3

    .line 266
    invoke-direct {p0, p1}, Lfreemarker/template/SimpleSequence$SynchronizedSequence;-><init>(Lfreemarker/template/SimpleSequence;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4

    .line 270
    iget-object v0, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    monitor-enter v0

    .line 271
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    invoke-virtual {v1, p1}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    .line 272
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    invoke-virtual {v1, p1}, Lfreemarker/template/SimpleSequence;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_b
    move-exception p1

    .line 279
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public size()I
    .registers 3

    .line 284
    iget-object v0, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    monitor-enter v0

    .line 285
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    invoke-virtual {v1}, Lfreemarker/template/SimpleSequence;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 286
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public toList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    monitor-enter v0

    .line 292
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    invoke-virtual {v1}, Lfreemarker/template/SimpleSequence;->toList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 293
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
