.class public Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DetailBloodGluCoseActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;

.field private view7f090648:Landroid/view/View;

.field private view7f09068a:Landroid/view/View;

.field private view7f0906c1:Landroid/view/View;

.field private view7f09071b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)V
    .registers 3

    .line 36
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;Landroid/view/View;)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;

    .line 45
    const-string v0, "field \'mBarChart\'"

    const-class v1, Lcom/github/mikephil/charting/charts/BarChart;

    const v2, 0x7f0903d8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 46
    const-string v0, "field \'barLine\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09007f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->barLine:Landroid/widget/ImageView;

    .line 47
    const-string v0, "field \'tvDate\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090640

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDate:Landroid/widget/TextView;

    .line 48
    const-string v0, "field \'ivPreDate\' and method \'changePreDay\'"

    const v1, 0x7f0902c5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 49
    const-string v2, "field \'ivPreDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 51
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const-string v0, "field \'ivNextDate\' and method \'changeNextDay\'"

    const v1, 0x7f0902bd

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 58
    const-string v2, "field \'ivNextDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 59
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 60
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const-string v0, "field \'tvTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906f2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvTime:Landroid/widget/TextView;

    .line 67
    const-string v0, "field \'tvValue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09070c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvValue:Landroid/widget/TextView;

    .line 68
    const-string v0, "field \'showData\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09056a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->showData:Landroid/widget/LinearLayout;

    .line 69
    const-string v0, "field \'tvDay\' and method \'onClick\'"

    const v1, 0x7f090648

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 70
    const-string v2, "field \'tvDay\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDay:Landroid/widget/TextView;

    .line 71
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f090648:Landroid/view/View;

    .line 72
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const-string v0, "field \'tvMonth\' and method \'onClick\'"

    const v1, 0x7f09068a

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 79
    const-string v2, "field \'tvMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvMonth:Landroid/widget/TextView;

    .line 80
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 81
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const-string v0, "field \'tvSixMonth\' and method \'onClick\'"

    const v1, 0x7f0906c1

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 88
    const-string v2, "field \'tvSixMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    .line 89
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f0906c1:Landroid/view/View;

    .line 90
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const-string v0, "field \'tvYear\' and method \'onClick\'"

    const v1, 0x7f09071b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 97
    const-string v2, "field \'tvYear\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvYear:Landroid/widget/TextView;

    .line 98
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 99
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const-string v0, "field \'rlAvg\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0904db

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->rlAvg:Landroid/widget/RelativeLayout;

    .line 106
    const-string v0, "field \'tvTagAvg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906e7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvTagAvg:Landroid/widget/TextView;

    .line 107
    const-string v0, "field \'tvAvg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09061d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvAvg:Landroid/widget/TextView;

    .line 108
    const-string v0, "field \'tvTagNew\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvTagNew:Landroid/widget/TextView;

    .line 109
    const-string v0, "field \'tvNewValue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09068f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvNewValue:Landroid/widget/TextView;

    .line 110
    const-string v0, "field \'tvRange\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906a6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvRange:Landroid/widget/TextView;

    .line 111
    const-string v0, "field \'llLenger\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090382

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->llLenger:Landroid/widget/LinearLayout;

    .line 112
    const-string v0, "field \'img_index_dian\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090231

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->img_index_dian:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;

    if-eqz v0, :cond_5a

    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;

    .line 122
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 123
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->barLine:Landroid/widget/ImageView;

    .line 124
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDate:Landroid/widget/TextView;

    .line 125
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 126
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 127
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvTime:Landroid/widget/TextView;

    .line 128
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvValue:Landroid/widget/TextView;

    .line 129
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->showData:Landroid/widget/LinearLayout;

    .line 130
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDay:Landroid/widget/TextView;

    .line 131
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvMonth:Landroid/widget/TextView;

    .line 132
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    .line 133
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvYear:Landroid/widget/TextView;

    .line 134
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->rlAvg:Landroid/widget/RelativeLayout;

    .line 135
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvTagAvg:Landroid/widget/TextView;

    .line 136
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvAvg:Landroid/widget/TextView;

    .line 137
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvTagNew:Landroid/widget/TextView;

    .line 138
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvNewValue:Landroid/widget/TextView;

    .line 139
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvRange:Landroid/widget/TextView;

    .line 140
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->llLenger:Landroid/widget/LinearLayout;

    .line 141
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->img_index_dian:Landroid/widget/ImageView;

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f090648:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f090648:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f0906c1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f0906c1:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity_ViewBinding;->view7f09071b:Landroid/view/View;

    return-void

    .line 119
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
