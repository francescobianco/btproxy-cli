.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$3;
.super Ljava/lang/Object;
.source "BluzDeviceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->cancelDiscovery()V

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    if-eqz v0, :cond_12

    .line 254
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$3;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;->onDiscoveryFinished()V

    :cond_12
    return-void
.end method
