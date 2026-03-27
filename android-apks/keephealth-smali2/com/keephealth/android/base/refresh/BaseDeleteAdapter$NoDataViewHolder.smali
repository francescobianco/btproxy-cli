.class public Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$NoDataViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "BaseDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoDataViewHolder"
.end annotation


# instance fields
.field llLoadNoDate:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903c2
    .end annotation
.end field

.field moduleBaseEmptyText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09040d
    .end annotation
.end field

.field moduleBaseIdEmptyImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09040f
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 224
    invoke-direct {p0, p1}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 225
    iget-object p1, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$NoDataViewHolder;->llLoadNoDate:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
