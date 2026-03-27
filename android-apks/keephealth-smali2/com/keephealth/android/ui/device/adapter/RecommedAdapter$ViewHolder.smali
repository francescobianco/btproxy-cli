.class public Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "RecommedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

.field tvLabel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090679
    .end annotation
.end field

.field tvMore:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;Landroid/view/View;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;->this$0:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    .line 103
    invoke-direct {p0, p2}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
