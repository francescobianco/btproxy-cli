.class public Lcom/keephealth/android/util/DialogHelperNew;
.super Ljava/lang/Object;
.source "DialogHelperNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/DialogHelperNew$SetInputCallback;,
        Lcom/keephealth/android/util/DialogHelperNew$IOnclickListener;,
        Lcom/keephealth/android/util/DialogHelperNew$CancelDuiHuanRecord;,
        Lcom/keephealth/android/util/DialogHelperNew$DismissListener;
    }
.end annotation


# static fields
.field private static END_YEAR:I = 0x82a

.field private static START_YEAR:I = 0x780

.field static backCan:D = 4.0

.field static beforeCan:D = 3.0

.field static canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

.field static dialog:Landroid/app/Dialog;

.field static dialogLogin:Landroid/app/Dialog;

.field static dialogRemind:Landroid/app/Dialog;

.field static dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

.field static mCancelDuiHuanRecordl:Lcom/keephealth/android/util/DialogHelperNew$CancelDuiHuanRecord;

.field private static mCurrentDayNew:I

.field private static mCurrentMothNew:I

.field private static mCurrentYear:I

.field private static mCurrentYearNew:I

.field static month_start:I

.field static shareBefore:I

.field private static waitDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 72
    sget v0, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    return v0
.end method

.method static synthetic access$100(ILcom/keephealth/android/views/wheel/NewWheelView;)V
    .registers 2

    .line 72
    invoke-static {p0, p1}, Lcom/keephealth/android/util/DialogHelperNew;->setYearsMonth(ILcom/keephealth/android/views/wheel/NewWheelView;)V

    return-void
.end method

.method static synthetic access$202(I)I
    .registers 1

    .line 72
    sput p0, Lcom/keephealth/android/util/DialogHelperNew;->mCurrentYear:I

    return p0
.end method

.method static synthetic access$300(ILcom/keephealth/android/views/wheel/NewWheelView2;)V
    .registers 2

    .line 72
    invoke-static {p0, p1}, Lcom/keephealth/android/util/DialogHelperNew;->setYearsMonthNew(ILcom/keephealth/android/views/wheel/NewWheelView2;)V

    return-void
.end method

.method static synthetic access$402(I)I
    .registers 1

    .line 72
    sput p0, Lcom/keephealth/android/util/DialogHelperNew;->mCurrentYearNew:I

    return p0
.end method

.method public static amplifyImageDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .registers 6

    .line 735
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 736
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 737
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 738
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2f

    .line 739
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_34

    .line 740
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_34

    .line 742
    :cond_2f
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 745
    :cond_34
    :goto_34
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 746
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 747
    sput-object v1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 750
    :cond_43
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_49

    .line 751
    sput-object v1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 753
    :cond_49
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f110310

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 754
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00d0

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090206

    .line 755
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090203

    .line 756
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 757
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 758
    invoke-virtual {v3, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 759
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 760
    new-instance p1, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda44;

    invoke-direct {p1}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda44;-><init>()V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 762
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 763
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 764
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 765
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 766
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 767
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 768
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 769
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 770
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;
    .registers 6

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buildWaitDialog_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ggrr6"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object p2, Lcom/keephealth/android/util/DialogHelperNew;->waitDialog:Landroid/app/Dialog;

    if-nez p2, :cond_22

    .line 88
    new-instance p2, Landroid/app/Dialog;

    const v0, 0x7f11031d

    invoke-direct {p2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object p2, Lcom/keephealth/android/util/DialogHelperNew;->waitDialog:Landroid/app/Dialog;

    .line 90
    :cond_22
    sget-object p2, Lcom/keephealth/android/util/DialogHelperNew;->waitDialog:Landroid/app/Dialog;

    if-eqz p2, :cond_5b

    .line 91
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00f6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 93
    :try_start_35
    sget-object p2, Lcom/keephealth/android/util/DialogHelperNew;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    if-eqz p0, :cond_5b

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5b

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_5b

    if-eqz p0, :cond_5b

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5b

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0
    :try_end_54
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_54} :catch_5b

    if-nez p0, :cond_5b

    .line 105
    :try_start_56
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_5b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_56 .. :try_end_5b} :catch_5b
    .catch Ljava/lang/NullPointerException; {:try_start_56 .. :try_end_5b} :catch_5b

    .line 127
    :catch_5b
    :cond_5b
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->waitDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static canDissDilalog()V
    .registers 1

    .line 1840
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    if-eqz v0, :cond_f

    .line 1841
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->dismiss()V

    .line 1842
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->cancel()V

    const/4 v0, 0x0

    .line 1843
    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    :cond_f
    return-void
.end method

.method public static checkActivityisDestroyed(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 192
    :cond_4
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_9

    return v0

    .line 195
    :cond_9
    check-cast p0, Landroid/app/Activity;

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_12

    return v0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public static closeWheelDialog()V
    .registers 1

    .line 308
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    if-eqz v0, :cond_a

    .line 309
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->cancel()V

    const/4 v0, 0x0

    .line 310
    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    :cond_a
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;
    .registers 5

    .line 2180
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f11031d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2181
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2182
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 2183
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v1, -0x1

    .line 2184
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2185
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2186
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v0
.end method

.method public static dismissWait()V
    .registers 1

    .line 147
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->waitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    .line 149
    :try_start_4
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 150
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 151
    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->waitDialog:Landroid/app/Dialog;
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_12} :catch_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method

.method public static getConfirmDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;
    .registers 8

    .line 179
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110310

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 180
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 181
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 182
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 185
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, p0

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int p0, v1

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 186
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method public static getInputDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/keephealth/android/util/DialogHelperNew$SetInputCallback;)V
    .registers 9

    .line 205
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110310

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 206
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00da

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090135

    .line 207
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0906f6

    .line 208
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 209
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09016c

    .line 211
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 212
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 213
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 214
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 215
    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 216
    const-string p3, "input_method"

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/InputMethodManager;

    const v2, 0x7f090632

    .line 217
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda13;

    invoke-direct {v3, p3, p2, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda13;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0906e4

    .line 221
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda14;

    invoke-direct {v3, p3, p2, v0, p4}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda14;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;Landroid/app/Dialog;Lcom/keephealth/android/util/DialogHelperNew$SetInputCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 229
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 230
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 233
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double p3, p0

    const-wide v1, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p3, v1

    double-to-int p0, p3

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 234
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 235
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static initSportTargetPicker(Landroid/content/Context;[ILcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;)V
    .registers 11

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 317
    new-instance v0, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    const/16 v1, 0x19

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    const/4 p0, 0x1

    .line 318
    invoke-virtual {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    const/4 v0, 0x0

    .line 319
    aget v1, p1, v0

    invoke-virtual {p2, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    const/4 v1, 0x3

    .line 320
    invoke-virtual {p2, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 321
    invoke-static {}, Lcom/keephealth/android/util/CommonUtil;->getSportTimeList()Ljava/util/List;

    move-result-object v2

    .line 322
    invoke-static {}, Lcom/keephealth/android/util/CommonUtil;->getSportDistanceList()Ljava/util/List;

    move-result-object v3

    .line 323
    invoke-static {}, Lcom/keephealth/android/util/CommonUtil;->getPromptCalorieList()Ljava/util/List;

    move-result-object v4

    .line 324
    aget v0, p1, v0

    if-nez v0, :cond_38

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_43

    :cond_38
    if-ne p0, v0, :cond_3f

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_43

    :cond_3f
    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 325
    :goto_43
    new-instance v5, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    const/16 v6, 0x64

    invoke-direct {v5, v0, v6}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p3, v5}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 326
    invoke-virtual {p3, p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 327
    aget p0, p1, p0

    invoke-virtual {p3, p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    .line 328
    invoke-virtual {p3, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 330
    new-instance p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda24;

    invoke-direct {p0, v2, v3, v4, p3}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda24;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/keephealth/android/views/wheel/NewWheelView;)V

    .line 334
    invoke-virtual {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;)V

    return-void
.end method

.method private static initTimePicker(Landroid/content/Context;[ILcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;)V
    .registers 24

    move-object/from16 v8, p2

    move-object/from16 v7, p3

    move-object/from16 v3, p4

    .line 881
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 882
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x2

    .line 883
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    .line 884
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/4 v0, 0x7

    .line 886
    new-array v0, v0, [Ljava/lang/String;

    const-string v9, "1"

    const/4 v10, 0x0

    aput-object v9, v0, v10

    const-string v9, "3"

    aput-object v9, v0, v1

    const-string v9, "5"

    aput-object v9, v0, v4

    const-string v9, "7"

    const/4 v11, 0x3

    aput-object v9, v0, v11

    const-string v9, "8"

    const/4 v12, 0x4

    aput-object v9, v0, v12

    const-string v9, "10"

    aput-object v9, v0, v6

    const/4 v6, 0x6

    const-string v9, "12"

    aput-object v9, v0, v6

    .line 887
    new-array v6, v12, [Ljava/lang/String;

    const-string v9, "4"

    aput-object v9, v6, v10

    const-string v9, "6"

    aput-object v9, v6, v1

    const-string v9, "9"

    aput-object v9, v6, v4

    const-string v9, "11"

    aput-object v9, v6, v11

    .line 889
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 890
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 892
    new-instance v9, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    sget v12, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    sget v13, Lcom/keephealth/android/util/DialogHelperNew;->END_YEAR:I

    invoke-direct {v9, v12, v13}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 893
    invoke-virtual {v8, v10}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 894
    aget v9, p1, v10

    sget v12, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    sub-int/2addr v9, v12

    invoke-virtual {v8, v9}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    .line 895
    invoke-virtual {v8, v11}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    const/16 v9, 0xc

    .line 899
    new-array v12, v9, [Ljava/lang/String;

    move v13, v10

    .line 900
    :goto_75
    const-string v14, "%02d"

    if-ge v13, v9, :cond_90

    .line 901
    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    add-int/lit8 v16, v13, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v15, v14, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v13

    move/from16 v13, v16

    const/16 v9, 0xc

    goto :goto_75

    .line 903
    :cond_90
    aget v9, p1, v1

    sub-int/2addr v9, v1

    invoke-static {v9, v7}, Lcom/keephealth/android/util/DialogHelperNew;->setYearsMonth(ILcom/keephealth/android/views/wheel/NewWheelView;)V

    .line 904
    invoke-virtual {v7, v10}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 905
    aget v9, p1, v1

    sub-int/2addr v9, v1

    invoke-virtual {v7, v9}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    .line 906
    invoke-virtual {v7, v11}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 909
    invoke-virtual {v3, v10}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 910
    invoke-virtual {v3, v11}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    const/16 v9, 0x1f

    .line 911
    new-array v13, v9, [Ljava/lang/String;

    move v11, v10

    :goto_ad
    if-ge v11, v9, :cond_c5

    .line 913
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    add-int/lit8 v15, v11, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v12, v14, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v13, v11

    move v11, v15

    const/16 v9, 0x1f

    goto :goto_ad

    :cond_c5
    const/16 v9, 0x1e

    .line 915
    new-array v15, v9, [Ljava/lang/String;

    move v11, v10

    :goto_ca
    if-ge v11, v9, :cond_e3

    .line 917
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    add-int/lit8 v16, v11, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v12, v14, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v15, v11

    move/from16 v11, v16

    const/16 v9, 0x1e

    goto :goto_ca

    :cond_e3
    const/16 v9, 0x1d

    .line 919
    new-array v12, v9, [Ljava/lang/String;

    move v11, v10

    :goto_e8
    if-ge v11, v9, :cond_102

    .line 921
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    add-int/lit8 v16, v11, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v14, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v11

    move/from16 v11, v16

    const/16 v9, 0x1d

    const/4 v10, 0x0

    goto :goto_e8

    :cond_102
    const/16 v9, 0x1c

    .line 923
    new-array v11, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    :goto_107
    if-ge v10, v9, :cond_121

    .line 925
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    add-int/lit8 v16, v10, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v9, v14, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v10

    move/from16 v10, v16

    const/4 v1, 0x1

    const/16 v9, 0x1c

    goto :goto_107

    :cond_121
    add-int/lit8 v1, v5, 0x1

    .line 928
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0x19

    if-eqz v9, :cond_138

    .line 930
    new-instance v1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {v1, v13, v10}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_168

    .line 931
    :cond_138
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14b

    .line 932
    new-instance v1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {v1, v15, v10}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_168

    .line 936
    :cond_14b
    rem-int/lit8 v1, v2, 0x4

    if-nez v1, :cond_153

    rem-int/lit8 v1, v2, 0x64

    if-nez v1, :cond_157

    :cond_153
    rem-int/lit16 v1, v2, 0x190

    if-nez v1, :cond_160

    .line 937
    :cond_157
    new-instance v1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {v1, v12, v10}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_168

    .line 940
    :cond_160
    new-instance v1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {v1, v11, v10}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 944
    :goto_168
    aget v1, p1, v4

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    .line 946
    new-instance v4, Lcom/keephealth/android/util/DialogHelperNew$2;

    move-object v9, v4

    move-object/from16 v10, p3

    move-object v1, v11

    move-object v11, v0

    move-object/from16 v16, v12

    move-object/from16 v12, p4

    move-object v14, v6

    move-object/from16 v17, v1

    invoke-direct/range {v9 .. v17}, Lcom/keephealth/android/util/DialogHelperNew$2;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView;Ljava/util/List;Lcom/keephealth/android/views/wheel/NewWheelView;[Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 970
    new-instance v9, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda43;

    move-object v10, v0

    move-object v0, v9

    move v1, v5

    move-object/from16 v3, p4

    move-object v11, v4

    move/from16 v4, v18

    move-object v5, v10

    move-object v10, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda43;-><init>(IILcom/keephealth/android/views/wheel/NewWheelView;ILjava/util/List;Ljava/util/List;Lcom/keephealth/android/views/wheel/NewWheelView;)V

    .line 988
    invoke-virtual {v8, v11}, Lcom/keephealth/android/views/wheel/NewWheelView;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;)V

    .line 989
    invoke-virtual {v10, v9}, Lcom/keephealth/android/views/wheel/NewWheelView;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;)V

    return-void
.end method

.method private static initTimePickerNew(Landroid/content/Context;[ILcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;)V
    .registers 24

    move-object/from16 v8, p2

    move-object/from16 v7, p3

    move-object/from16 v3, p4

    .line 1019
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 1020
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1021
    sput v2, Lcom/keephealth/android/util/DialogHelperNew;->mCurrentYearNew:I

    const/4 v4, 0x2

    .line 1022
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    .line 1023
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/4 v0, 0x7

    .line 1025
    new-array v0, v0, [Ljava/lang/String;

    const-string v9, "1"

    const/4 v10, 0x0

    aput-object v9, v0, v10

    const-string v9, "3"

    aput-object v9, v0, v1

    const-string v9, "5"

    aput-object v9, v0, v4

    const-string v9, "7"

    const/4 v11, 0x3

    aput-object v9, v0, v11

    const-string v9, "8"

    const/4 v12, 0x4

    aput-object v9, v0, v12

    const-string v9, "10"

    aput-object v9, v0, v6

    const/4 v6, 0x6

    const-string v9, "12"

    aput-object v9, v0, v6

    .line 1026
    new-array v6, v12, [Ljava/lang/String;

    const-string v9, "4"

    aput-object v9, v6, v10

    const-string v9, "6"

    aput-object v9, v6, v1

    const-string v9, "9"

    aput-object v9, v6, v4

    const-string v9, "11"

    aput-object v9, v6, v11

    .line 1028
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1029
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1031
    new-instance v9, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    sget v12, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    invoke-direct {v9, v12, v2}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1032
    invoke-virtual {v8, v10}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCyclic(Z)V

    .line 1033
    aget v9, p1, v10

    sget v12, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    sub-int/2addr v9, v12

    invoke-virtual {v8, v9}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    .line 1034
    invoke-virtual {v8, v11}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibleItems(I)V

    const/16 v9, 0xc

    .line 1038
    new-array v12, v9, [Ljava/lang/String;

    move v13, v10

    .line 1039
    :goto_75
    const-string v14, "%02d"

    if-ge v13, v9, :cond_90

    .line 1040
    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    add-int/lit8 v16, v13, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v15, v14, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v13

    move/from16 v13, v16

    const/16 v9, 0xc

    goto :goto_75

    .line 1045
    :cond_90
    invoke-virtual {v3, v10}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCyclic(Z)V

    .line 1046
    invoke-virtual {v3, v11}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibleItems(I)V

    const/16 v9, 0x1f

    .line 1047
    new-array v13, v9, [Ljava/lang/String;

    move v12, v10

    :goto_9b
    if-ge v12, v9, :cond_b4

    .line 1049
    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    add-int/lit8 v16, v12, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v15, v14, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v13, v12

    move/from16 v12, v16

    const/16 v9, 0x1f

    goto :goto_9b

    :cond_b4
    const/16 v9, 0x1e

    .line 1051
    new-array v15, v9, [Ljava/lang/String;

    move v12, v10

    :goto_b9
    if-ge v12, v9, :cond_d3

    .line 1053
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    add-int/lit8 v16, v12, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v14, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v15, v12

    move/from16 v12, v16

    const/16 v9, 0x1e

    const/4 v11, 0x3

    goto :goto_b9

    :cond_d3
    const/16 v9, 0x1d

    .line 1055
    new-array v12, v9, [Ljava/lang/String;

    move v11, v10

    :goto_d8
    if-ge v11, v9, :cond_f2

    .line 1057
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    add-int/lit8 v16, v11, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v14, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v11

    move/from16 v11, v16

    const/16 v9, 0x1d

    const/4 v10, 0x0

    goto :goto_d8

    :cond_f2
    const/16 v9, 0x1c

    .line 1059
    new-array v11, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    :goto_f7
    if-ge v10, v9, :cond_111

    .line 1061
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    add-int/lit8 v16, v10, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v9, v14, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v10

    move/from16 v10, v16

    const/4 v1, 0x1

    const/16 v9, 0x1c

    goto :goto_f7

    :cond_111
    add-int/lit8 v1, v5, 0x1

    .line 1064
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0x19

    if-eqz v9, :cond_128

    .line 1066
    new-instance v1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {v1, v13, v10}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_158

    .line 1067
    :cond_128
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 1068
    new-instance v1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {v1, v15, v10}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_158

    .line 1072
    :cond_13b
    rem-int/lit8 v1, v2, 0x4

    if-nez v1, :cond_143

    rem-int/lit8 v1, v2, 0x64

    if-nez v1, :cond_147

    :cond_143
    rem-int/lit16 v1, v2, 0x190

    if-nez v1, :cond_150

    .line 1073
    :cond_147
    new-instance v1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {v1, v12, v10}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_158

    .line 1076
    :cond_150
    new-instance v1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {v1, v11, v10}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1080
    :goto_158
    aget v1, p1, v4

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    invoke-virtual {v3, v1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    const/4 v1, 0x0

    .line 1081
    aget v10, p1, v1

    aget v14, p1, v9

    aget v4, p1, v4

    invoke-static {v10, v14, v4, v7, v3}, Lcom/keephealth/android/util/DialogHelperNew;->setYearsMonthNew(IIILcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;)V

    .line 1082
    invoke-virtual {v7, v1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCyclic(Z)V

    .line 1083
    aget v1, p1, v9

    sub-int/2addr v1, v9

    invoke-virtual {v7, v1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    const/4 v1, 0x3

    .line 1084
    invoke-virtual {v7, v1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibleItems(I)V

    .line 1086
    new-instance v4, Lcom/keephealth/android/util/DialogHelperNew$3;

    move-object v9, v4

    move-object/from16 v10, p3

    move-object v1, v11

    move-object v11, v0

    move-object/from16 v16, v12

    move-object/from16 v12, p4

    move-object v14, v6

    move-object/from16 v17, v1

    invoke-direct/range {v9 .. v17}, Lcom/keephealth/android/util/DialogHelperNew$3;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView2;Ljava/util/List;Lcom/keephealth/android/views/wheel/NewWheelView2;[Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1110
    new-instance v9, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;

    move-object v10, v0

    move-object v0, v9

    move v1, v5

    move-object/from16 v3, p4

    move-object v11, v4

    move/from16 v4, v18

    move-object v5, v10

    move-object v10, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda47;-><init>(IILcom/keephealth/android/views/wheel/NewWheelView2;ILjava/util/List;Ljava/util/List;Lcom/keephealth/android/views/wheel/NewWheelView2;)V

    .line 1128
    invoke-virtual {v8, v11}, Lcom/keephealth/android/views/wheel/NewWheelView2;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener2;)V

    .line 1129
    invoke-virtual {v10, v9}, Lcom/keephealth/android/views/wheel/NewWheelView2;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener2;)V

    return-void
.end method

.method static synthetic lambda$amplifyImageDialog$13(Landroid/view/View;)V
    .registers 1

    .line 760
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$getInputDialog$0(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 4

    .line 218
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 219
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$getInputDialog$1(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;Landroid/app/Dialog;Lcom/keephealth/android/util/DialogHelperNew$SetInputCallback;Landroid/view/View;)V
    .registers 6

    .line 222
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 223
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 224
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_28

    .line 225
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p3, p0}, Lcom/keephealth/android/util/DialogHelperNew$SetInputCallback;->sure(I)V

    :cond_28
    return-void
.end method

.method static synthetic lambda$initSportTargetPicker$3(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;II)V
    .registers 7

    if-nez p6, :cond_7

    .line 331
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_13

    :cond_7
    const/4 p0, 0x1

    if-ne p0, p6, :cond_f

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_13

    :cond_f
    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 332
    :goto_13
    new-instance p1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    const/16 p2, 0x64

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p3, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    return-void
.end method

.method static synthetic lambda$initTimePicker$18(IILcom/keephealth/android/views/wheel/NewWheelView;ILjava/util/List;Ljava/util/List;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;II)V
    .registers 10

    const/4 p7, 0x1

    add-int/2addr p9, p7

    add-int/2addr p0, p7

    if-ne p0, p9, :cond_16

    .line 973
    sget p0, Lcom/keephealth/android/util/DialogHelperNew;->mCurrentYear:I

    if-ne p1, p0, :cond_16

    .line 974
    new-instance p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    invoke-direct {p0, p7, p3}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    const/4 p0, 0x0

    .line 975
    invoke-virtual {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    goto :goto_76

    .line 976
    :cond_16
    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 977
    new-instance p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 p1, 0x1f

    invoke-direct {p0, p7, p1}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_76

    .line 978
    :cond_2b
    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    .line 979
    new-instance p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 p1, 0x1e

    invoke-direct {p0, p7, p1}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_76

    .line 981
    :cond_40
    invoke-virtual {p6}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p0

    sget p1, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    add-int/2addr p0, p1

    rem-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_56

    invoke-virtual {p6}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p0

    sget p1, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    add-int/2addr p0, p1

    rem-int/lit8 p0, p0, 0x64

    if-nez p0, :cond_61

    :cond_56
    invoke-virtual {p6}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p0

    sget p1, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_6c

    .line 982
    :cond_61
    new-instance p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 p1, 0x1d

    invoke-direct {p0, p7, p1}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_76

    .line 984
    :cond_6c
    new-instance p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 p1, 0x1c

    invoke-direct {p0, p7, p1}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    :goto_76
    return-void
.end method

.method static synthetic lambda$initTimePickerNew$19(IILcom/keephealth/android/views/wheel/NewWheelView2;ILjava/util/List;Ljava/util/List;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;II)V
    .registers 10

    const/4 p7, 0x1

    add-int/2addr p9, p7

    add-int/2addr p0, p7

    if-ne p0, p9, :cond_16

    .line 1113
    sget p0, Lcom/keephealth/android/util/DialogHelperNew;->mCurrentYearNew:I

    if-ne p1, p0, :cond_16

    .line 1114
    new-instance p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    invoke-direct {p0, p7, p3}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    const/4 p0, 0x0

    .line 1115
    invoke-virtual {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    goto :goto_76

    .line 1116
    :cond_16
    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 1117
    new-instance p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 p1, 0x1f

    invoke-direct {p0, p7, p1}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_76

    .line 1118
    :cond_2b
    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    .line 1119
    new-instance p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 p1, 0x1e

    invoke-direct {p0, p7, p1}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_76

    .line 1121
    :cond_40
    invoke-virtual {p6}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getCurrentItem()I

    move-result p0

    sget p1, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    add-int/2addr p0, p1

    rem-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_56

    invoke-virtual {p6}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getCurrentItem()I

    move-result p0

    sget p1, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    add-int/2addr p0, p1

    rem-int/lit8 p0, p0, 0x64

    if-nez p0, :cond_61

    :cond_56
    invoke-virtual {p6}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getCurrentItem()I

    move-result p0

    sget p1, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_6c

    .line 1122
    :cond_61
    new-instance p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 p1, 0x1d

    invoke-direct {p0, p7, p1}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_76

    .line 1124
    :cond_6c
    new-instance p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 p1, 0x1c

    invoke-direct {p0, p7, p1}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    :goto_76
    return-void
.end method

.method static synthetic lambda$showCountryDialog$27(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 1645
    sget-object p2, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 1646
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$showCountryDialog$28(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 1650
    sget-object p2, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 1651
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$showDuihuanReword$46(Lcom/keephealth/android/util/DialogHelperNew$CancelDuiHuanRecord;Landroid/view/View;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 2304
    invoke-interface {p0}, Lcom/keephealth/android/util/DialogHelperNew$CancelDuiHuanRecord;->concanDuiHuan()V

    :cond_5
    return-void
.end method

.method static synthetic lambda$showLoginDialog$24(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 1569
    sget-object p2, Lcom/keephealth/android/util/DialogHelperNew;->dialogLogin:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 1570
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$showLoginDialog$25(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 1574
    sget-object p2, Lcom/keephealth/android/util/DialogHelperNew;->dialogLogin:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 1575
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$showMedalDialog$44(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 2203
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showNoReceiveDialog$33(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1897
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1898
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$showNoReceiveDialog$34(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1903
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1904
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$showNoticeOpenDialog$26(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1614
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1615
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$showRemindDialog$22(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 1503
    sget-object p2, Lcom/keephealth/android/util/DialogHelperNew;->dialogRemind:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 1504
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$showRemindDialog$23(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 1509
    sget-object p2, Lcom/keephealth/android/util/DialogHelperNew;->dialogRemind:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 1510
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$showSetPhoneDialog$29(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1688
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1689
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$showSetPhoneDialog$30(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1694
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1695
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$showSportLowTipDialog$4(Lcom/keephealth/android/util/DialogHelperNew$IOnclickListener;Landroid/content/DialogInterface;I)V
    .registers 3

    if-eqz p0, :cond_5

    .line 364
    invoke-interface {p0}, Lcom/keephealth/android/util/DialogHelperNew$IOnclickListener;->leftButton()V

    :cond_5
    return-void
.end method

.method static synthetic lambda$showSportLowTipDialog$5(Lcom/keephealth/android/util/DialogHelperNew$IOnclickListener;Landroid/content/DialogInterface;I)V
    .registers 3

    if-eqz p0, :cond_8

    .line 369
    invoke-interface {p0}, Lcom/keephealth/android/util/DialogHelperNew$IOnclickListener;->rightButton()V

    const/4 p0, 0x1

    .line 370
    sput-boolean p0, Lcom/keephealth/android/app/AppApplication;->stopSport:Z

    :cond_8
    return-void
.end method

.method static synthetic lambda$showTipsDialog$35(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1928
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1929
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$showUpdateC60DeviceAgain$42(Landroid/view/View;)V
    .registers 1

    const/16 p0, 0x169d

    .line 2152
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 2153
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showUpdateC60DeviceAgain$43(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 2164
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$showUpdateDevice$38(ZLandroid/view/View;)V
    .registers 2

    .line 2015
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_a

    .line 2016
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 2017
    sput-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    :cond_a
    if-eqz p0, :cond_16

    .line 2020
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->finishAll()V

    .line 2021
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_16
    return-void
.end method

.method static synthetic lambda$showUpdateDevice$39(Landroid/app/Activity;Landroid/view/View;)V
    .registers 7

    .line 2030
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_a

    .line 2031
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 2032
    sput-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 2034
    :cond_a
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_c0

    .line 2037
    iget v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->power:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_26

    .line 2038
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f10020a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto/16 :goto_c0

    .line 2050
    :cond_26
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 2051
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_b2

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-nez v0, :cond_b2

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->sendingOrno:Z

    if-eqz v0, :cond_40

    goto/16 :goto_b2

    .line 2054
    :cond_40
    const-string v0, "c60_fail_ota"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2055
    const-string v1, "startsWith(\"T\")"

    const-string v2, "grder33"

    const-string v3, "S"

    const-string v4, "T"

    if-eqz v0, :cond_87

    if-eqz p1, :cond_c0

    .line 2056
    iget-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v0, :cond_c0

    .line 2057
    iget-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 2058
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2060
    const-string v0, "type"

    const-string v1, "mainactivitynew"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2061
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c0

    .line 2062
    :cond_73
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 2063
    const-class p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_c0

    .line 2065
    :cond_81
    const-class p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_c0

    :cond_87
    if-eqz p1, :cond_c0

    .line 2070
    iget-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v0, :cond_c0

    .line 2071
    iget-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 2072
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    const-class p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_c0

    .line 2074
    :cond_9e
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ac

    .line 2075
    const-class p1, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_c0

    .line 2077
    :cond_ac
    const-class p1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_c0

    .line 2052
    :cond_b2
    :goto_b2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f10053c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_c0
    :goto_c0
    return-void
.end method

.method static synthetic lambda$showUpdateDeviceAgain$40(Landroid/view/View;)V
    .registers 1

    .line 2116
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showUpdateDeviceAgain$41(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 2127
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$showUpdateVersion$36(ILandroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .line 1950
    sget-object p2, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    const/4 p2, 0x2

    if-ne p0, p2, :cond_13

    .line 1952
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->finishAll()V

    .line 1953
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_20

    .line 1955
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "VERSION_UPDATE"

    invoke-static {p1, p2, p0}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_20
    return-void
.end method

.method static synthetic lambda$showUpdateVersion$37(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .line 1981
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1982
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1983
    const-string v0, "http://keephealth-zhj.com/keephealth/keephealth_Download.html"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1984
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1985
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$showWebViewDialog$45(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 2230
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWheelBirthDayDialog$14(Lcom/keephealth/android/views/dialog/WheelViewDialog;Landroid/view/View;)V
    .registers 2

    .line 822
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWheelBirthDayDialog$15(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;Landroid/view/View;)V
    .registers 6

    if-eqz p0, :cond_18

    .line 825
    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p1

    sget p5, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    add-int/2addr p1, p5

    .line 826
    invoke-virtual {p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 827
    invoke-virtual {p3}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    .line 828
    invoke-interface {p0, p1, p2, p3}, Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;->onSelect(III)V

    .line 830
    :cond_18
    invoke-virtual {p4}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWheelBirthDayDialogNew$16(Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;Landroid/view/View;)V
    .registers 2

    .line 865
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWheelBirthDayDialogNew$17(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;Landroid/view/View;)V
    .registers 6

    if-eqz p0, :cond_18

    .line 868
    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getCurrentItem()I

    move-result p1

    sget p5, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    add-int/2addr p1, p5

    .line 869
    invoke-virtual {p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getCurrentItem()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 870
    invoke-virtual {p3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getCurrentItem()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    .line 871
    invoke-interface {p0, p1, p2, p3}, Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;->onSelect(III)V

    .line 873
    :cond_18
    invoke-virtual {p4}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWheelBloodDialog$9(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;Landroid/view/View;)V
    .registers 4

    if-eqz p0, :cond_a

    .line 532
    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p1

    const/4 p3, 0x0

    invoke-interface {p0, p1, p3, p3}, Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;->onSelect(III)V

    .line 534
    :cond_a
    invoke-virtual {p2}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWheelDialog$2(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;IILandroid/view/View;)V
    .registers 5

    if-eqz p0, :cond_c

    .line 282
    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, p2

    mul-int/2addr p1, p3

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, p2}, Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;->onSelect(III)V

    .line 284
    :cond_c
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWheelHeightMileDialog$21([Ljava/lang/String;[Ljava/lang/String;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;[Ljava/lang/String;ILcom/keephealth/android/views/wheel/NewWheelView;II)V
    .registers 11

    .line 1379
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p7, p8, 0x1

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p7, "\'"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    array-length p7, p0

    add-int/lit8 p7, p7, -0x1

    aget-object p7, p0, p7

    invoke-virtual {p6, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    const/4 p7, 0x0

    const/16 v0, 0x19

    if-eqz p6, :cond_56

    move p5, p7

    .line 1380
    :goto_24
    array-length p6, p1

    if-ge p5, p6, :cond_3f

    .line 1381
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v1, "\""

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    aput-object p6, p1, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_24

    .line 1383
    :cond_3f
    new-instance p1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {p1, p0, v0}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p2, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1384
    new-instance p0, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {p0, p4, v0}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p3, p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1385
    invoke-virtual {p2, p8}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    .line 1387
    invoke-virtual {p3, p7}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    goto :goto_6f

    .line 1389
    :cond_56
    new-instance p1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {p1, p0, v0}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p2, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1390
    new-instance p0, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {p0, p4, v0}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p3, p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1391
    invoke-static {p5}, Lcom/keephealth/android/util/UnitFormat;->cm2inch(I)[I

    .line 1392
    invoke-virtual {p2, p8}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    .line 1394
    invoke-virtual {p3, p7}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    :goto_6f
    return-void
.end method

.method static synthetic lambda$showWheelSexDialog$6(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;Landroid/view/View;)V
    .registers 4

    if-eqz p0, :cond_a

    .line 413
    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p1

    const/4 p3, 0x0

    invoke-interface {p0, p1, p3, p3}, Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;->onSelect(III)V

    .line 415
    :cond_a
    invoke-virtual {p2}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWheelSportTargetTypeDialog$12(Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;Landroid/view/View;)V
    .registers 5

    if-eqz p0, :cond_e

    .line 692
    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getCurrentItem()I

    move-result p1

    const/4 p4, 0x0

    invoke-virtual {p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getCurrentItem()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;->onSelect(III)V

    .line 694
    :cond_e
    invoke-virtual {p3}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWheelSportTypeDialog$10(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;Landroid/view/View;)V
    .registers 4

    if-eqz p0, :cond_a

    .line 572
    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p1

    const/4 p3, 0x0

    invoke-interface {p0, p1, p3, p3}, Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;->onSelect(III)V

    .line 574
    :cond_a
    invoke-virtual {p2}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWheelSportTypeDialog$11(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;Landroid/view/View;)V
    .registers 4

    if-eqz p0, :cond_a

    .line 613
    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p1

    const/4 p3, 0x0

    invoke-interface {p0, p1, p3, p3}, Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;->onSelect(III)V

    .line 615
    :cond_a
    invoke-virtual {p2}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWheelTaskTypeDialog$8(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;Landroid/view/View;)V
    .registers 4

    if-eqz p0, :cond_a

    .line 492
    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p1

    const/4 p3, 0x0

    invoke-interface {p0, p1, p3, p3}, Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;->onSelect(III)V

    .line 494
    :cond_a
    invoke-virtual {p2}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWheelTimeDialog$20(Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;Landroid/view/View;)V
    .registers 5

    if-eqz p0, :cond_e

    .line 1228
    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getCurrentItem()I

    move-result p1

    const/4 p4, 0x0

    invoke-virtual {p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getCurrentItem()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;->onSelect(III)V

    .line 1230
    :cond_e
    invoke-virtual {p3}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWheelUnitDialog$7(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;Landroid/view/View;)V
    .registers 4

    if-eqz p0, :cond_a

    .line 452
    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p1

    const/4 p3, 0x0

    invoke-interface {p0, p1, p3, p3}, Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;->onSelect(III)V

    .line 454
    :cond_a
    invoke-virtual {p2}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWheelVibrateDialog$47(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;Landroid/view/View;)V
    .registers 4

    if-eqz p0, :cond_a

    .line 2454
    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result p1

    const/4 p3, 0x0

    invoke-interface {p0, p1, p3, p3}, Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;->onSelect(III)V

    .line 2456
    :cond_a
    invoke-virtual {p2}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showXueTangDialog$31(Landroid/view/View;)V
    .registers 1

    .line 1829
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showXueTangDialog$32(Lcom/keephealth/android/views/dialog/WheelViewCanDialog$OnSelectClick;Landroid/view/View;)V
    .registers 6

    if-eqz p0, :cond_c

    .line 1832
    sget-wide v0, Lcom/keephealth/android/util/DialogHelperNew;->beforeCan:D

    sget-wide v2, Lcom/keephealth/android/util/DialogHelperNew;->backCan:D

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog$OnSelectClick;->onSelect(DD)V

    const/4 p0, 0x0

    .line 1833
    sput p0, Lcom/keephealth/android/util/DialogHelperNew;->month_start:I

    .line 1835
    :cond_c
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->dismiss()V

    return-void
.end method

.method private static setYearsMonth(ILcom/keephealth/android/views/wheel/NewWheelView;)V
    .registers 6

    .line 995
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 996
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, p0, :cond_12

    const/4 v3, 0x2

    .line 999
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_14

    :cond_12
    const/16 v0, 0xc

    .line 1008
    :goto_14
    new-instance v3, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    invoke-direct {v3, v1, v0}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    if-ne v2, p0, :cond_22

    const/4 p0, 0x0

    .line 1010
    invoke-virtual {p1, p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    :cond_22
    return-void
.end method

.method private static setYearsMonthNew(IIILcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;)V
    .registers 11

    .line 1159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 1160
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, p0, :cond_12

    .line 1163
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_14

    :cond_12
    const/16 v4, 0xc

    .line 1172
    :goto_14
    new-instance v5, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    invoke-direct {v5, v1, v4}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p3, v5}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    if-ne v2, p0, :cond_3a

    const/4 p0, 0x0

    .line 1174
    invoke-virtual {p3, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    .line 1175
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v1

    if-ne p1, p0, :cond_3a

    .line 1176
    new-instance p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p4, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    sub-int/2addr p2, v1

    .line 1177
    invoke-virtual {p4, p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    :cond_3a
    return-void
.end method

.method private static setYearsMonthNew(ILcom/keephealth/android/views/wheel/NewWheelView2;)V
    .registers 6

    .line 1137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 1138
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, p0, :cond_12

    const/4 v3, 0x2

    .line 1141
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_14

    :cond_12
    const/16 v0, 0xc

    .line 1150
    :goto_14
    new-instance v3, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    invoke-direct {v3, v1, v0}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    if-ne v2, p0, :cond_22

    const/4 p0, 0x0

    .line 1152
    invoke-virtual {p1, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    :cond_22
    return-void
.end method

.method public static showCountryDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .registers 8

    .line 1631
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 1632
    sput-object v1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 1634
    :cond_7
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f110310

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 1636
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00cc

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090135

    .line 1637
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1638
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1639
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_35

    const/16 p1, 0x8

    .line 1640
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_38

    .line 1642
    :cond_35
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_38
    const p1, 0x7f090632

    .line 1644
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda10;

    invoke-direct {v1, p3, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda10;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0906e4

    .line 1648
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1649
    new-instance p3, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda12;

    invoke-direct {p3, p2, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda12;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1653
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1654
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1655
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1656
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 1657
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 1658
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, p0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int p0, v0

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1659
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1661
    :try_start_83
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_88
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_83 .. :try_end_88} :catch_88

    .line 1665
    :catch_88
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static showDuihuanReword(Landroid/app/Activity;ILcom/keephealth/android/util/DialogHelperNew$CancelDuiHuanRecord;)Landroid/app/Dialog;
    .registers 9

    .line 2296
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2297
    sput-object v1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 2299
    :cond_7
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f110310

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 2300
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00ce

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090137

    .line 2301
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda27;

    invoke-direct {v2, p2}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda27;-><init>(Lcom/keephealth/android/util/DialogHelperNew$CancelDuiHuanRecord;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2307
    sget-object p2, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2308
    sget-object p2, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2309
    sget-object p2, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 2310
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2311
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 2312
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, p0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int p0, v2

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2314
    invoke-virtual {p2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2315
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const p0, 0x7f090138

    .line 2316
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const/16 p2, 0x190

    if-eq p1, p2, :cond_171

    packed-switch p1, :pswitch_data_17a

    packed-switch p1, :pswitch_data_18c

    packed-switch p1, :pswitch_data_1aa

    packed-switch p1, :pswitch_data_1ba

    goto/16 :goto_177

    :pswitch_77
    const p1, 0x7f0d0309

    .line 2418
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_7f
    const p1, 0x7f0d0316

    .line 2415
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_87
    const p1, 0x7f0d0304

    .line 2412
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_8f
    const p1, 0x7f0d0308

    .line 2409
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_97
    const p1, 0x7f0d0307

    .line 2406
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_9f
    const p1, 0x7f0d0306

    .line 2403
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_a7
    const p1, 0x7f0d0301

    .line 2400
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_af
    const p1, 0x7f0d031d

    .line 2394
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_b7
    const p1, 0x7f0d031c

    .line 2391
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_bf
    const p1, 0x7f0d0322

    .line 2388
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_c7
    const p1, 0x7f0d031e

    .line 2385
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_cf
    const p1, 0x7f0d031a

    .line 2382
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_d7
    const p1, 0x7f0d0305

    .line 2379
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_df
    const p1, 0x7f0d0318

    .line 2376
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_e7
    const p1, 0x7f0d0320

    .line 2373
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_ef
    const p1, 0x7f0d030f

    .line 2370
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_f7
    const p1, 0x7f0d0312

    .line 2367
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_ff
    const p1, 0x7f0d0313

    .line 2364
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_107
    const p1, 0x7f0d030b

    .line 2361
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_177

    :pswitch_10f
    const p1, 0x7f0d0302

    .line 2358
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_177

    :pswitch_116
    const p1, 0x7f0d0303

    .line 2355
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_177

    :pswitch_11d
    const p1, 0x7f0d0314

    .line 2352
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_177

    :pswitch_124
    const p1, 0x7f0d0311

    .line 2349
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_177

    :pswitch_12b
    const p1, 0x7f0d030d

    .line 2346
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_177

    :pswitch_132
    const p1, 0x7f0d0310

    .line 2343
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_177

    :pswitch_139
    const p1, 0x7f0d030e

    .line 2340
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_177

    :pswitch_140
    const p1, 0x7f0d0321

    .line 2337
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_177

    :pswitch_147
    const p1, 0x7f0d0317

    .line 2334
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_177

    :pswitch_14e
    const p1, 0x7f0d031b

    .line 2331
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_177

    :pswitch_155
    const p1, 0x7f0d030a

    .line 2328
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_177

    :pswitch_15c
    const p1, 0x7f0d030c

    .line 2325
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_177

    :pswitch_163
    const p1, 0x7f0d0315

    .line 2322
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_177

    :pswitch_16a
    const p1, 0x7f0d031f

    .line 2319
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_177

    :cond_171
    const p1, 0x7f0d0319

    .line 2397
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2421
    :goto_177
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_data_17a
    .packed-switch 0x64
        :pswitch_16a
        :pswitch_163
        :pswitch_15c
        :pswitch_155
        :pswitch_14e
        :pswitch_147
        :pswitch_140
    .end packed-switch

    :pswitch_data_18c
    .packed-switch 0xc8
        :pswitch_139
        :pswitch_132
        :pswitch_12b
        :pswitch_124
        :pswitch_11d
        :pswitch_116
        :pswitch_10f
        :pswitch_107
        :pswitch_ff
        :pswitch_f7
        :pswitch_ef
        :pswitch_e7
        :pswitch_df
    .end packed-switch

    :pswitch_data_1aa
    .packed-switch 0x12c
        :pswitch_d7
        :pswitch_cf
        :pswitch_c7
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
    .end packed-switch

    :pswitch_data_1ba
    .packed-switch 0x1f4
        :pswitch_a7
        :pswitch_9f
        :pswitch_97
        :pswitch_8f
        :pswitch_87
        :pswitch_7f
        :pswitch_77
    .end packed-switch
.end method

.method public static showFeedBackPhotoDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 7

    .line 774
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 775
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6b

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_6b

    .line 778
    :cond_11
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_17

    .line 779
    sput-object v2, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 781
    :cond_17
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110310

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 782
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00e3

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 783
    sget-object v1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 784
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 785
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 786
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 787
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 788
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 789
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, p0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int p0, v2

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 790
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 791
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 792
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    return-object p0

    :cond_6b
    :goto_6b
    return-object v2
.end method

.method public static showLoginDialog(Landroid/app/Activity;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .registers 9

    .line 1540
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogLogin:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 1541
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1542
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogLogin:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1543
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2f

    .line 1544
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1545
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogLogin:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_34

    .line 1547
    :cond_2f
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogLogin:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1550
    :cond_34
    :goto_34
    sput-object v1, Lcom/keephealth/android/util/DialogHelperNew;->dialogLogin:Landroid/app/Dialog;

    .line 1552
    :cond_36
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogLogin:Landroid/app/Dialog;

    if-nez v0, :cond_44

    .line 1553
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f110310

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogLogin:Landroid/app/Dialog;

    .line 1555
    :cond_44
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00de

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090135

    .line 1556
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1557
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1558
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_68

    .line 1559
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6b

    .line 1561
    :cond_68
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6b
    const p1, 0x7f090632

    if-nez p2, :cond_81

    .line 1564
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090342

    .line 1565
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1568
    :cond_81
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda17;

    invoke-direct {p2, p4, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda17;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0906e4

    .line 1572
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1573
    new-instance p2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda18;

    invoke-direct {p2, p3, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda18;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1577
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialogLogin:Landroid/app/Dialog;

    if-eqz p1, :cond_aa

    .line 1578
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1579
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialogLogin:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1581
    :cond_aa
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialogLogin:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1582
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 1583
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 1584
    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double p3, p3

    const-wide v0, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p3, v0

    double-to-int p3, p3

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eqz p0, :cond_de

    .line 1585
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_de

    .line 1586
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_de

    .line 1587
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1588
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialogLogin:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 1590
    :cond_de
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialogLogin:Landroid/app/Dialog;

    return-object p0
.end method

.method public static showMedalDialog(Landroid/app/Activity;Landroid/view/View$OnClickListener;Lcom/keephealth/android/ui/mine/bean/MedalData;Z)Landroid/app/Dialog;
    .registers 12

    .line 2191
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110119

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2192
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00df

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090205

    .line 2193
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09020f

    .line 2194
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f090797

    .line 2195
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090798

    .line 2196
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0900bb

    .line 2197
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const/4 v7, 0x0

    if-eqz p3, :cond_48

    .line 2199
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4d

    :cond_48
    const/16 p3, 0x8

    .line 2201
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2203
    :goto_4d
    new-instance p3, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda11;

    invoke-direct {p3, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda11;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2204
    invoke-virtual {v6, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2205
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedleAchieveRes()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2206
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalTitle()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2207
    invoke-virtual {p2}, Lcom/keephealth/android/ui/mine/bean/MedalData;->getMedalTips()I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2208
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2209
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2210
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 2211
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 2212
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 2213
    iget p3, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2214
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2215
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2216
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public static showNoReceiveDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .registers 15

    .line 1850
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110310

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1851
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00cf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090135

    .line 1852
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1853
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1854
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_2d

    .line 1855
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_30

    .line 1857
    :cond_2d
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_30
    const p1, 0x7f0906f6

    .line 1859
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1860
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1861
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 1862
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_49

    .line 1864
    :cond_46
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_49
    const p1, 0x7f0906f8

    .line 1866
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1867
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1868
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 1869
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_62

    .line 1871
    :cond_5f
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_62
    const p1, 0x7f0906f9

    .line 1873
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1874
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1875
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_78

    .line 1876
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7b

    .line 1878
    :cond_78
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7b
    const p1, 0x7f0906fa

    .line 1880
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1881
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1882
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_91

    .line 1883
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_94

    .line 1885
    :cond_91
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_94
    const p1, 0x7f0906fb

    .line 1887
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f090395

    .line 1888
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 1890
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_b0

    .line 1891
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b6

    .line 1893
    :cond_b0
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1894
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b6
    const p1, 0x7f090632

    .line 1896
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda38;

    invoke-direct {p2, v0, p9, v1}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda38;-><init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0906e4

    .line 1900
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1901
    invoke-virtual {p1, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1902
    new-instance p2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda39;

    invoke-direct {p2, v0, p8, v1}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda39;-><init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1906
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1907
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1908
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1909
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 1910
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 1911
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double p3, p0

    const-wide p5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p3, p5

    double-to-int p0, p3

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1912
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1913
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public static showNoticeOpenDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .registers 10

    .line 1595
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110310

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1596
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00e1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090135

    .line 1597
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1598
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1599
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_2d

    .line 1600
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_30

    .line 1602
    :cond_2d
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_30
    const p1, 0x7f0906f6

    .line 1604
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1605
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1606
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 1607
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_49

    .line 1609
    :cond_46
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_49
    const p1, 0x7f09069b

    .line 1611
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1612
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1613
    new-instance p2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda31;

    invoke-direct {p2, v0, p4, v1}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda31;-><init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1617
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1618
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1619
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1620
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 1621
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 1622
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double p3, p0

    const-wide v1, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p3, v1

    double-to-int p0, p3

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1623
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1624
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public static showPhotoDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 8

    .line 703
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6c

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_6c

    .line 706
    :cond_e
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    .line 707
    sput-object v1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 710
    :cond_14
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f110310

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 712
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00e2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 713
    sget-object v2, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 714
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 715
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 717
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 718
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 719
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 720
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, p0

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int p0, v3

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 721
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 724
    :try_start_60
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_65
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_60 .. :try_end_65} :catch_68

    .line 730
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    return-object p0

    :catch_68
    move-exception p0

    .line 726
    invoke-virtual {p0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    :cond_6c
    :goto_6c
    return-object v1
.end method

.method public static showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .registers 10

    .line 1472
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogRemind:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 1473
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1474
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogRemind:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1475
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2f

    .line 1476
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1477
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogRemind:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_34

    .line 1479
    :cond_2f
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogRemind:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1482
    :cond_34
    :goto_34
    sput-object v1, Lcom/keephealth/android/util/DialogHelperNew;->dialogRemind:Landroid/app/Dialog;

    .line 1484
    :cond_36
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogRemind:Landroid/app/Dialog;

    if-nez v0, :cond_44

    .line 1485
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f110310

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogRemind:Landroid/app/Dialog;

    .line 1487
    :cond_44
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00e5

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090135

    .line 1488
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1489
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1490
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_68

    .line 1491
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6b

    .line 1493
    :cond_68
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6b
    const p1, 0x7f0906f6

    .line 1495
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1496
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1497
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_81

    .line 1498
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_84

    .line 1500
    :cond_81
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_84
    const p1, 0x7f090632

    .line 1502
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda33;

    invoke-direct {p2, p5, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda33;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0906e4

    .line 1506
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1507
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    new-instance p2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda42;

    invoke-direct {p2, p4, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda42;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1512
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialogRemind:Landroid/app/Dialog;

    if-eqz p1, :cond_b3

    .line 1513
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1514
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialogRemind:Landroid/app/Dialog;

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1516
    :cond_b3
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialogRemind:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1517
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 1518
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 1519
    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double p3, p3

    const-wide v0, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p3, v0

    double-to-int p3, p3

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eqz p0, :cond_e7

    .line 1520
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_e7

    .line 1521
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_e7

    .line 1522
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1523
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialogRemind:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 1525
    :cond_e7
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialogRemind:Landroid/app/Dialog;

    return-object p0
.end method

.method public static showSetPhoneDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .registers 11

    .line 1670
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110310

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1671
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00ec

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1672
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    const v2, 0x7f090135

    .line 1673
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1674
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1675
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_36

    .line 1676
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_39

    .line 1678
    :cond_36
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_39
    const p1, 0x7f0906f6

    .line 1680
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1681
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1682
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 1683
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_52

    .line 1685
    :cond_4f
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_52
    const p1, 0x7f090632

    .line 1687
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda15;

    invoke-direct {p2, v0, p5, v1}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda15;-><init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0906e4

    .line 1691
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1692
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1693
    new-instance p2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda16;

    invoke-direct {p2, v0, p4, v1}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda16;-><init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1697
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1698
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1699
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1700
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 1701
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 1702
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1703
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1704
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public static showSportLowTipDialog(Landroid/app/Activity;Lcom/keephealth/android/util/DialogHelperNew$IOnclickListener;)Landroid/app/Dialog;
    .registers 4

    .line 357
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setCancelable(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p0

    const v0, 0x7f100462

    .line 358
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p0

    const v0, 0x7f100461

    .line 359
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p0

    const v0, 0x7f06013a

    .line 360
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftTextColor(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p0

    .line 361
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightTextColor(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda28;

    invoke-direct {v0, p1}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda28;-><init>(Lcom/keephealth/android/util/DialogHelperNew$IOnclickListener;)V

    const v1, 0x7f1001d1

    .line 362
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda29;-><init>(Lcom/keephealth/android/util/DialogHelperNew$IOnclickListener;)V

    const p1, 0x7f1004ed

    .line 367
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p0

    .line 372
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p0

    .line 373
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method

.method public static showTipsDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .registers 9

    .line 1919
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110310

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1920
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00f2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090135

    .line 1921
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1922
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0906f6

    .line 1923
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1924
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0906e4

    .line 1925
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1926
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1927
    new-instance p2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda23;

    invoke-direct {p2, v0, p4, v1}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda23;-><init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1931
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1932
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1933
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1934
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 1935
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 1936
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double p3, p0

    const-wide v1, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p3, v1

    double-to-int p0, p3

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1937
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1938
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public static showUpdateC60DeviceAgain(Landroid/app/Activity;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .registers 7

    .line 2142
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2143
    sput-object v1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 2145
    :cond_7
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f110310

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 2146
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00f4

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0906fc

    .line 2147
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2148
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100790

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0906f6

    .line 2149
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2150
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100203

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090632

    .line 2151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda19;

    invoke-direct {v3}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2155
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceUpdate()Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object v2

    if-eqz v2, :cond_bf

    .line 2157
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceUpdate;->isForceUpdate()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_70

    .line 2159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_77

    .line 2161
    :cond_70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_77
    const v1, 0x7f090709

    .line 2163
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda20;

    invoke-direct {v2, p1, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda20;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2166
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2167
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2168
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 2169
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2170
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 2171
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2172
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, p0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    double-to-int p0, v1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2173
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2174
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 2176
    :cond_bf
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static showUpdateDevice(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 8

    .line 2000
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2001
    sput-object v1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 2003
    :cond_7
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f110310

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 2004
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00f4

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2005
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceUpdate()Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object v1

    if-nez v1, :cond_25

    .line 2007
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    return-object p0

    .line 2009
    :cond_25
    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DeviceUpdate;->isForceUpdate()Z

    move-result v1

    const v2, 0x7f0906fc

    .line 2010
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2011
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100790

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0906f6

    .line 2012
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2013
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100202

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090632

    .line 2014
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda45;

    invoke-direct {v4, v1}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda45;-><init>(Z)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    if-eqz v1, :cond_73

    .line 2025
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7a

    .line 2027
    :cond_73
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_7a
    const v1, 0x7f090709

    .line 2029
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda46;

    invoke-direct {v2, p0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda46;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2086
    sget-object v1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2087
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2088
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2089
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2090
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 2091
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2092
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2093
    sget-object v2, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    if-eqz v2, :cond_e0

    if-eqz p0, :cond_e0

    .line 2094
    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->homeIsFinishing:Z

    if-eqz v2, :cond_e0

    .line 2095
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_e0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_e0

    .line 2096
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2097
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_e0

    .line 2098
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 2103
    :cond_e0
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static showUpdateDeviceAgain(Landroid/app/Activity;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .registers 7

    .line 2106
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2107
    sput-object v1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 2109
    :cond_7
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f110310

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 2110
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00f4

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0906fc

    .line 2111
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2112
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100790

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0906f6

    .line 2113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2114
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100203

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090632

    .line 2115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2118
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceUpdate()Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object v2

    if-eqz v2, :cond_bf

    .line 2120
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceUpdate;->isForceUpdate()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_70

    .line 2122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_77

    .line 2124
    :cond_70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_77
    const v1, 0x7f090709

    .line 2126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda2;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2129
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2130
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2131
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 2132
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2133
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 2134
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2135
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, p0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    double-to-int p0, v1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2136
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2137
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 2139
    :cond_bf
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static showUpdateVersion(Landroid/app/Activity;I)Landroid/app/Dialog;
    .registers 7

    .line 1944
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 1945
    sput-object v1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 1947
    :cond_7
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f110310

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    .line 1948
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00f4

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090632

    .line 1949
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda40;

    invoke-direct {v3, p1, p0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda40;-><init>(ILandroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_37

    .line 1959
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_37
    const p1, 0x7f090709

    .line 1961
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda41;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1987
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1988
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1989
    sget-object p1, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1990
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1991
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 1992
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1993
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, p0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    double-to-int p0, v1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1994
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1995
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static showWebViewDialog(ILandroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .registers 12

    .line 2222
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2223
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f11031e

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0907ed

    .line 2224
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    const v3, 0x7f09009a

    .line 2225
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f09009e

    .line 2226
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 2227
    invoke-virtual {v3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2228
    invoke-virtual {v4, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09007d

    .line 2229
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 2230
    new-instance p3, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda37;

    invoke-direct {p3, v1}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda37;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p3, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne p0, v6, :cond_56

    .line 2232
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2233
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2234
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_62

    :cond_56
    const/4 v7, 0x2

    if-ne p0, v7, :cond_62

    .line 2236
    invoke-virtual {v3, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2237
    invoke-virtual {v4, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2238
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2240
    :cond_62
    :goto_62
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 2241
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2242
    new-instance p0, Lcom/keephealth/android/util/DialogHelperNew$8;

    invoke-direct {p0, v1}, Lcom/keephealth/android/util/DialogHelperNew$8;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p2, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v3, "privacypolicy_url"

    invoke-virtual {p0, v3, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_95

    .line 2275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2277
    :cond_95
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2278
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2279
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 2280
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 2281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 2282
    iget p3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, p3

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int p3, v2

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2283
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, p1

    mul-double/2addr v2, v4

    double-to-int p1, v2

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2284
    invoke-virtual {p0, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v1
.end method

.method public static showWheelBirthDayDialog(Landroid/content/Context;[ILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V
    .registers 15

    .line 795
    new-instance v6, Lcom/keephealth/android/views/dialog/WheelViewDialog;

    const v0, 0x7f110119

    invoke-direct {v6, p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0c00f7

    .line 797
    invoke-virtual {v6, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->setContentView(I)V

    .line 798
    invoke-virtual {v6}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x1

    .line 799
    invoke-virtual {v6, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->setCancelable(Z)V

    .line 800
    invoke-virtual {v6}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const v1, 0x7f0907ea

    .line 801
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/keephealth/android/views/wheel/NewWheelView;

    const v1, 0x7f0907eb

    .line 802
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/keephealth/android/views/wheel/NewWheelView;

    const v1, 0x7f0907ec

    .line 803
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/keephealth/android/views/wheel/NewWheelView;

    const v1, 0x7f090786

    .line 804
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 805
    invoke-virtual {v6}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 806
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 807
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 808
    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v8, v8

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 809
    invoke-virtual {v5, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 810
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f100515

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    const-string v1, "GFFD33"

    const-string v5, "\u9009\u62e9\u751f\u65e5"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/keephealth/android/util/DialogHelperNew;->END_YEAR:I

    add-int/lit8 v0, v0, -0x64

    .line 815
    sput v0, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    const/4 v0, 0x0

    .line 817
    invoke-virtual {v2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 818
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 819
    invoke-virtual {v4, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 820
    invoke-static {p0, p1, v2, v3, v4}, Lcom/keephealth/android/util/DialogHelperNew;->initTimePicker(Landroid/content/Context;[ILcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;)V

    const p0, 0x7f0900d4

    .line 821
    invoke-virtual {v6, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda34;

    invoke-direct {p1, v6}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda34;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialog;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x7f090561

    .line 823
    invoke-virtual {v6, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda35;

    move-object v0, p1

    move-object v1, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda35;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 832
    invoke-virtual {v6}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->show()V

    return-void
.end method

.method public static showWheelBirthDayDialogNew(Landroid/content/Context;[ILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V
    .registers 15

    .line 836
    new-instance v6, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;

    const v0, 0x7f110119

    invoke-direct {v6, p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0c00f8

    .line 838
    invoke-virtual {v6, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->setContentView(I)V

    .line 839
    invoke-virtual {v6}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x1

    .line 840
    invoke-virtual {v6, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->setCancelable(Z)V

    .line 841
    invoke-virtual {v6}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const v1, 0x7f0907ea

    .line 842
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/keephealth/android/views/wheel/NewWheelView2;

    const v1, 0x7f0907eb

    .line 843
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/keephealth/android/views/wheel/NewWheelView2;

    const v1, 0x7f0907ec

    .line 844
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/keephealth/android/views/wheel/NewWheelView2;

    const v1, 0x7f090786

    .line 845
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 846
    invoke-virtual {v6}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 847
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 848
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 849
    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v8, v8

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 850
    invoke-virtual {v5, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 851
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f100518

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900d4

    .line 852
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f090561

    .line 853
    invoke-virtual {v6, v7}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0600bb

    .line 854
    invoke-virtual {p0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 855
    invoke-virtual {p0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 857
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcom/keephealth/android/util/DialogHelperNew;->END_YEAR:I

    add-int/lit8 v0, v0, -0x64

    .line 858
    sput v0, Lcom/keephealth/android/util/DialogHelperNew;->START_YEAR:I

    const/4 v0, 0x0

    .line 860
    invoke-virtual {v2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibility(I)V

    .line 861
    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibility(I)V

    .line 862
    invoke-virtual {v4, v0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibility(I)V

    .line 863
    invoke-static {p0, p1, v2, v3, v4}, Lcom/keephealth/android/util/DialogHelperNew;->initTimePickerNew(Landroid/content/Context;[ILcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;)V

    .line 864
    invoke-virtual {v6, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda4;

    invoke-direct {p1, v6}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 866
    invoke-virtual {v6, v7}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda5;

    move-object v0, p1

    move-object v1, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 875
    invoke-virtual {v6}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->show()V

    return-void
.end method

.method public static showWheelBloodDialog(Ljava/lang/String;Landroid/content/Context;I[Ljava/lang/String;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Lcom/keephealth/android/views/dialog/WheelViewDialog;
    .registers 12

    .line 503
    new-instance v0, Lcom/keephealth/android/views/dialog/WheelViewDialog;

    invoke-direct {v0, p1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;-><init>(Landroid/content/Context;)V

    .line 504
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 507
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 511
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 512
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 513
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 514
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object v1

    .line 515
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object p0

    const/4 v1, 0x0

    .line 517
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAddZero(Z)V

    .line 518
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    const/4 v2, 0x3

    .line 519
    invoke-virtual {p0, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 520
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 521
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_2()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 522
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_3()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 524
    new-instance v1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    const/16 v2, 0x19

    invoke-direct {v1, p3, v2}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 525
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    const p2, 0x7f090561

    .line 526
    invoke-virtual {v0, p2}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0900d4

    .line 527
    invoke-virtual {v0, p3}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f060040

    .line 528
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 529
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    new-instance p1, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda32;

    invoke-direct {p1, p4, p0, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda32;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->show()V

    return-object v0

    :cond_8b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static showWheelDialog(ILandroid/content/Context;IIIILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V
    .registers 12

    .line 261
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    if-nez v0, :cond_b

    .line 262
    new-instance v0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    invoke-direct {v0, p1}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    .line 264
    :cond_b
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v0

    const/4 v1, 0x0

    .line 265
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    const/4 v2, 0x3

    .line 266
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 267
    sget-object v3, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    invoke-virtual {v3}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->getWv_2()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 268
    sget-object v3, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    invoke-virtual {v3}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->getWv_3()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    if-le p2, p4, :cond_30

    move p2, p4

    :cond_30
    if-ge p2, p3, :cond_33

    move p2, p3

    .line 277
    :cond_33
    new-instance v3, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    invoke-direct {v3, p3, p4, p5}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(III)V

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    sub-int/2addr p2, p3

    .line 278
    invoke-virtual {v0, p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    .line 279
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAddZero(Z)V

    .line 280
    sget-object p2, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    const p4, 0x7f090561

    invoke-virtual {p2, p4}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p4, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda30;

    invoke-direct {p4, p6, v0, p3, p5}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda30;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;II)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    if-ne p0, p2, :cond_80

    .line 288
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100516

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->getTitle2()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100780

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_102

    :cond_80
    const/4 p2, 0x2

    if-ne p0, p2, :cond_ac

    .line 292
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100522

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->getTitle2()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100785

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_102

    :cond_ac
    if-ne p0, v2, :cond_d7

    .line 296
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f10051b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->getTitle2()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100784

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_102

    :cond_d7
    const/4 p2, 0x4

    if-ne p0, p2, :cond_102

    .line 300
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100520

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->getTitle2()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10076e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :cond_102
    :goto_102
    sget-object p0, Lcom/keephealth/android/util/DialogHelperNew;->dialogWhell:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->show()V

    return-void
.end method

.method public static showWheelDialog(ILandroid/content/Context;IIILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V
    .registers 13

    const/4 v5, 0x1

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 250
    invoke-static/range {v0 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelDialog(ILandroid/content/Context;IIIILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V

    return-void
.end method

.method public static showWheelHeightDialog(Landroid/app/Activity;ILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Landroid/app/Dialog;
    .registers 6

    const/16 v0, 0xe6

    .line 1262
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v1, 0x28

    .line 1263
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1264
    new-instance v2, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    invoke-direct {v2, v1, v0}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    sub-int/2addr p1, v1

    .line 1266
    invoke-static {p0, p1, v2, p2, v1}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelViewDialog(Landroid/app/Activity;ILcom/keephealth/android/views/wheel/WheelAdapter;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static showWheelHeightMileDialog(Landroid/content/Context;ILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V
    .registers 14

    .line 1345
    new-instance v0, Lcom/keephealth/android/views/dialog/WheelViewDialog;

    const v1, 0x7f110119

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0907ea

    .line 1346
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/wheel/NewWheelView;

    const v2, 0x7f0907eb

    .line 1347
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/keephealth/android/views/wheel/NewWheelView;

    const/4 v2, 0x0

    .line 1348
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    const/4 v3, 0x3

    .line 1349
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 1350
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 1351
    invoke-virtual {v6, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 1352
    invoke-virtual {v6, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 1353
    invoke-virtual {v6, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 1354
    invoke-virtual {v0, p2}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->setOnSelectClick(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V

    const/16 p2, 0x8

    .line 1355
    new-array v4, p2, [Ljava/lang/String;

    move v5, v2

    :goto_37
    if-ge v5, p2, :cond_52

    .line 1357
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move v5, v8

    goto :goto_37

    :cond_52
    const/16 v5, 0xc

    .line 1359
    new-array v7, v5, [Ljava/lang/String;

    move v8, v2

    .line 1360
    :goto_57
    const-string v9, "\""

    if-ge v8, v5, :cond_71

    .line 1361
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_57

    .line 1363
    :cond_71
    new-array v5, v3, [Ljava/lang/String;

    move v8, v2

    :goto_74
    if-ge v8, v3, :cond_8c

    .line 1365
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_74

    .line 1367
    :cond_8c
    new-instance v3, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    const/16 v8, 0x19

    invoke-direct {v3, v4, v8}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1368
    new-instance v3, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {v3, v7, v8}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v6, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1370
    invoke-static {p1}, Lcom/keephealth/android/util/UnitFormat;->inch2inch(I)[I

    move-result-object v3

    .line 1372
    aget v9, v3, v2

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v1, v9}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    .line 1373
    aget v2, v3, v2

    if-ne v2, p2, :cond_b5

    .line 1374
    new-instance p2, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-direct {p2, v5, v8}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v6, p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1376
    :cond_b5
    aget p2, v3, v10

    invoke-virtual {v6, p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    .line 1378
    new-instance p2, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;

    move-object v2, p2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v1

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;-><init>([Ljava/lang/String;[Ljava/lang/String;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;[Ljava/lang/String;I)V

    invoke-virtual {v1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;)V

    .line 1398
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1399
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 1400
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1401
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1402
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1403
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object p1

    .line 1404
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f10051c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1405
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->show()V

    return-void
.end method

.method public static showWheelIntDialog(Landroid/app/Activity;ILjava/lang/String;IILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Landroid/app/Dialog;
    .registers 12

    .line 1245
    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1246
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1247
    new-instance v2, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    invoke-direct {v2, p3, p4}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    sub-int v1, p1, p3

    move-object v0, p0

    move-object v3, p5

    move v4, p3

    move-object v5, p2

    .line 1249
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelViewDialog(Landroid/app/Activity;ILcom/keephealth/android/views/wheel/WheelAdapter;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;ILjava/lang/String;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static showWheelRemindDelayDialog(Landroid/app/Activity;ILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Landroid/app/Dialog;
    .registers 7

    const/16 v0, 0xff

    .line 1461
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x1

    .line 1462
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1463
    new-instance v2, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v0, v3}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(III)V

    .line 1464
    div-int/2addr p1, v3

    sub-int/2addr p1, v1

    .line 1465
    invoke-static {p0, p1, v2, p2, v1}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelViewDialogTimeInterval(Landroid/app/Activity;ILcom/keephealth/android/views/wheel/WheelAdapter;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static showWheelSexDialog(Landroid/content/Context;ILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V
    .registers 10

    .line 385
    new-instance v0, Lcom/keephealth/android/views/dialog/WheelViewDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;-><init>(Landroid/content/Context;)V

    .line 390
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 391
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 393
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 394
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 395
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object v1

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10051f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v1

    const/4 v2, 0x0

    .line 401
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAddZero(Z)V

    .line 402
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    const/4 v3, 0x3

    .line 403
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 404
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 405
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_2()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 406
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_3()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f030010

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 409
    new-instance v2, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    const/16 v3, 0x19

    invoke-direct {v2, p0, v3}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 410
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    const p0, 0x7f090561

    .line 411
    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda22;

    invoke-direct {p1, p2, v1, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda22;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->show()V

    return-void
.end method

.method public static showWheelSportTargetTypeDialog(Landroid/content/Context;I[Ljava/lang/String;ILjava/util/List;ILcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;)Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;",
            ")",
            "Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;"
        }
    .end annotation

    .line 626
    new-instance v0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;-><init>(Landroid/content/Context;)V

    .line 627
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_af

    .line 630
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 634
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 635
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 636
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 637
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getTitle1()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    .line 638
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView2;

    move-result-object v1

    const/4 v3, 0x0

    .line 640
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAddZero(Z)V

    .line 641
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibility(I)V

    const/4 v4, 0x5

    .line 642
    invoke-virtual {v1, v4}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibleItems(I)V

    .line 643
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCyclic(Z)V

    .line 644
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getWv_3()Lcom/keephealth/android/views/wheel/NewWheelView2;

    move-result-object v5

    .line 645
    invoke-virtual {v5, v3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAddZero(Z)V

    .line 646
    invoke-virtual {v5, v3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibility(I)V

    .line 647
    invoke-virtual {v5, v4}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibleItems(I)V

    .line 648
    invoke-virtual {v5, v3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCyclic(Z)V

    .line 649
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getWv_2()Lcom/keephealth/android/views/wheel/NewWheelView2;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibility(I)V

    .line 651
    new-instance v2, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    const/16 v3, 0x19

    invoke-direct {v2, p2, v3}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 652
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    .line 653
    new-instance p2, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/16 v2, 0x64

    invoke-direct {p2, p1, v2}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v5, p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 654
    invoke-virtual {v5, p3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    const p1, 0x7f090561

    .line 655
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0900d4

    .line 656
    invoke-virtual {v0, p2}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f060040

    .line 657
    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 658
    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 660
    new-instance p0, Lcom/keephealth/android/util/DialogHelperNew$1;

    invoke-direct {p0, v5, p4, p5}, Lcom/keephealth/android/util/DialogHelperNew$1;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView2;Ljava/util/List;I)V

    invoke-virtual {v1, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener2;)V

    .line 690
    new-instance p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda0;

    invoke-direct {p0, p6, v1, v5, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->show()V

    return-object v0

    :cond_af
    const/4 p0, 0x0

    return-object p0
.end method

.method public static showWheelSportTypeDialog(Landroid/content/Context;I[Ljava/lang/String;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Lcom/keephealth/android/views/dialog/WheelViewDialog;
    .registers 11

    .line 543
    new-instance v0, Lcom/keephealth/android/views/dialog/WheelViewDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;-><init>(Landroid/content/Context;)V

    .line 544
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 547
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 552
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 553
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 554
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    .line 555
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v1

    const/4 v3, 0x0

    .line 557
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAddZero(Z)V

    .line 558
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    const/4 v3, 0x5

    .line 559
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    const/4 v3, 0x1

    .line 560
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 561
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_2()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 562
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_3()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 564
    new-instance v2, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    const/16 v3, 0x19

    invoke-direct {v2, p2, v3}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 565
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    const p1, 0x7f090561

    .line 566
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0900d4

    .line 567
    invoke-virtual {v0, p2}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v2, 0x7f060040

    .line 568
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 569
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 570
    new-instance p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda21;

    invoke-direct {p0, p3, v1, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda21;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->show()V

    return-object v0

    :cond_8c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static showWheelSportTypeDialog(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Lcom/keephealth/android/views/dialog/WheelViewDialog;
    .registers 12

    .line 583
    new-instance v0, Lcom/keephealth/android/views/dialog/WheelViewDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;-><init>(Landroid/content/Context;)V

    .line 584
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_8e

    .line 587
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 591
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 592
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 593
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 594
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    .line 595
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object p3

    .line 598
    invoke-virtual {p3, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAddZero(Z)V

    .line 599
    invoke-virtual {p3, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    const/4 v1, 0x3

    .line 600
    invoke-virtual {p3, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 601
    invoke-virtual {p3, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 602
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_2()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 603
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_3()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 605
    new-instance v1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    const/16 v2, 0x19

    invoke-direct {v1, p2, v2}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p3, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 606
    invoke-virtual {p3, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    const p1, 0x7f090561

    .line 607
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0900d4

    .line 608
    invoke-virtual {v0, p2}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f060040

    .line 609
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 610
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 611
    new-instance p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda36;

    invoke-direct {p0, p4, p3, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda36;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->show()V

    return-object v0

    :cond_8e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static showWheelTaskTypeDialog(Landroid/content/Context;I[Ljava/lang/String;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Lcom/keephealth/android/views/dialog/WheelViewDialog;
    .registers 11

    .line 463
    new-instance v0, Lcom/keephealth/android/views/dialog/WheelViewDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;-><init>(Landroid/content/Context;)V

    .line 464
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 467
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 472
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 473
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 474
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    .line 475
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v1

    const/4 v3, 0x0

    .line 477
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAddZero(Z)V

    .line 478
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    const/4 v4, 0x3

    .line 479
    invoke-virtual {v1, v4}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 480
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 481
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_2()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 482
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_3()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 484
    new-instance v2, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    const/16 v3, 0x19

    invoke-direct {v2, p2, v3}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 485
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    const p1, 0x7f090561

    .line 486
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0900d4

    .line 487
    invoke-virtual {v0, p2}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v2, 0x7f060040

    .line 488
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 489
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 490
    new-instance p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda9;

    invoke-direct {p0, p3, v1, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda9;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->show()V

    return-object v0

    :cond_8b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static showWheelTimeDialog(Landroid/content/Context;I[Ljava/lang/String;I[Ljava/lang/String;ILcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;)Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;
    .registers 13

    .line 1185
    new-instance p5, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;

    invoke-direct {p5, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;-><init>(Landroid/content/Context;)V

    .line 1186
    invoke-virtual {p5}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_a9

    .line 1189
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1193
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1194
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1195
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1196
    invoke-virtual {p5}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getTitle1()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    .line 1197
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1198
    invoke-virtual {p5}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView2;

    move-result-object v0

    const/4 v2, 0x0

    .line 1199
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAddZero(Z)V

    .line 1200
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibility(I)V

    const/4 v3, 0x5

    .line 1201
    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibleItems(I)V

    .line 1202
    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCyclic(Z)V

    .line 1203
    invoke-virtual {p5}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getWv_3()Lcom/keephealth/android/views/wheel/NewWheelView2;

    move-result-object v4

    .line 1204
    invoke-virtual {v4, v2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAddZero(Z)V

    .line 1205
    invoke-virtual {v4, v2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibility(I)V

    .line 1206
    invoke-virtual {v4, v3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibleItems(I)V

    .line 1207
    invoke-virtual {v4, v2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCyclic(Z)V

    .line 1208
    invoke-virtual {p5}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getWv_2()Lcom/keephealth/android/views/wheel/NewWheelView2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setVisibility(I)V

    .line 1210
    new-instance v1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    const/16 v2, 0x18

    invoke-direct {v1, p2, v2}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1211
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    .line 1212
    new-instance p1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    const/16 p2, 0x3c

    invoke-direct {p1, p4, p2}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v4, p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1213
    invoke-virtual {v4, p3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(I)V

    const p1, 0x7f090561

    .line 1214
    invoke-virtual {p5, p1}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0900d4

    .line 1215
    invoke-virtual {p5, p2}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0600bb

    .line 1216
    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1217
    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1219
    new-instance p0, Lcom/keephealth/android/util/DialogHelperNew$4;

    invoke-direct {p0}, Lcom/keephealth/android/util/DialogHelperNew$4;-><init>()V

    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener2;)V

    .line 1226
    new-instance p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda7;

    invoke-direct {p0, p6, v0, v4, p5}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda7;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1232
    invoke-virtual {p5}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->show()V

    return-object p5

    :cond_a9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static showWheelUnitDialog(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Lcom/keephealth/android/views/dialog/WheelViewDialog;
    .registers 12

    .line 423
    new-instance v0, Lcom/keephealth/android/views/dialog/WheelViewDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;-><init>(Landroid/content/Context;)V

    .line 424
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 427
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 432
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 433
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 434
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object v1

    .line 435
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object p1

    const/4 v1, 0x0

    .line 437
    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAddZero(Z)V

    .line 438
    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    const/4 v2, 0x3

    .line 439
    invoke-virtual {p1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 440
    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 441
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_2()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 442
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_3()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 444
    new-instance v1, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    const/16 v2, 0x19

    invoke-direct {v1, p3, v2}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 445
    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    const p2, 0x7f090561

    .line 446
    invoke-virtual {v0, p2}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0900d4

    .line 447
    invoke-virtual {v0, p3}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f060040

    .line 448
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    new-instance p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda8;

    invoke-direct {p0, p4, p1, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda8;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;)V

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->show()V

    return-object v0

    :cond_8b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static showWheelVibrateDialog(Landroid/content/Context;ILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V
    .registers 10

    .line 2426
    new-instance v0, Lcom/keephealth/android/views/dialog/WheelViewDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;-><init>(Landroid/content/Context;)V

    .line 2431
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2432
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2433
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 2434
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2435
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2436
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getTitle1()Landroid/widget/TextView;

    .line 2439
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v1

    const/4 v2, 0x0

    .line 2442
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAddZero(Z)V

    .line 2443
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    const/4 v3, 0x3

    .line 2444
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 2445
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 2446
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_2()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 2447
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_3()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 2449
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f030011

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 2450
    new-instance v2, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    const/16 v3, 0x19

    invoke-direct {v2, p0, v3}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 2451
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    const p0, 0x7f090561

    .line 2452
    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2, v1, v0}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/dialog/WheelViewDialog;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2458
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->show()V

    return-void
.end method

.method private static showWheelViewDialog(Landroid/app/Activity;ILcom/keephealth/android/views/wheel/WheelAdapter;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;I)Landroid/app/Dialog;
    .registers 10

    .line 1269
    new-instance v0, Lcom/keephealth/android/views/dialog/WheelViewDialog;

    const v1, 0x7f110119

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;-><init>(Landroid/content/Context;I)V

    .line 1270
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v1

    const/4 v2, 0x0

    .line 1271
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAddZero(Z)V

    .line 1272
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    const/4 v3, 0x3

    .line 1273
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 1274
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 1275
    invoke-virtual {v1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1276
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    .line 1278
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1279
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 1280
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1281
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1282
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1283
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object p1

    .line 1284
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f10051c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    invoke-virtual {v0, p3}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->setOnSelectClick(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V

    .line 1287
    invoke-virtual {v0, p4}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->setStartOffset1(I)V

    .line 1288
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->show()V

    return-object v0
.end method

.method private static showWheelViewDialog(Landroid/app/Activity;ILcom/keephealth/android/views/wheel/WheelAdapter;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;ILjava/lang/String;)Landroid/app/Dialog;
    .registers 11

    .line 1292
    new-instance v0, Lcom/keephealth/android/views/dialog/WheelViewDialog;

    const v1, 0x7f110119

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;-><init>(Landroid/content/Context;I)V

    .line 1293
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v1

    const/4 v2, 0x0

    .line 1294
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAddZero(Z)V

    .line 1295
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    const/4 v3, 0x3

    .line 1296
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 1297
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 1298
    invoke-virtual {v1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1299
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    .line 1301
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1302
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 1303
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 1304
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, p0

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v1, v3

    double-to-int p0, v1

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1305
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1306
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object p0

    .line 1307
    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    invoke-virtual {v0, p3}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->setOnSelectClick(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V

    .line 1310
    invoke-virtual {v0, p4}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->setStartOffset1(I)V

    .line 1311
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->show()V

    return-object v0
.end method

.method private static showWheelViewDialogTimeInterval(Landroid/app/Activity;ILcom/keephealth/android/views/wheel/WheelAdapter;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;I)Landroid/app/Dialog;
    .registers 10

    .line 1316
    new-instance v0, Lcom/keephealth/android/views/dialog/WheelViewDialog;

    const v1, 0x7f110119

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;-><init>(Landroid/content/Context;I)V

    .line 1317
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v1

    const/4 v2, 0x0

    .line 1318
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAddZero(Z)V

    .line 1319
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    const/4 v3, 0x3

    .line 1320
    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 1321
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 1322
    invoke-virtual {v1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1323
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    .line 1325
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1326
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 1327
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1328
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1329
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1330
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object p1

    .line 1331
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getTitle2()Landroid/widget/TextView;

    move-result-object p2

    .line 1332
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10051e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1333
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f100784

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1335
    invoke-virtual {v0, p3}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->setOnSelectClick(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V

    .line 1336
    invoke-virtual {v0, p4}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->setStartOffset1(I)V

    .line 1337
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->show()V

    return-object v0
.end method

.method public static showWheelWeightDialog(Landroid/content/Context;ILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V
    .registers 13

    .line 1415
    new-instance v0, Lcom/keephealth/android/views/dialog/WheelViewDialog;

    const v1, 0x7f110119

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/views/dialog/WheelViewDialog;-><init>(Landroid/content/Context;I)V

    .line 1416
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v1

    const/4 v2, 0x0

    .line 1417
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    const/4 v2, 0x3

    .line 1418
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 1419
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_2()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 1420
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWv_3()Lcom/keephealth/android/views/wheel/NewWheelView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 1422
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1423
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1424
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1425
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1426
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1427
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getTitle1()Landroid/widget/TextView;

    move-result-object v2

    .line 1428
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f1007ac

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1432
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result p0

    const/4 v2, 0x5

    const/16 v3, 0x12c

    if-nez p0, :cond_71

    int-to-double v4, v2

    const-wide v6, 0x400199999999999aL    # 2.2

    mul-double/2addr v4, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v8

    double-to-int v2, v4

    int-to-double v3, v3

    mul-double/2addr v3, v6

    add-double/2addr v3, v8

    double-to-int v3, v3

    :cond_71
    if-le p1, v3, :cond_74

    move p1, v3

    :cond_74
    if-ge p1, v2, :cond_77

    move p1, v2

    .line 1444
    :cond_77
    new-instance p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    invoke-direct {p0, v2, v3}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    sub-int/2addr p1, v2

    .line 1445
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(I)V

    const p0, 0x7f090561

    .line 1446
    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/keephealth/android/util/DialogHelperNew$5;

    invoke-direct {p1, p2, v1, v2, v0}, Lcom/keephealth/android/util/DialogHelperNew$5;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;Lcom/keephealth/android/views/wheel/NewWheelView;ILcom/keephealth/android/views/dialog/WheelViewDialog;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1455
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->show()V

    return-void
.end method

.method public static showXueTangDialog(Landroid/content/Context;Lcom/keephealth/android/views/dialog/WheelViewCanDialog$OnSelectClick;)V
    .registers 19

    move-object/from16 v0, p0

    .line 1714
    sget-object v1, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    if-nez v1, :cond_10

    .line 1715
    new-instance v1, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    const v2, 0x7f110119

    invoke-direct {v1, v0, v2}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    .line 1718
    :cond_10
    sget-object v1, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    const v2, 0x7f0c00f9

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->setContentView(I)V

    .line 1719
    sget-object v1, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 1720
    sget-object v1, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->setCancelable(Z)V

    .line 1721
    sget-object v1, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1722
    sget-object v1, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    const v2, 0x7f0907ea

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/wheel/NewWheelView;

    .line 1723
    sget-object v2, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    const v3, 0x7f0907eb

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/wheel/NewWheelView;

    .line 1724
    sget-object v3, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    const v4, 0x7f090786

    invoke-virtual {v3, v4}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1725
    sget-object v3, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    invoke-virtual {v3}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1726
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1727
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1728
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v0

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v5, v7

    double-to-int v0, v5

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1729
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x3

    .line 1732
    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 1733
    invoke-virtual {v2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibleItems(I)V

    .line 1735
    new-instance v0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;

    const/16 v3, 0x1e

    const/16 v4, 0xbe

    invoke-direct {v0, v3, v4}, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1736
    new-instance v0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;

    const/16 v3, 0x28

    const/16 v4, 0xc8

    invoke-direct {v0, v3, v4}, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    const/4 v0, 0x0

    .line 1737
    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 1738
    invoke-virtual {v2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setVisibility(I)V

    .line 1739
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "beforeCan:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v5, Lcom/keephealth/android/util/DialogHelperNew;->beforeCan:D

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    mul-double/2addr v5, v7

    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    sub-double/2addr v5, v9

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  backCan:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v5, Lcom/keephealth/android/util/DialogHelperNew;->backCan:D

    mul-double/2addr v5, v7

    const-wide/high16 v11, 0x4044000000000000L    # 40.0

    sub-double/2addr v5, v11

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "hf334"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "canBefore"

    invoke-static {v3, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1743
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v13, "fr33e"

    const-string v14, ""

    if-nez v6, :cond_12a

    .line 1744
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "before:"

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "    "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v15, v7

    sub-double v11, v15, v9

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    mul-double/2addr v11, v7

    sub-double/2addr v11, v9

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(Ljava/lang/Object;)V

    goto :goto_142

    .line 1747
    :cond_12a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v11, Lcom/keephealth/android/util/DialogHelperNew;->beforeCan:D

    mul-double/2addr v11, v7

    sub-double/2addr v11, v9

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(Ljava/lang/Object;)V

    .line 1754
    :goto_142
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v11, "calibrationCanBefore"

    invoke-static {v6, v11}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/keephealth/android/util/DialogHelperNew;->shareBefore:I

    .line 1755
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v11, "calibrationCanBack"

    invoke-static {v6, v11}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 1756
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "share_before:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v12, Lcom/keephealth/android/util/DialogHelperNew;->shareBefore:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  shareBack:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "canBack"

    invoke-static {v11, v12}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1758
    sget v12, Lcom/keephealth/android/util/DialogHelperNew;->shareBefore:I

    if-lez v12, :cond_2d7

    .line 1759
    new-instance v12, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;

    sget v15, Lcom/keephealth/android/util/DialogHelperNew;->shareBefore:I

    add-int/lit8 v15, v15, 0xa

    invoke-direct {v12, v15, v4}, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;-><init>(II)V

    invoke-virtual {v2, v12}, Lcom/keephealth/android/views/wheel/NewWheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 1761
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_265

    .line 1762
    sget v4, Lcom/keephealth/android/util/DialogHelperNew;->shareBefore:I

    add-int/lit8 v4, v4, 0xa

    if-le v6, v4, :cond_1f9

    .line 1764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/keephealth/android/util/DialogHelperNew;->shareBefore:I

    add-int/lit8 v7, v7, 0xa

    sub-int v7, v6, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(Ljava/lang/Object;)V

    .line 1765
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shareBack2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/keephealth/android/util/DialogHelperNew;->shareBefore:I

    add-int/lit8 v7, v7, 0xa

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v1

    goto :goto_237

    .line 1767
    :cond_1f9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v15, v7

    sget v6, Lcom/keephealth/android/util/DialogHelperNew;->shareBefore:I

    add-int/lit8 v6, v6, 0xa

    move-object v12, v1

    int-to-double v0, v6

    sub-double v0, v15, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(Ljava/lang/Object;)V

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shareBack3:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v3, v7

    sget v1, Lcom/keephealth/android/util/DialogHelperNew;->shareBefore:I

    add-int/lit8 v1, v1, 0xa

    int-to-double v6, v1

    sub-double/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    :goto_237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/keephealth/android/util/DialogHelperNew;->shareBefore:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    sub-double/2addr v3, v9

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(Ljava/lang/Object;)V

    goto/16 :goto_348

    :cond_265
    move-object v12, v1

    .line 1772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/keephealth/android/util/DialogHelperNew;->shareBefore:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    sub-double/2addr v3, v9

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(Ljava/lang/Object;)V

    .line 1773
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(backCan * 10 - 40):"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/keephealth/android/util/DialogHelperNew;->backCan:D

    mul-double/2addr v3, v7

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    sub-double/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/keephealth/android/util/DialogHelperNew;->shareBefore:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    sub-double/2addr v3, v9

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(Ljava/lang/Object;)V

    goto :goto_348

    :cond_2d7
    move-object v12, v1

    .line 1778
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_316

    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v15, v7

    sub-double v9, v15, v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(Ljava/lang/Object;)V

    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v3, v7

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    sub-double/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(Ljava/lang/Object;)V

    goto :goto_348

    .line 1782
    :cond_316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Lcom/keephealth/android/util/DialogHelperNew;->beforeCan:D

    mul-double/2addr v3, v7

    sub-double/2addr v3, v9

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(Ljava/lang/Object;)V

    .line 1783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Lcom/keephealth/android/util/DialogHelperNew;->backCan:D

    mul-double/2addr v3, v7

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    sub-double/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(Ljava/lang/Object;)V

    .line 1788
    :goto_348
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "back:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    new-instance v0, Lcom/keephealth/android/util/DialogHelperNew$6;

    invoke-direct {v0, v2}, Lcom/keephealth/android/util/DialogHelperNew$6;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView;)V

    invoke-virtual {v12, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;)V

    .line 1811
    new-instance v0, Lcom/keephealth/android/util/DialogHelperNew$7;

    invoke-direct {v0}, Lcom/keephealth/android/util/DialogHelperNew$7;-><init>()V

    invoke-virtual {v2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;)V

    const/4 v0, 0x0

    .line 1826
    invoke-virtual {v12, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 1827
    invoke-virtual {v2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCyclic(Z)V

    .line 1828
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    const v1, 0x7f0900d4

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1830
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    const v1, 0x7f090561

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda26;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda26;-><init>(Lcom/keephealth/android/views/dialog/WheelViewCanDialog$OnSelectClick;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1837
    sget-object v0, Lcom/keephealth/android/util/DialogHelperNew;->canDialog:Lcom/keephealth/android/views/dialog/WheelViewCanDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewCanDialog;->show()V

    return-void
.end method


# virtual methods
.method public setCancelDuiHuanReword(Lcom/keephealth/android/util/DialogHelperNew$CancelDuiHuanRecord;)V
    .registers 2

    .line 2293
    sput-object p1, Lcom/keephealth/android/util/DialogHelperNew;->mCancelDuiHuanRecordl:Lcom/keephealth/android/util/DialogHelperNew$CancelDuiHuanRecord;

    return-void
.end method
