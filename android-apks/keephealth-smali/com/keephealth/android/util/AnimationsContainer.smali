.class public Lcom/keephealth/android/util/AnimationsContainer;
.super Ljava/lang/Object;
.source "AnimationsContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;,
        Lcom/keephealth/android/util/AnimationsContainer$OnAnimationStoppedListener;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/keephealth/android/util/AnimationsContainer;


# instance fields
.field public FPS:I

.field private final mContext:Landroid/content/Context;

.field private resId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    .line 17
    iput v0, p0, Lcom/keephealth/android/util/AnimationsContainer;->FPS:I

    const v0, 0x7f030003

    .line 18
    iput v0, p0, Lcom/keephealth/android/util/AnimationsContainer;->resId:I

    .line 19
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/AnimationsContainer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getData(I)[I
    .registers 7

    .line 177
    iget-object v0, p0, Lcom/keephealth/android/util/AnimationsContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 180
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v0, :cond_21

    .line 183
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 185
    :cond_21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static getInstance(II)Lcom/keephealth/android/util/AnimationsContainer;
    .registers 3

    .line 28
    sget-object v0, Lcom/keephealth/android/util/AnimationsContainer;->mInstance:Lcom/keephealth/android/util/AnimationsContainer;

    if-nez v0, :cond_b

    .line 29
    new-instance v0, Lcom/keephealth/android/util/AnimationsContainer;

    invoke-direct {v0}, Lcom/keephealth/android/util/AnimationsContainer;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/AnimationsContainer;->mInstance:Lcom/keephealth/android/util/AnimationsContainer;

    .line 31
    :cond_b
    sget-object v0, Lcom/keephealth/android/util/AnimationsContainer;->mInstance:Lcom/keephealth/android/util/AnimationsContainer;

    invoke-virtual {v0, p0, p1}, Lcom/keephealth/android/util/AnimationsContainer;->setResId(II)V

    .line 32
    sget-object p0, Lcom/keephealth/android/util/AnimationsContainer;->mInstance:Lcom/keephealth/android/util/AnimationsContainer;

    return-object p0
.end method


# virtual methods
.method public createProgressDialogAnim(Landroid/widget/ImageView;)Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;
    .registers 5

    .line 47
    new-instance v0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    iget v1, p0, Lcom/keephealth/android/util/AnimationsContainer;->resId:I

    invoke-direct {p0, v1}, Lcom/keephealth/android/util/AnimationsContainer;->getData(I)[I

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/util/AnimationsContainer;->FPS:I

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;-><init>(Lcom/keephealth/android/util/AnimationsContainer;Landroid/widget/ImageView;[II)V

    return-object v0
.end method

.method public setResId(II)V
    .registers 3

    .line 36
    iput p1, p0, Lcom/keephealth/android/util/AnimationsContainer;->resId:I

    .line 37
    iput p2, p0, Lcom/keephealth/android/util/AnimationsContainer;->FPS:I

    return-void
.end method
