.class public Lcom/keephealth/android/views/ValueStateTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ValueStateTextView.java"


# static fields
.field private static final OPEN_STATE_SET:[I


# instance fields
.field private d:Landroid/graphics/drawable/Drawable;

.field private drawableW:I

.field private isOpen:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f0403ea

    .line 22
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/views/ValueStateTextView;->OPEN_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/keephealth/android/views/ValueStateTextView;->isOpen:Z

    .line 23
    iput v0, p0, Lcom/keephealth/android/views/ValueStateTextView;->drawableW:I

    .line 24
    iput v0, p0, Lcom/keephealth/android/views/ValueStateTextView;->width:I

    .line 27
    sget-object v1, Lcom/keephealth/android/R$styleable;->ValueStateTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/ValueStateTextView;->d:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .line 60
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->drawableStateChanged()V

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/views/ValueStateTextView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/views/ValueStateTextView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/keephealth/android/views/ValueStateTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/views/ValueStateTextView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/ValueStateTextView;->drawableW:I

    .line 65
    :cond_1e
    invoke-virtual {p0}, Lcom/keephealth/android/views/ValueStateTextView;->invalidate()V

    return-void
.end method

.method public isOpen()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/keephealth/android/views/ValueStateTextView;->isOpen:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 50
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 51
    invoke-virtual {p0}, Lcom/keephealth/android/views/ValueStateTextView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 52
    sget-object v0, Lcom/keephealth/android/views/ValueStateTextView;->OPEN_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/keephealth/android/views/ValueStateTextView;->mergeDrawableStates([I[I)[I

    :cond_11
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/views/ValueStateTextView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2a

    .line 75
    invoke-virtual {p0}, Lcom/keephealth/android/views/ValueStateTextView;->getHeight()I

    move-result v0

    .line 76
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, -0x3

    .line 77
    invoke-virtual {p0}, Lcom/keephealth/android/views/ValueStateTextView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 78
    iget v1, p0, Lcom/keephealth/android/views/ValueStateTextView;->width:I

    iget v2, p0, Lcom/keephealth/android/views/ValueStateTextView;->drawableW:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 81
    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v0, v3

    add-int v3, v2, v1

    add-int/2addr v2, v0

    .line 87
    iget-object v4, p0, Lcom/keephealth/android/views/ValueStateTextView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v0, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/views/ValueStateTextView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    :cond_2a
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 33
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 35
    invoke-virtual {p0}, Lcom/keephealth/android/views/ValueStateTextView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/ValueStateTextView;->width:I

    return-void
.end method

.method public setOpen(Z)V
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/keephealth/android/views/ValueStateTextView;->isOpen:Z

    .line 44
    invoke-virtual {p0}, Lcom/keephealth/android/views/ValueStateTextView;->refreshDrawableState()V

    return-void
.end method
