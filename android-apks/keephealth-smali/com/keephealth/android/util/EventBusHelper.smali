.class public Lcom/keephealth/android/util/EventBusHelper;
.super Ljava/lang/Object;
.source "EventBusHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(I)V
    .registers 2

    .line 27
    new-instance v0, Lcom/keephealth/android/model/bean/BaseMessage;

    invoke-direct {v0, p0}, Lcom/keephealth/android/model/bean/BaseMessage;-><init>(I)V

    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(Lcom/keephealth/android/model/bean/BaseMessage;)V

    return-void
.end method

.method public static post(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 2

    .line 33
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static postSticky(I)V
    .registers 3

    .line 30
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/model/bean/BaseMessage;

    invoke-direct {v1, p0}, Lcom/keephealth/android/model/bean/BaseMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method public static postSticky(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 2

    .line 37
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static register(Ljava/lang/Object;)V
    .registers 2

    .line 20
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->unregister(Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static unregister(Ljava/lang/Object;)V
    .registers 2

    .line 24
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method
