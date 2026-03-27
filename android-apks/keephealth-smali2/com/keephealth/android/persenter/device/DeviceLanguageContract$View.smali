.class public interface abstract Lcom/keephealth/android/persenter/device/DeviceLanguageContract$View;
.super Ljava/lang/Object;
.source "DeviceLanguageContract.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/device/DeviceLanguageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract getFail()V
.end method

.method public abstract getSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/LanguageBean;",
            ">;)V"
        }
    .end annotation
.end method
