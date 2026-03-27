.class public Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/DetailActivity;

.field private view7f09029f:Landroid/view/View;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;

.field private view7f0902cd:Landroid/view/View;

.field private view7f090484:Landroid/view/View;

.field private view7f090485:Landroid/view/View;

.field private view7f090486:Landroid/view/View;

.field private view7f090487:Landroid/view/View;

.field private view7f09068a:Landroid/view/View;

.field private view7f090715:Landroid/view/View;

.field private view7f09071b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailActivity;)V
    .registers 3

    .line 46
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailActivity;Landroid/view/View;)V
    .registers 7

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailActivity;

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

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 56
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity;)V

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

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 65
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 66
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09029f

    .line 72
    const-string v1, "field \'ivBack\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivBack:Landroid/view/View;

    .line 74
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f09029f:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const-string v0, "field \'tvDate\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090640

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvDate:Landroid/widget/TextView;

    .line 82
    const-string v0, "field \'tvDay\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090648

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvDay:Landroid/widget/TextView;

    .line 83
    const-string v0, "field \'tvWeek\' and method \'onClick\'"

    const v1, 0x7f090715

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 84
    const-string v2, "field \'tvWeek\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvWeek:Landroid/widget/TextView;

    .line 85
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090715:Landroid/view/View;

    .line 86
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const-string v0, "field \'tvMonth\' and method \'onClick\'"

    const v1, 0x7f09068a

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 93
    const-string v2, "field \'tvMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvMonth:Landroid/widget/TextView;

    .line 94
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 95
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const-string v0, "field \'tvYear\' and method \'onClick\'"

    const v1, 0x7f09071b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 102
    const-string v2, "field \'tvYear\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvYear:Landroid/widget/TextView;

    .line 103
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 104
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const-string v0, "field \'tvTotalTitle\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090702

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvTotalTitle:Landroid/widget/TextView;

    .line 111
    const-string v0, "field \'tvTotalData\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090700

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvTotalData:Landroid/widget/TextView;

    .line 112
    const-string v0, "field \'tvData2Title\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09063f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2Title:Landroid/widget/TextView;

    .line 113
    const-string v0, "field \'tvData1\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09063d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData1:Landroid/widget/TextView;

    .line 114
    const-string v0, "field \'tvUnit1\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090705

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit1:Landroid/widget/TextView;

    .line 115
    const-string v0, "field \'tvData2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09063e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2:Landroid/widget/TextView;

    .line 116
    const-string v0, "field \'tvUnit2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090706

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit2:Landroid/widget/TextView;

    .line 117
    const-string v0, "field \'detailSportChart\'"

    const-class v1, Lcom/keephealth/android/views/DetailSportChart;

    const v2, 0x7f09012f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/DetailSportChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailSportChart:Lcom/keephealth/android/views/DetailSportChart;

    .line 118
    const-string v0, "field \'tabLayout\'"

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f0905ac

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 119
    const-string v0, "field \'barBg\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f09007e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity;->barBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f090484

    .line 120
    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090484:Landroid/view/View;

    .line 122
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$7;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$7;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090485

    .line 128
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 129
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090485:Landroid/view/View;

    .line 130
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$8;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$8;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090486

    .line 136
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 137
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090486:Landroid/view/View;

    .line 138
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$9;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$9;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090487

    .line 144
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 145
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090487:Landroid/view/View;

    .line 146
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$10;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$10;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902cd

    .line 152
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 153
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    .line 154
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$11;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding$11;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailActivity;

    if-eqz v0, :cond_79

    const/4 v1, 0x0

    .line 167
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailActivity;

    .line 169
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 170
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 171
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivBack:Landroid/view/View;

    .line 172
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvDate:Landroid/widget/TextView;

    .line 173
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvDay:Landroid/widget/TextView;

    .line 174
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvWeek:Landroid/widget/TextView;

    .line 175
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvMonth:Landroid/widget/TextView;

    .line 176
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvYear:Landroid/widget/TextView;

    .line 177
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvTotalTitle:Landroid/widget/TextView;

    .line 178
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvTotalData:Landroid/widget/TextView;

    .line 179
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2Title:Landroid/widget/TextView;

    .line 180
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData1:Landroid/widget/TextView;

    .line 181
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit1:Landroid/widget/TextView;

    .line 182
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2:Landroid/widget/TextView;

    .line 183
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit2:Landroid/widget/TextView;

    .line 184
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailSportChart:Lcom/keephealth/android/views/DetailSportChart;

    .line 185
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 186
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->barBg:Landroid/widget/RelativeLayout;

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f09029f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f09029f:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090715:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090715:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090484:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090484:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090485:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090485:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090486:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090486:Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090487:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f090487:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    return-void

    .line 166
    :cond_79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
