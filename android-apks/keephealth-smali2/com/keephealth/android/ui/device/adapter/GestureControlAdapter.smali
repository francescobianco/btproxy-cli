.class public Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "GestureControlAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/keephealth/android/ui/device/bean/GestureControlBean;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public isFuture:Z


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/GestureControlBean;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;->isFuture:Z

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/ui/device/bean/GestureControlBean;)V
    .registers 5

    const v0, 0x7f0902a2

    .line 39
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->isShow()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v0, 0x7f090676

    .line 40
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->getItemTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 41
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->getItemExplain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f090675

    if-eqz v0, :cond_26

    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_31

    :cond_26
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 45
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->getItemExplain()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_31
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .registers 3

    .line 24
    check-cast p2, Lcom/keephealth/android/ui/device/bean/GestureControlBean;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/ui/device/bean/GestureControlBean;)V

    return-void
.end method

.method public setFuture(Z)V
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;->isFuture:Z

    return-void
.end method
