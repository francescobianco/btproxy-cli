.class public interface abstract Lcom/keephealth/android/persenter/main/FarmilyHealthContract$View;
.super Ljava/lang/Object;
.source "FarmilyHealthContract.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/main/FarmilyHealthContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract returnFamilyList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/FamilyBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract returnInvitedList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/InvitedBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract returnResult(I)V
.end method
