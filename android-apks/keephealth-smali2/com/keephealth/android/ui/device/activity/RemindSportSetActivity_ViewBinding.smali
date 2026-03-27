.class public Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RemindSportSetActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;

.field private view7f090509:Landroid/view/View;

.field private view7f09050a:Landroid/view/View;

.field private view7f09050b:Landroid/view/View;

.field private view7f09050c:Landroid/view/View;

.field private view7f09050d:Landroid/view/View;

.field private view7f09050e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V
    .registers 3

    .line 35
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;Landroid/view/View;)V
    .registers 7

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;

    .line 43
    const-string v0, "field \'remindSportSwitch\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f0904bd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSwitch:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 44
    const-string v0, "field \'remindSportSwitchInvalid\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f0904be

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSwitchInvalid:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 45
    const-string v0, "field \'remindSportSetLl\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0904bb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSetLl:Landroid/widget/LinearLayout;

    .line 46
    const-string v0, "field \'remindSportSetLLinvalid\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0904bc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSetLLinvalid:Landroid/widget/LinearLayout;

    .line 47
    const-string v0, "field \'layoutInvalid\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09030b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->layoutInvalid:Landroid/widget/LinearLayout;

    .line 48
    const-string v0, "field \'layout\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0902fb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->layout:Landroid/widget/LinearLayout;

    .line 49
    const-string v0, "field \'rlRemindDelay\' and method \'SelectRemindDelay\'"

    const v1, 0x7f090509

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    const-string v2, "field \'rlRemindDelay\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->rlRemindDelay:Landroid/widget/RelativeLayout;

    .line 51
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f090509:Landroid/view/View;

    .line 52
    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const-string v0, "field \'tvRemindDelay\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906ad

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindDelay:Landroid/widget/TextView;

    .line 59
    const-string v0, "field \'rlRemindTime\' and method \'SelectRemindTime\'"

    const v1, 0x7f09050e

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 60
    const-string v2, "field \'rlRemindTime\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->rlRemindTime:Landroid/widget/RelativeLayout;

    .line 61
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050e:Landroid/view/View;

    .line 62
    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const-string v0, "field \'tvRemindTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906b2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindTime:Landroid/widget/TextView;

    .line 69
    const-string v0, "field \'tvRemindStartTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906b0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindStartTime:Landroid/widget/TextView;

    .line 70
    const-string v0, "field \'tvRemindEndTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906ae

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindEndTime:Landroid/widget/TextView;

    .line 71
    const-string v0, "field \'tvRemindStartTimeInvalid\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906b1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindStartTimeInvalid:Landroid/widget/TextView;

    .line 72
    const-string v0, "field \'tvRemindEndTimeInvalid\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906af

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindEndTimeInvalid:Landroid/widget/TextView;

    const v0, 0x7f09050c

    .line 73
    const-string v1, "method \'selecStatrTime\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050c:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09050a

    .line 81
    const-string v1, "method \'selecEndTime\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050a:Landroid/view/View;

    .line 83
    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09050d

    .line 89
    const-string v1, "method \'selecStatrTimeInvalid\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050d:Landroid/view/View;

    .line 91
    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09050b

    .line 97
    const-string v1, "method \'selecEndTimeInvalid\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 98
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050b:Landroid/view/View;

    .line 99
    new-instance v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;

    if-eqz v0, :cond_4e

    const/4 v1, 0x0

    .line 112
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;

    .line 114
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSwitch:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 115
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSwitchInvalid:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 116
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSetLl:Landroid/widget/LinearLayout;

    .line 117
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSetLLinvalid:Landroid/widget/LinearLayout;

    .line 118
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->layoutInvalid:Landroid/widget/LinearLayout;

    .line 119
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->layout:Landroid/widget/LinearLayout;

    .line 120
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->rlRemindDelay:Landroid/widget/RelativeLayout;

    .line 121
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindDelay:Landroid/widget/TextView;

    .line 122
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->rlRemindTime:Landroid/widget/RelativeLayout;

    .line 123
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindTime:Landroid/widget/TextView;

    .line 124
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindStartTime:Landroid/widget/TextView;

    .line 125
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindEndTime:Landroid/widget/TextView;

    .line 126
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindStartTimeInvalid:Landroid/widget/TextView;

    .line 127
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindEndTimeInvalid:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f090509:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f090509:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050e:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050c:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050a:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050d:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity_ViewBinding;->view7f09050b:Landroid/view/View;

    return-void

    .line 111
    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
