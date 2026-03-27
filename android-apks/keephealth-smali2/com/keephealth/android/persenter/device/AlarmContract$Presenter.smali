.class public interface abstract Lcom/keephealth/android/persenter/device/AlarmContract$Presenter;
.super Ljava/lang/Object;
.source "AlarmContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/device/AlarmContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract saveAlarmToDevice(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/Alarm;",
            ">;)V"
        }
    .end annotation
.end method
