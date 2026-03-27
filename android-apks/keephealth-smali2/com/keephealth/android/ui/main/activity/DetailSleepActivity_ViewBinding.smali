.class public Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DetailSleepActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;

.field private view7f0902cd:Landroid/view/View;

.field private view7f090484:Landroid/view/View;

.field private view7f090485:Landroid/view/View;

.field private view7f090486:Landroid/view/View;

.field private view7f090487:Landroid/view/View;

.field private view7f090640:Landroid/view/View;

.field private view7f09068a:Landroid/view/View;

.field private view7f090715:Landroid/view/View;

.field private view7f09071b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V
    .registers 3

    .line 45
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;Landroid/view/View;)V
    .registers 7

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;

    .line 53
    const-string v0, "field \'tvWeek\' and method \'onClick\'"

    const v1, 0x7f090715

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 54
    const-string v2, "field \'tvWeek\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvWeek:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090715:Landroid/view/View;

    .line 56
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const-string v0, "field \'tvMonth\' and method \'onClick\'"

    const v1, 0x7f09068a

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 63
    const-string v2, "field \'tvMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvMonth:Landroid/widget/TextView;

    .line 64
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 65
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const-string v0, "field \'tvYear\' and method \'onClick\'"

    const v1, 0x7f09071b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 72
    const-string v2, "field \'tvYear\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvYear:Landroid/widget/TextView;

    .line 73
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 74
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const-string v0, "field \'ivPreDate\' and method \'changePreDay\'"

    const v1, 0x7f0902c5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 81
    const-string v2, "field \'ivPreDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 82
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 83
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const-string v0, "field \'tvDate\' and method \'onClick\'"

    const v1, 0x7f090640

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 90
    const-string v2, "field \'tvDate\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    .line 91
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090640:Landroid/view/View;

    .line 92
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const-string v0, "field \'tvStartSleepH\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906d9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvStartSleepH:Landroid/widget/TextView;

    .line 99
    const-string v0, "field \'tvStartSleepM\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906da

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvStartSleepM:Landroid/widget/TextView;

    .line 100
    const-string v0, "field \'tvDeepSleepH\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09064b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDeepSleepH:Landroid/widget/TextView;

    .line 101
    const-string v0, "field \'tvDeepSleepM\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09064c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDeepSleepM:Landroid/widget/TextView;

    .line 102
    const-string v0, "field \'tvLightSleepH\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09067b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvLightSleepH:Landroid/widget/TextView;

    .line 103
    const-string v0, "field \'tvLightSleepM\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09067c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvLightSleepM:Landroid/widget/TextView;

    .line 104
    const-string v0, "field \'tvWakeSleepH\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090710

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvWakeSleepH:Landroid/widget/TextView;

    .line 105
    const-string v0, "field \'tvWakeSleepM\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090711

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvWakeSleepM:Landroid/widget/TextView;

    .line 106
    const-string v0, "field \'ivNextDate\' and method \'changeNextDay\'"

    const v1, 0x7f0902bd

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 107
    const-string v2, "field \'ivNextDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 108
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 109
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const-string v0, "field \'sleep_BarChart\'"

    const-class v1, Lcom/keephealth/android/views/SleepBarChart;

    const v2, 0x7f090579

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/SleepBarChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->sleep_BarChart:Lcom/keephealth/android/views/SleepBarChart;

    .line 116
    const-string v0, "field \'sleepdetailbar\'"

    const-class v1, Lcom/keephealth/android/views/SleepBarDetailChart;

    const v2, 0x7f09057a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/SleepBarDetailChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->sleepdetailbar:Lcom/keephealth/android/views/SleepBarDetailChart;

    .line 117
    const-string v0, "field \'tvTotal\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906ff

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvTotal:Landroid/widget/TextView;

    const v0, 0x7f090484

    .line 118
    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090484:Landroid/view/View;

    .line 120
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$7;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$7;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090485

    .line 126
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090485:Landroid/view/View;

    .line 128
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$8;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$8;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090486

    .line 134
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 135
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090486:Landroid/view/View;

    .line 136
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$9;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$9;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090487

    .line 142
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 143
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090487:Landroid/view/View;

    .line 144
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$10;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$10;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902cd

    .line 150
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 151
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    .line 152
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$11;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$11;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;

    if-eqz v0, :cond_77

    const/4 v1, 0x0

    .line 165
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;

    .line 167
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvWeek:Landroid/widget/TextView;

    .line 168
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvMonth:Landroid/widget/TextView;

    .line 169
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvYear:Landroid/widget/TextView;

    .line 170
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 171
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    .line 172
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvStartSleepH:Landroid/widget/TextView;

    .line 173
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvStartSleepM:Landroid/widget/TextView;

    .line 174
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDeepSleepH:Landroid/widget/TextView;

    .line 175
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDeepSleepM:Landroid/widget/TextView;

    .line 176
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvLightSleepH:Landroid/widget/TextView;

    .line 177
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvLightSleepM:Landroid/widget/TextView;

    .line 178
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvWakeSleepH:Landroid/widget/TextView;

    .line 179
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvWakeSleepM:Landroid/widget/TextView;

    .line 180
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 181
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->sleep_BarChart:Lcom/keephealth/android/views/SleepBarChart;

    .line 182
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->sleepdetailbar:Lcom/keephealth/android/views/SleepBarDetailChart;

    .line 183
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvTotal:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090715:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090715:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090640:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090640:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090484:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090484:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090485:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090485:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090486:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090486:Landroid/view/View;

    .line 203
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090487:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f090487:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    return-void

    .line 164
    :cond_77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
