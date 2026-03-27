.class public Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "DrinkWaterDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field layout_delete:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090322
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

.field tvWaterTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090714
    .end annotation
.end field

.field waterTotal:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0907d4
    .end annotation
.end field

.field waterTotal_unit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0907d6
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;Landroid/view/View;)V
    .registers 3

    .line 121
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->this$0:Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;

    .line 122
    invoke-direct {p0, p2}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
