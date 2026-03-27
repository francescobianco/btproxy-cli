.class public Lcom/keephealth/android/views/ItemToggleLayout;
.super Lcom/keephealth/android/views/ItemLableValue;
.source "ItemToggleLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;
    }
.end annotation


# instance fields
.field public ivLeft:Landroid/widget/ImageView;

.field private lableView:Landroid/widget/TextView;

.field private oldStatus:Z

.field private onToggleListener:Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;

.field private progressBar:Landroid/widget/ProgressBar;

.field private toggleBtn:Lcom/keephealth/android/views/CustomToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/ItemLableValue;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public cancelProgressBar()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public getTitleTextString()Ljava/lang/String;
    .registers 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/views/ItemToggleLayout;->lableView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0148

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0902f6

    .line 52
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->lableView:Landroid/widget/TextView;

    const v0, 0x7f0905fd

    .line 53
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/CustomToggleButton;

    iput-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->toggleBtn:Lcom/keephealth/android/views/CustomToggleButton;

    const v0, 0x7f090474

    .line 54
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f09032b

    .line 55
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->ivLeft:Landroid/widget/ImageView;

    .line 57
    sget-object v0, Lcom/keephealth/android/R$styleable;->ItemLableValue:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x9

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    .line 59
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->setHasBottomLine(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemToggleLayout;->isHasBottomLine()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 61
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemToggleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->bottomLineColor:I

    .line 62
    invoke-virtual {p0}, Lcom/keephealth/android/views/ItemToggleLayout;->initDraw()V

    :cond_66
    const/16 v0, 0xa

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x8

    if-eqz v0, :cond_7f

    .line 67
    iget-object v1, p0, Lcom/keephealth/android/views/ItemToggleLayout;->ivLeft:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lcom/keephealth/android/views/ItemToggleLayout;->ivLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_84

    .line 70
    :cond_7f
    iget-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->ivLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :goto_84
    iget-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->lableView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p2, p0, Lcom/keephealth/android/views/ItemToggleLayout;->toggleBtn:Lcom/keephealth/android/views/CustomToggleButton;

    new-instance v0, Lcom/keephealth/android/views/ItemToggleLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/ItemToggleLayout$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/ItemToggleLayout;)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/CustomToggleButton;->setOnSwitchListener(Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;)V

    .line 79
    iget-object p2, p0, Lcom/keephealth/android/views/ItemToggleLayout;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public initStauts(Z)V
    .registers 3

    .line 103
    iput-boolean p1, p0, Lcom/keephealth/android/views/ItemToggleLayout;->oldStatus:Z

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->toggleBtn:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    return-void
.end method

.method public isChange()Z
    .registers 3

    .line 112
    iget-boolean v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->oldStatus:Z

    iget-object v1, p0, Lcom/keephealth/android/views/ItemToggleLayout;->toggleBtn:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v1}, Lcom/keephealth/android/views/CustomToggleButton;->getSwitchState()Z

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->toggleBtn:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0}, Lcom/keephealth/android/views/CustomToggleButton;->getSwitchState()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$init$0$com-keephealth-android-views-ItemToggleLayout(Z)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->onToggleListener:Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;

    if-eqz v0, :cond_7

    .line 76
    invoke-interface {v0, p0, p1}, Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;->onToggle(Lcom/keephealth/android/views/ItemToggleLayout;Z)V

    :cond_7
    return-void
.end method

.method public setImageBack(I)V
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->toggleBtn:Lcom/keephealth/android/views/CustomToggleButton;

    const v1, 0x7f0d0327

    const v2, 0x7f0d032a

    invoke-virtual {v0, p1, v1, v2}, Lcom/keephealth/android/views/CustomToggleButton;->setImageResource(III)V

    return-void
.end method

.method public setLableText(Ljava/lang/String;)V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->lableView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/keephealth/android/views/ItemToggleLayout;->onToggleListener:Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;

    return-void
.end method

.method public setOpen(Z)V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->toggleBtn:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->lableView:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    return-void
.end method

.method public setTitleTextSize(I)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->lableView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    int-to-float p1, p1

    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_8
    return-void
.end method

.method public setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->toggleBtn:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/CustomToggleButton;->setCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    return-void
.end method

.method public showProgressBar()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/views/ItemToggleLayout;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
