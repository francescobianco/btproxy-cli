.class public Lcom/keephealth/android/ui/device/adapter/CardAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "CardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/keephealth/android/ui/device/bean/CardBean;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public isCard:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/CardBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    const/4 p1, 0x1

    .line 29
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/CardAdapter;->isCard:I

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/ui/device/bean/CardBean;)V
    .registers 7

    const v0, 0x7f09068d

    .line 41
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/CardBean;->getCardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v0, 0x7f0902a1

    .line 42
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/CardBean;->getCardIcon()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 43
    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/CardAdapter;->isCard:I

    const/4 v1, 0x0

    const v2, 0x7f0907ba

    const/4 v3, 0x1

    if-ne v0, v3, :cond_29

    .line 44
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/CardBean;->getIndex()I

    move-result p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_25

    move v1, v3

    :cond_25
    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_34

    .line 46
    :cond_29
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/CardBean;->getIndex()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_31

    move v1, v3

    :cond_31
    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_34
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .registers 3

    .line 22
    check-cast p2, Lcom/keephealth/android/ui/device/bean/CardBean;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/ui/device/adapter/CardAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/ui/device/bean/CardBean;)V

    return-void
.end method

.method public getIsCard()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/CardAdapter;->isCard:I

    return v0
.end method

.method public setIsCard(I)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/CardAdapter;->isCard:I

    return-void
.end method
