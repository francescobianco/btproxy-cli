.class public Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;
.super Ljava/lang/Object;
.source "GoalSetActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

.field private view7f0904b5:Landroid/view/View;

.field private view7f0904b8:Landroid/view/View;

.field private view7f0904b9:Landroid/view/View;

.field private view7f0904ba:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)V
    .registers 3

    .line 30
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;Landroid/view/View;)V
    .registers 7

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    .line 38
    const-string v0, "field \'ilStep\' and method \'onClick\'"

    const v1, 0x7f0904ba

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    const-string v2, "field \'ilStep\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->ilStep:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->view7f0904ba:Landroid/view/View;

    .line 41
    new-instance v1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-string v0, "field \'relay_exervice\' and method \'onClick\'"

    const v1, 0x7f0904b9

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 48
    const-string v2, "field \'relay_exervice\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->relay_exervice:Landroid/widget/RelativeLayout;

    .line 49
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->view7f0904b9:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const-string v0, "field \'ilCal\' and method \'onClick\'"

    const v1, 0x7f0904b8

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    const-string v2, "field \'ilCal\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->ilCal:Landroid/widget/RelativeLayout;

    .line 58
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->view7f0904b8:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const-string v0, "field \'rela_stand\' and method \'onClick\'"

    const v1, 0x7f0904b5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 66
    const-string v2, "field \'rela_stand\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->rela_stand:Landroid/widget/RelativeLayout;

    .line 67
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->view7f0904b5:Landroid/view/View;

    .line 68
    new-instance v1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const-string v0, "field \'tv_goal_cal\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090742

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_cal:Landroid/widget/TextView;

    .line 75
    const-string v0, "field \'tv_goal_step\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090745

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_step:Landroid/widget/TextView;

    .line 76
    const-string v0, "field \'tv_goal_exercise\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090743

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_exercise:Landroid/widget/TextView;

    .line 77
    const-string v0, "field \'tv_goal_stand\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090744

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_stand:Landroid/widget/TextView;

    .line 78
    const-string v0, "field \'targetControl\'"

    const-class v1, Lcom/keephealth/android/views/CustomToggleButton;

    const v2, 0x7f0905c2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/CustomToggleButton;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->targetControl:Lcom/keephealth/android/views/CustomToggleButton;

    .line 79
    const-string v0, "field \'tv_remind\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090769

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_remind:Landroid/widget/TextView;

    .line 80
    const-string v0, "field \'rlOpen\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090502

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->rlOpen:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    if-eqz v0, :cond_3a

    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->ilStep:Landroid/widget/RelativeLayout;

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->relay_exervice:Landroid/widget/RelativeLayout;

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->ilCal:Landroid/widget/RelativeLayout;

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->rela_stand:Landroid/widget/RelativeLayout;

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_cal:Landroid/widget/TextView;

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_step:Landroid/widget/TextView;

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_exercise:Landroid/widget/TextView;

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_stand:Landroid/widget/TextView;

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->targetControl:Lcom/keephealth/android/views/CustomToggleButton;

    .line 99
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_remind:Landroid/widget/TextView;

    .line 100
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->rlOpen:Landroid/widget/RelativeLayout;

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->view7f0904ba:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->view7f0904ba:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->view7f0904b9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->view7f0904b9:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->view7f0904b8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->view7f0904b8:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->view7f0904b5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;->view7f0904b5:Landroid/view/View;

    return-void

    .line 87
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
