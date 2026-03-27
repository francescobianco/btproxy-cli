.class public Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DetailBloodOxygenActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;

.field private view7f0902cd:Landroid/view/View;

.field private view7f090484:Landroid/view/View;

.field private view7f090485:Landroid/view/View;

.field private view7f090486:Landroid/view/View;

.field private view7f090487:Landroid/view/View;

.field private view7f090640:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)V
    .registers 3

    .line 38
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;Landroid/view/View;)V
    .registers 7

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    .line 47
    const-string v0, "field \'tvRangBloodValue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906a5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvRangBloodValue:Landroid/widget/TextView;

    .line 48
    const-string v0, "field \'tvAvgBloodValue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09061e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvAvgBloodValue:Landroid/widget/TextView;

    .line 49
    const-string v0, "field \'bloodDayChart\'"

    const-class v1, Lcom/github/mikephil/charting/charts/LineChart;

    const v2, 0x7f090090

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 50
    const-string v0, "field \'ivPreDate\' and method \'changePreDay\'"

    const v1, 0x7f0902c5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 51
    const-string v2, "field \'ivPreDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const-string v0, "field \'ivNextDate\' and method \'changeNextDay\'"

    const v1, 0x7f0902bd

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 60
    const-string v2, "field \'ivNextDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 61
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 62
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const-string v0, "field \'tvDate\' and method \'onClick\'"

    const v1, 0x7f090640

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 69
    const-string v2, "field \'tvDate\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvDate:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090640:Landroid/view/View;

    .line 71
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const-string v0, "field \'tvDay\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090648

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvDay:Landroid/widget/TextView;

    .line 78
    const-string v0, "field \'tvWeek\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090715

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvWeek:Landroid/widget/TextView;

    .line 79
    const-string v0, "field \'tvMonth\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09068a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvMonth:Landroid/widget/TextView;

    .line 80
    const-string v0, "field \'tvYear\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09071b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvYear:Landroid/widget/TextView;

    const v0, 0x7f090487

    .line 81
    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090487:Landroid/view/View;

    .line 83
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090484

    .line 89
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090484:Landroid/view/View;

    .line 91
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$5;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090485

    .line 97
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090485:Landroid/view/View;

    .line 99
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$6;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090486

    .line 105
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090486:Landroid/view/View;

    .line 107
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$7;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$7;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902cd

    .line 113
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 114
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    .line 115
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$8;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    if-eqz v0, :cond_54

    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    .line 130
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvRangBloodValue:Landroid/widget/TextView;

    .line 131
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvAvgBloodValue:Landroid/widget/TextView;

    .line 132
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 133
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 134
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 135
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvDate:Landroid/widget/TextView;

    .line 136
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvDay:Landroid/widget/TextView;

    .line 137
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvWeek:Landroid/widget/TextView;

    .line 138
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvMonth:Landroid/widget/TextView;

    .line 139
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvYear:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090640:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090640:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090487:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090487:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090484:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090484:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090485:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090485:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090486:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f090486:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    return-void

    .line 127
    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
