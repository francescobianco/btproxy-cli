.class public interface abstract Lcom/keephealth/android/util/ota/Command$Callback;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ota/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract error(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Command;Ljava/lang/String;)V
.end method

.method public abstract success(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Command;Ljava/lang/Object;)V
.end method

.method public abstract timeout(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Command;)Z
.end method
