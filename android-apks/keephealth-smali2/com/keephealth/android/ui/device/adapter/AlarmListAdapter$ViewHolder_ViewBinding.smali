.class public Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "AlarmListAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;Landroid/view/View;)V
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;

    .line 26
    const-string v0, "field \'alarmTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09005a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmTime:Landroid/widget/TextView;

    .line 27
    const-string v0, "field \'alarmCycle\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090052

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmCycle:Landroid/widget/TextView;

    .line 28
    const-string v0, "field \'alarmSwitch\'"

    const-class v1, Lcom/keephealth/android/views/CustomToggleButton;

    const v2, 0x7f090059

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/CustomToggleButton;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmSwitch:Lcom/keephealth/android/views/CustomToggleButton;

    .line 29
    const-string v0, "field \'layoutDelete\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090322

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->layoutDelete:Landroid/widget/LinearLayout;

    .line 30
    const-string v0, "field \'layoutItme\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09030f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->layoutItme:Landroid/widget/LinearLayout;

    .line 31
    const-string v0, "field \'alarmIcon\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090053

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmIcon:Landroid/widget/ImageView;

    .line 32
    const-string v0, "field \'slidlayout\'"

    const-class v1, Lcom/keephealth/android/views/RvSlideLayout;

    const v2, 0x7f09057c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/RvSlideLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->slidlayout:Lcom/keephealth/android/views/RvSlideLayout;

    .line 33
    const-string v0, "field \'layoutContent\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0902ff

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->layoutContent:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;

    .line 43
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmTime:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmCycle:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmSwitch:Lcom/keephealth/android/views/CustomToggleButton;

    .line 46
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->layoutDelete:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->layoutItme:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmIcon:Landroid/widget/ImageView;

    .line 49
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->slidlayout:Lcom/keephealth/android/views/RvSlideLayout;

    .line 50
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->layoutContent:Landroid/widget/RelativeLayout;

    return-void

    .line 40
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
