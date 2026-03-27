.class public Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "AlarmListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field alarmCycle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090052
    .end annotation
.end field

.field alarmIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090053
    .end annotation
.end field

.field alarmSwitch:Lcom/keephealth/android/views/CustomToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090059
    .end annotation
.end field

.field alarmTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09005a
    .end annotation
.end field

.field layoutContent:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ff
    .end annotation
.end field

.field layoutDelete:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090322
    .end annotation
.end field

.field layoutItme:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09030f
    .end annotation
.end field

.field slidlayout:Lcom/keephealth/android/views/RvSlideLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09057c
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;Landroid/view/View;)V
    .registers 3

    .line 160
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->this$0:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    .line 161
    invoke-direct {p0, p2}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
