.class public Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TempHistoryActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;

.field private view7f0902cd:Landroid/view/View;

.field private view7f090484:Landroid/view/View;

.field private view7f090485:Landroid/view/View;

.field private view7f090486:Landroid/view/View;

.field private view7f090487:Landroid/view/View;

.field private view7f090640:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)V
    .registers 3

    .line 38
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;Landroid/view/View;)V
    .registers 7

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;

    .line 46
    const-string v0, "field \'ivPreDate\' and method \'changePreDay\'"

    const v1, 0x7f0902c5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    const-string v2, "field \'ivPreDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 48
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 49
    new-instance v1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const-string v0, "field \'ivNextDate\' and method \'changeNextDay\'"

    const v1, 0x7f0902bd

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 56
    const-string v2, "field \'ivNextDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 57
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 58
    new-instance v1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const-string v0, "field \'tvDate\' and method \'onClick\'"

    const v1, 0x7f090640

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 65
    const-string v2, "field \'tvDate\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvDate:Landroid/widget/TextView;

    .line 66
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090640:Landroid/view/View;

    .line 67
    new-instance v1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const-string v0, "field \'tvDay\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090648

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvDay:Landroid/widget/TextView;

    .line 74
    const-string v0, "field \'tvWeek\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090715

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvWeek:Landroid/widget/TextView;

    .line 75
    const-string v0, "field \'tvMonth\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09068a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvMonth:Landroid/widget/TextView;

    .line 76
    const-string v0, "field \'tvYear\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09071b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvYear:Landroid/widget/TextView;

    .line 77
    const-string v0, "field \'tvHrValue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09066f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvHrValue:Landroid/widget/TextView;

    .line 78
    const-string v0, "field \'tvAvHrValue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09061c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvAvHrValue:Landroid/widget/TextView;

    .line 79
    const-string v0, "field \'tvMaxHrValue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090683

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvMaxHrValue:Landroid/widget/TextView;

    .line 80
    const-string v0, "field \'heartRateChart\'"

    const-class v1, Lcom/keephealth/android/views/TempChart;

    const v2, 0x7f0901af

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/TempChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->heartRateChart:Lcom/keephealth/android/views/TempChart;

    const v0, 0x7f090487

    .line 81
    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090487:Landroid/view/View;

    .line 83
    new-instance v2, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090484

    .line 89
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090484:Landroid/view/View;

    .line 91
    new-instance v2, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$5;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090485

    .line 97
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090485:Landroid/view/View;

    .line 99
    new-instance v2, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$6;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090486

    .line 105
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090486:Landroid/view/View;

    .line 107
    new-instance v2, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$7;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$7;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902cd

    .line 113
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 114
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    .line 115
    new-instance v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$8;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;

    if-eqz v0, :cond_56

    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;

    .line 130
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 131
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 132
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvDate:Landroid/widget/TextView;

    .line 133
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvDay:Landroid/widget/TextView;

    .line 134
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvWeek:Landroid/widget/TextView;

    .line 135
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvMonth:Landroid/widget/TextView;

    .line 136
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvYear:Landroid/widget/TextView;

    .line 137
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvHrValue:Landroid/widget/TextView;

    .line 138
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvAvHrValue:Landroid/widget/TextView;

    .line 139
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvMaxHrValue:Landroid/widget/TextView;

    .line 140
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->heartRateChart:Lcom/keephealth/android/views/TempChart;

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090640:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090640:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090487:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090487:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090484:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090484:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090485:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090485:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090486:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f090486:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    return-void

    .line 127
    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
