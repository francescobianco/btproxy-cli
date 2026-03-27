.class public interface abstract Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;
.super Ljava/lang/Object;
.source "OTAManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ota/OTAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OTAListener"
.end annotation


# virtual methods
.method public abstract onAudioDataReceived(II[B)V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onProgress(II)V
.end method

.method public abstract onRemoteStatusReceived(Lcom/keephealth/android/twootablue/ota/RemoteStatus;)V
.end method

.method public abstract onStatus(I)V
.end method

.method public abstract onWriteBytes(I)V
.end method
