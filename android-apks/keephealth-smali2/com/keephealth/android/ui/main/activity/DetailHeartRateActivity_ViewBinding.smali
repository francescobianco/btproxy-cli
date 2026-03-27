.class public Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DetailHeartRateActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;

.field private view7f0902cd:Landroid/view/View;

.field private view7f090484:Landroid/view/View;

.field private view7f090485:Landroid/view/View;

.field private view7f090486:Landroid/view/View;

.field private view7f090487:Landroid/view/View;

.field private view7f090640:Landroid/view/View;

.field private view7f090648:Landroid/view/View;

.field private view7f09068a:Landroid/view/View;

.field private view7f090715:Landroid/view/View;

.field private view7f09071b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V
    .registers 3

    .line 46
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;Landroid/view/View;)V
    .registers 7

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;

    .line 54
    const-string v0, "field \'ivPreDate\' and method \'changePreDay\'"

    const v1, 0x7f0902c5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    const-string v2, "field \'ivPreDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 56
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const-string v0, "field \'ivNextDate\' and method \'changeNextDay\'"

    const v1, 0x7f0902bd

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 64
    const-string v2, "field \'ivNextDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 65
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 66
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const-string v0, "field \'tvDate\' and method \'onClick\'"

    const v1, 0x7f090640

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    const-string v2, "field \'tvDate\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvDate:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090640:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const-string v0, "field \'tvDay\' and method \'onClick\'"

    const v1, 0x7f090648

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 82
    const-string v2, "field \'tvDay\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvDay:Landroid/widget/TextView;

    .line 83
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090648:Landroid/view/View;

    .line 84
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const-string v0, "field \'tvWeek\' and method \'onClick\'"

    const v1, 0x7f090715

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 91
    const-string v2, "field \'tvWeek\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvWeek:Landroid/widget/TextView;

    .line 92
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090715:Landroid/view/View;

    .line 93
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const-string v0, "field \'tvMonth\' and method \'onClick\'"

    const v1, 0x7f09068a

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 100
    const-string v2, "field \'tvMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvMonth:Landroid/widget/TextView;

    .line 101
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 102
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const-string v0, "field \'tvYear\' and method \'onClick\'"

    const v1, 0x7f09071b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 109
    const-string v2, "field \'tvYear\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvYear:Landroid/widget/TextView;

    .line 110
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 111
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$7;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const-string v0, "field \'tvHrValue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09066f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvHrValue:Landroid/widget/TextView;

    .line 118
    const-string v0, "field \'tvAvHrValue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09061c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvAvHrValue:Landroid/widget/TextView;

    .line 119
    const-string v0, "field \'tvMaxHrValue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090683

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvMaxHrValue:Landroid/widget/TextView;

    .line 120
    const-string v0, "field \'heartRateChart\'"

    const-class v1, Lcom/keephealth/android/views/HeartRateChart;

    const v2, 0x7f0901af

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/HeartRateChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->heartRateChart:Lcom/keephealth/android/views/HeartRateChart;

    const v0, 0x7f090487

    .line 121
    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 122
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090487:Landroid/view/View;

    .line 123
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$8;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$8;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090484

    .line 129
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090484:Landroid/view/View;

    .line 131
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$9;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$9;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090485

    .line 137
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090485:Landroid/view/View;

    .line 139
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$10;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$10;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090486

    .line 145
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 146
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090486:Landroid/view/View;

    .line 147
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$11;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$11;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902cd

    .line 153
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 154
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    .line 155
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$12;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$12;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;

    if-eqz v0, :cond_72

    const/4 v1, 0x0

    .line 168
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;

    .line 170
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 171
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 172
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvDate:Landroid/widget/TextView;

    .line 173
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvDay:Landroid/widget/TextView;

    .line 174
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvWeek:Landroid/widget/TextView;

    .line 175
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvMonth:Landroid/widget/TextView;

    .line 176
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvYear:Landroid/widget/TextView;

    .line 177
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvHrValue:Landroid/widget/TextView;

    .line 178
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvAvHrValue:Landroid/widget/TextView;

    .line 179
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvMaxHrValue:Landroid/widget/TextView;

    .line 180
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->heartRateChart:Lcom/keephealth/android/views/HeartRateChart;

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090640:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090640:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090648:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090648:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090715:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090715:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090487:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090487:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090484:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090484:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090485:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090485:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090486:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f090486:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    return-void

    .line 167
    :cond_72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
