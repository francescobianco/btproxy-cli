.class public Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DetailStreeCoseActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;

.field private view7f090648:Landroid/view/View;

.field private view7f09068a:Landroid/view/View;

.field private view7f0906c1:Landroid/view/View;

.field private view7f09071b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)V
    .registers 3

    .line 36
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Landroid/view/View;)V
    .registers 7

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    .line 44
    const-string v0, "field \'mBarChart\'"

    const-class v1, Lcom/github/mikephil/charting/charts/BarChart;

    const v2, 0x7f0903d8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 45
    const-string v0, "field \'barLine\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09007f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->barLine:Landroid/widget/ImageView;

    .line 46
    const-string v0, "field \'tvDate\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090640

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDate:Landroid/widget/TextView;

    .line 47
    const-string v0, "field \'ivPreDate\' and method \'changePreDay\'"

    const v1, 0x7f0902c5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 48
    const-string v2, "field \'ivPreDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 49
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const-string v0, "field \'ivNextDate\' and method \'changeNextDay\'"

    const v1, 0x7f0902bd

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    const-string v2, "field \'ivNextDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 58
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const-string v0, "field \'tvTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906f2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTime:Landroid/widget/TextView;

    .line 66
    const-string v0, "field \'tvValue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09070c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvValue:Landroid/widget/TextView;

    .line 67
    const-string v0, "field \'showData\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09056a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->showData:Landroid/widget/LinearLayout;

    .line 68
    const-string v0, "field \'tvDay\' and method \'onClick\'"

    const v1, 0x7f090648

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 69
    const-string v2, "field \'tvDay\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDay:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f090648:Landroid/view/View;

    .line 71
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const-string v0, "field \'tvMonth\' and method \'onClick\'"

    const v1, 0x7f09068a

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 78
    const-string v2, "field \'tvMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvMonth:Landroid/widget/TextView;

    .line 79
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 80
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const-string v0, "field \'tvSixMonth\' and method \'onClick\'"

    const v1, 0x7f0906c1

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 87
    const-string v2, "field \'tvSixMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    .line 88
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f0906c1:Landroid/view/View;

    .line 89
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const-string v0, "field \'tvYear\' and method \'onClick\'"

    const v1, 0x7f09071b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 96
    const-string v2, "field \'tvYear\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvYear:Landroid/widget/TextView;

    .line 97
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 98
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const-string v0, "field \'rlAvg\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0904db

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->rlAvg:Landroid/widget/RelativeLayout;

    .line 105
    const-string v0, "field \'tvTagAvg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906e7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTagAvg:Landroid/widget/TextView;

    .line 106
    const-string v0, "field \'tvAvg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09061d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvAvg:Landroid/widget/TextView;

    .line 107
    const-string v0, "field \'tvTagNew\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTagNew:Landroid/widget/TextView;

    .line 108
    const-string v0, "field \'tvNewValue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09068f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvNewValue:Landroid/widget/TextView;

    .line 109
    const-string v0, "field \'tvRange\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906a6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvRange:Landroid/widget/TextView;

    .line 110
    const-string v0, "field \'llLenger\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090382

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->llLenger:Landroid/widget/LinearLayout;

    .line 111
    const-string v0, "field \'img_index_dian\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090231

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->img_index_dian:Landroid/widget/ImageView;

    .line 112
    const-string v0, "field \'tvValueUnit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09070d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvValueUnit:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    if-eqz v0, :cond_5c

    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    .line 122
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 123
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->barLine:Landroid/widget/ImageView;

    .line 124
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDate:Landroid/widget/TextView;

    .line 125
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 126
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 127
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTime:Landroid/widget/TextView;

    .line 128
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvValue:Landroid/widget/TextView;

    .line 129
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->showData:Landroid/widget/LinearLayout;

    .line 130
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvDay:Landroid/widget/TextView;

    .line 131
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvMonth:Landroid/widget/TextView;

    .line 132
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    .line 133
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvYear:Landroid/widget/TextView;

    .line 134
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->rlAvg:Landroid/widget/RelativeLayout;

    .line 135
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTagAvg:Landroid/widget/TextView;

    .line 136
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvAvg:Landroid/widget/TextView;

    .line 137
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvTagNew:Landroid/widget/TextView;

    .line 138
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvNewValue:Landroid/widget/TextView;

    .line 139
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvRange:Landroid/widget/TextView;

    .line 140
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->llLenger:Landroid/widget/LinearLayout;

    .line 141
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->img_index_dian:Landroid/widget/ImageView;

    .line 142
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->tvValueUnit:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f090648:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f090648:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f0906c1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f0906c1:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    return-void

    .line 119
    :cond_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
