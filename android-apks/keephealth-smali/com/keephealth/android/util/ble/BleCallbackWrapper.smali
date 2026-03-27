.class public abstract Lcom/keephealth/android/util/ble/BleCallbackWrapper;
.super Ljava/lang/Object;
.source "BleCallbackWrapper.java"

# interfaces
.implements Lcom/keephealth/android/util/ble/BleCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(ILjava/lang/Object;)V
    .registers 3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/BleCallbackWrapper;->setSuccess()V

    goto :goto_1d

    :cond_7
    const/4 p2, -0x4

    if-ne p2, p1, :cond_11

    const p1, 0x7f100258

    .line 19
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    goto :goto_1a

    :cond_11
    const/4 p2, -0x3

    if-ne p2, p1, :cond_1a

    const p1, 0x7f10053c

    .line 21
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    .line 23
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/BleCallbackWrapper;->setFaild()V

    :goto_1d
    return-void
.end method

.method public setFaild()V
    .registers 1

    return-void
.end method

.method public abstract setSuccess()V
.end method
