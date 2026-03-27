.class public Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "DrinkWaterGoalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068d
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906f2
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;Landroid/view/View;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->this$0:Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;

    .line 69
    invoke-direct {p0, p2}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
