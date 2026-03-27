.class public Lcom/keephealth/android/ui/device/adapter/CourseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CourseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;,
        Lcom/keephealth/android/ui/device/adapter/CourseAdapter$DeleCoureListing;
    }
.end annotation


# instance fields
.field private back:Ljava/lang/String;

.field private before:Ljava/lang/String;

.field bytes:[B

.field private context:Landroid/content/Context;

.field private editPosition:I

.field et_course_item:Landroid/widget/EditText;

.field isAftCourseNull:Z

.field private isChangeText:Z

.field isClickDele:Z

.field private isEdit:Z

.field private isHandlingInput:Z

.field private isHandlingInputText:Z

.field mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field maxLengths:I

.field mdeleCoureListing:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$DeleCoureListing;

.field private morOraft:Ljava/lang/String;

.field private textName:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lcom/keephealth/android/persenter/device/CourseViewModel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/persenter/device/CourseViewModel;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->maxLengths:I

    .line 63
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->context:Landroid/content/Context;

    .line 64
    iput p3, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->type:I

    .line 65
    iput-object p4, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->morOraft:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    .line 67
    iput-object p5, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6784\u9020\u51fd\u6570..._mType:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "tty6rt"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Landroid/content/Context;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->textName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->textName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->before:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->back:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isHandlingInputText:Z

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isHandlingInputText:Z

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isChangeText:Z

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isChangeText:Z

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isEdit:Z

    return p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)I
    .registers 1

    .line 45
    iget p0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->editPosition:I

    return p0
.end method

.method static synthetic access$602(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;I)I
    .registers 2

    .line 45
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->editPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->morOraft:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)I
    .registers 1

    .line 45
    iget p0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->type:I

    return p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isHandlingInput:Z

    return p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isHandlingInput:Z

    return p1
.end method


# virtual methods
.method public deleteItemAtPosition(I)V
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->removeItem(I)V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isEdit(Z)V
    .registers 2

    .line 77
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isEdit:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isChangeText:Z

    goto :goto_b

    :cond_8
    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isChangeText:Z

    .line 83
    :goto_b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 10

    .line 115
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;

    .line 116
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->et_course_item:Landroid/widget/EditText;

    .line 117
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->tv_course_id:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;

    invoke-virtual {v3}, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->getCourseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->context:Landroid/content/Context;

    const v2, 0x7f060113

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    const v0, 0x7f06005f

    const v1, 0x7f060058

    const v2, 0x7f060057

    const/4 v3, 0x1

    if-nez p2, :cond_83

    .line 121
    iget-object v4, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->view_item_course:Landroid/view/View;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    iget-boolean v2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isEdit:Z

    if-nez v2, :cond_77

    .line 123
    iget-object v1, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->rela_course:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_d1

    .line 125
    :cond_77
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->rela_course:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_d1

    .line 128
    :cond_83
    rem-int/lit8 v4, p2, 0x2

    if-ne v4, v3, :cond_96

    .line 129
    iget-object v2, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->view_item_course:Landroid/view/View;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->context:Landroid/content/Context;

    const v6, 0x7f060045

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_a3

    :cond_96
    if-nez v4, :cond_a3

    .line 131
    iget-object v5, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->view_item_course:Landroid/view/View;

    iget-object v6, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->context:Landroid/content/Context;

    invoke-static {v6, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 133
    :cond_a3
    :goto_a3
    iget-boolean v2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isEdit:Z

    if-nez v2, :cond_c6

    if-ne v4, v3, :cond_b8

    .line 135
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->rela_course:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->context:Landroid/content/Context;

    const v2, 0x7f060056

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_d1

    :cond_b8
    if-nez v4, :cond_d1

    .line 137
    iget-object v1, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->rela_course:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_d1

    .line 140
    :cond_c6
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->rela_course:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 143
    :cond_d1
    :goto_d1
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->img_course_item:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$1;-><init>(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isEdit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_ec

    .line 156
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->img_course_item:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_f6

    .line 160
    :cond_ec
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->img_course_item:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 164
    :goto_f6
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 179
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$2;-><init>(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 194
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$3;-><init>(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 204
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$4;-><init>(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 89
    iget-object p2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0115

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 91
    new-instance p2, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onDeleCoureListing(Lcom/keephealth/android/ui/device/adapter/CourseAdapter$DeleCoureListing;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mdeleCoureListing:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$DeleCoureListing;

    return-void
.end method

.method public removeItem(I)V
    .registers 5

    if-ltz p1, :cond_3e

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_3e

    :cond_b
    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->isClickDele:Z

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyItemRemoved(I)V

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyItemRangeChanged(II)V

    .line 102
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->morOraft:Ljava/lang/String;

    const-string v0, "mor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 103
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->type:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/persenter/device/CourseViewModel;->deleCurrentDayCourse(IILjava/util/List;)V

    goto :goto_3e

    .line 105
    :cond_34
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mCourseViewModel:Lcom/keephealth/android/persenter/device/CourseViewModel;

    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->type:I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/persenter/device/CourseViewModel;->deleCurrentDayCourse(IILjava/util/List;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    .line 73
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->notifyDataSetChanged()V

    return-void
.end method
