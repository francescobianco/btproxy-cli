.class public Lcom/keephealth/android/childmodule/DialogView;
.super Landroid/app/Dialog;
.source "DialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/childmodule/DialogView$OnItemClick;,
        Lcom/keephealth/android/childmodule/DialogView$OnOkClick;,
        Lcom/keephealth/android/childmodule/DialogView$OnSelectTime;,
        Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;,
        Lcom/keephealth/android/childmodule/DialogView$ListAdapter;,
        Lcom/keephealth/android/childmodule/DialogView$OnMustName;
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field hour:I

.field private mContext:Landroid/content/Context;

.field mOnCancelCourse:Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;

.field min:I

.field public onItemClick:Lcom/keephealth/android/childmodule/DialogView$OnItemClick;

.field public onMustName:Lcom/keephealth/android/childmodule/DialogView$OnMustName;

.field public onOkClick:Lcom/keephealth/android/childmodule/DialogView$OnOkClick;

.field public onSelectTime:Lcom/keephealth/android/childmodule/DialogView$OnSelectTime;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILcom/keephealth/android/childmodule/DialogView$OnOkClick;)V
    .registers 5

    const p3, 0x7f110119

    .line 62
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    iput-object p4, p0, Lcom/keephealth/android/childmodule/DialogView;->onOkClick:Lcom/keephealth/android/childmodule/DialogView$OnOkClick;

    .line 64
    invoke-direct {p0, p2, p1}, Lcom/keephealth/android/childmodule/DialogView;->showPriceDialog(ILandroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILcom/keephealth/android/childmodule/DialogView$OnOkClick;)V
    .registers 5

    const v0, 0x7f110119

    .line 56
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 57
    iput-object p3, p0, Lcom/keephealth/android/childmodule/DialogView;->onOkClick:Lcom/keephealth/android/childmodule/DialogView$OnOkClick;

    .line 58
    invoke-direct {p0, p2, p1}, Lcom/keephealth/android/childmodule/DialogView;->showGoldDialog(ILandroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 87
    iput-object p1, p0, Lcom/keephealth/android/childmodule/DialogView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const v0, 0x7f110119

    .line 75
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 76
    invoke-direct {p0, p2, p3}, Lcom/keephealth/android/childmodule/DialogView;->showMustNameDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/keephealth/android/childmodule/DialogView$OnItemClick;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/keephealth/android/childmodule/DialogView$OnItemClick;",
            ")V"
        }
    .end annotation

    const v0, 0x7f110119

    .line 47
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    iput-object p1, p0, Lcom/keephealth/android/childmodule/DialogView;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/keephealth/android/childmodule/DialogView;->dataList:Ljava/util/List;

    .line 50
    iput-object p3, p0, Lcom/keephealth/android/childmodule/DialogView;->onItemClick:Lcom/keephealth/android/childmodule/DialogView$OnItemClick;

    .line 51
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/DialogView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/keephealth/android/childmodule/DialogView$OnCancelCourse;)V
    .registers 5

    const v0, 0x7f110119

    .line 81
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 82
    invoke-direct {p0, p3, p2}, Lcom/keephealth/android/childmodule/DialogView;->showCancelCourseDialog(Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;Z)V

    return-void
.end method

.method public constructor <init>(ZLandroid/content/Context;IILcom/keephealth/android/childmodule/DialogView$OnSelectTime;)V
    .registers 7

    const v0, 0x7f110119

    .line 68
    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 69
    iput-object p5, p0, Lcom/keephealth/android/childmodule/DialogView;->onSelectTime:Lcom/keephealth/android/childmodule/DialogView$OnSelectTime;

    .line 70
    invoke-direct {p0, p3, p4, p1}, Lcom/keephealth/android/childmodule/DialogView;->showTimeDialog(IIZ)V

    return-void
.end method

.method private initView()V
    .registers 6

    const v0, 0x7f0c00dd

    .line 112
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 116
    :cond_d
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->setCancelable(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v0, 0x7f090537

    .line 120
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090528

    .line 121
    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 122
    new-instance v2, Lcom/keephealth/android/childmodule/DialogView$ListAdapter;

    const v3, 0x7f0c011b

    iget-object v4, p0, Lcom/keephealth/android/childmodule/DialogView;->dataList:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/keephealth/android/childmodule/DialogView$ListAdapter;-><init>(ILjava/util/List;)V

    .line 123
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 124
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 125
    new-instance v0, Lcom/keephealth/android/childmodule/DialogView$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/childmodule/DialogView$1;-><init>(Lcom/keephealth/android/childmodule/DialogView;)V

    invoke-virtual {v2, v0}, Lcom/keephealth/android/childmodule/DialogView$ListAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 132
    new-instance v0, Lcom/keephealth/android/childmodule/DialogView$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/childmodule/DialogView$2;-><init>(Lcom/keephealth/android/childmodule/DialogView;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->show()V

    return-void
.end method

.method private showCancelCourseDialog(Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;Z)V
    .registers 8

    const v0, 0x7f0c00cd

    .line 318
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->setContentView(I)V

    .line 319
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 322
    :cond_d
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x1

    .line 323
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->setCancelable(Z)V

    .line 324
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v0, 0x7f0906e4

    .line 325
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 326
    new-instance v1, Lcom/keephealth/android/childmodule/DialogView$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/keephealth/android/childmodule/DialogView$11;-><init>(Lcom/keephealth/android/childmodule/DialogView;Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090632

    .line 333
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 334
    new-instance v1, Lcom/keephealth/android/childmodule/DialogView$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/keephealth/android/childmodule/DialogView$12;-><init>(Lcom/keephealth/android/childmodule/DialogView;Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->show()V

    return-void
.end method

.method private showGoldDialog(ILandroid/app/Activity;)V
    .registers 5

    const v0, 0x7f0c00db

    .line 157
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->setContentView(I)V

    .line 158
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->setCancelable(Z)V

    .line 160
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const p2, 0x7f090175

    .line 161
    invoke-virtual {p0, p2}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const v0, 0x7f090762

    .line 162
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090726

    .line 163
    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 164
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView$3;

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/childmodule/DialogView$3;-><init>(Lcom/keephealth/android/childmodule/DialogView;Landroid/widget/EditText;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView$4;

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/childmodule/DialogView$4;-><init>(Lcom/keephealth/android/childmodule/DialogView;Landroid/widget/EditText;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->show()V

    return-void
.end method

.method private showMustNameDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const v0, 0x7f0c00e0

    .line 288
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->setContentView(I)V

    .line 289
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 292
    :cond_d
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x1

    .line 293
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->setCancelable(Z)V

    .line 294
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v0, 0x7f090785

    .line 295
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09072c

    .line 296
    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 297
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090762

    .line 299
    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 300
    new-instance p2, Lcom/keephealth/android/childmodule/DialogView$10;

    invoke-direct {p2, p0}, Lcom/keephealth/android/childmodule/DialogView$10;-><init>(Lcom/keephealth/android/childmodule/DialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->show()V

    return-void
.end method

.method private showPriceDialog(ILandroid/app/Activity;)V
    .registers 7

    const v0, 0x7f0c00db

    .line 188
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->setContentView(I)V

    .line 189
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->setCancelable(Z)V

    .line 191
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v0, 0x7f090175

    .line 192
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f090762

    .line 193
    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090726

    .line 194
    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 195
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090746

    .line 196
    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v3, 0x7f1006dd

    .line 197
    invoke-virtual {p2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView$5;

    invoke-direct {p1, p0, v0}, Lcom/keephealth/android/childmodule/DialogView$5;-><init>(Lcom/keephealth/android/childmodule/DialogView;Landroid/widget/EditText;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView$6;

    invoke-direct {p1, p0, v0}, Lcom/keephealth/android/childmodule/DialogView$6;-><init>(Lcom/keephealth/android/childmodule/DialogView;Landroid/widget/EditText;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->show()V

    return-void
.end method

.method private showTimeDialog(IIZ)V
    .registers 12

    const v0, 0x7f0c00eb

    .line 223
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->setContentView(I)V

    .line 224
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 227
    :cond_d
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x1

    .line 228
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->setCancelable(Z)V

    .line 229
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 230
    iput p1, p0, Lcom/keephealth/android/childmodule/DialogView;->hour:I

    .line 231
    iput p2, p0, Lcom/keephealth/android/childmodule/DialogView;->min:I

    const v1, 0x7f090055

    .line 233
    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/wheel/WheelView;

    .line 234
    new-instance v2, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 v3, 0x17

    const/4 v4, 0x0

    const-string v5, "%02d"

    invoke-direct {v2, v4, v3, v5}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/WheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 235
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/wheel/WheelView;->setCurrentItem(I)V

    .line 236
    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/wheel/WheelView;->setCyclic(Z)V

    .line 237
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/wheel/WheelView;->setCurrentItem(I)V

    const v2, 0x7f090056

    .line 239
    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/wheel/WheelView;

    .line 240
    new-instance v3, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 v6, 0x3b

    invoke-direct {v3, v4, v6, v5}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/wheel/WheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 241
    invoke-virtual {v2, p2}, Lcom/keephealth/android/views/wheel/WheelView;->setCurrentItem(I)V

    .line 242
    invoke-virtual {v2, v0}, Lcom/keephealth/android/views/wheel/WheelView;->setCyclic(Z)V

    .line 243
    invoke-virtual {v2, p2}, Lcom/keephealth/android/views/wheel/WheelView;->setCurrentItem(I)V

    const v3, 0x7f090468

    .line 245
    invoke-virtual {p0, v3}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/wheel/WheelView;

    .line 246
    new-instance v5, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    new-array v6, v0, [Ljava/lang/String;

    const-string v7, ":"

    aput-object v7, v6, v4

    invoke-direct {v5, v6, v0}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Lcom/keephealth/android/views/wheel/WheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 247
    invoke-virtual {v3, v4}, Lcom/keephealth/android/views/wheel/WheelView;->setClickable(Z)V

    .line 248
    invoke-virtual {v3, v4}, Lcom/keephealth/android/views/wheel/WheelView;->setEnabled(Z)V

    const v0, 0x7f09052a

    .line 249
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v3, 0x7f090529

    .line 250
    invoke-virtual {p0, v3}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f090528

    .line 251
    invoke-virtual {p0, v4}, Lcom/keephealth/android/childmodule/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    if-nez p3, :cond_aa

    const/16 p3, 0x8

    .line 253
    invoke-virtual {v3, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 256
    :cond_aa
    new-instance p3, Lcom/keephealth/android/childmodule/DialogView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/keephealth/android/childmodule/DialogView$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/childmodule/DialogView;)V

    invoke-virtual {v1, p3}, Lcom/keephealth/android/views/wheel/WheelView;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedListener;)V

    .line 259
    new-instance p3, Lcom/keephealth/android/childmodule/DialogView$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/keephealth/android/childmodule/DialogView$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/childmodule/DialogView;)V

    invoke-virtual {v2, p3}, Lcom/keephealth/android/views/wheel/WheelView;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedListener;)V

    .line 262
    new-instance p3, Lcom/keephealth/android/childmodule/DialogView$7;

    invoke-direct {p3, p0}, Lcom/keephealth/android/childmodule/DialogView$7;-><init>(Lcom/keephealth/android/childmodule/DialogView;)V

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    new-instance p3, Lcom/keephealth/android/childmodule/DialogView$8;

    invoke-direct {p3, p0, p1, p2}, Lcom/keephealth/android/childmodule/DialogView$8;-><init>(Lcom/keephealth/android/childmodule/DialogView;II)V

    invoke-virtual {v4, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView$9;

    invoke-direct {p1, p0}, Lcom/keephealth/android/childmodule/DialogView$9;-><init>(Lcom/keephealth/android/childmodule/DialogView;)V

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/DialogView;->show()V

    return-void
.end method


# virtual methods
.method synthetic lambda$showTimeDialog$0$com-keephealth-android-childmodule-DialogView(Lcom/keephealth/android/views/wheel/WheelView;II)V
    .registers 4

    .line 257
    iput p3, p0, Lcom/keephealth/android/childmodule/DialogView;->hour:I

    return-void
.end method

.method synthetic lambda$showTimeDialog$1$com-keephealth-android-childmodule-DialogView(Lcom/keephealth/android/views/wheel/WheelView;II)V
    .registers 4

    .line 260
    iput p3, p0, Lcom/keephealth/android/childmodule/DialogView;->min:I

    return-void
.end method

.method public setOnCancelCourseListing(Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;)V
    .registers 2

    .line 315
    iput-object p1, p0, Lcom/keephealth/android/childmodule/DialogView;->mOnCancelCourse:Lcom/keephealth/android/childmodule/DialogView$OnCancelCourse;

    return-void
.end method

.method public setOnItemClick(Lcom/keephealth/android/childmodule/DialogView$OnItemClick;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/keephealth/android/childmodule/DialogView;->onItemClick:Lcom/keephealth/android/childmodule/DialogView$OnItemClick;

    return-void
.end method
