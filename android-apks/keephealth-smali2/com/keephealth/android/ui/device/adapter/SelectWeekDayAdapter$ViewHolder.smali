.class public Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "SelectWeekDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field isSelect:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09024b
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;

.field weekDayName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0907d8
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;Landroid/view/View;)V
    .registers 3

    .line 48
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;->this$0:Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;

    .line 49
    invoke-direct {p0, p2}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
