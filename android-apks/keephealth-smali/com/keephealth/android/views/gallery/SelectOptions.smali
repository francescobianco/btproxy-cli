.class public Lcom/keephealth/android/views/gallery/SelectOptions;
.super Ljava/lang/Object;
.source "SelectOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/gallery/SelectOptions$Callback;,
        Lcom/keephealth/android/views/gallery/SelectOptions$Builder;
    }
.end annotation


# instance fields
.field private hasCam:Z

.field private isCrop:Z

.field private mCallback:Lcom/keephealth/android/views/gallery/SelectOptions$Callback;

.field private mCropHeight:I

.field private mCropWidth:I

.field private mHeaders:Lcom/bumptech/glide/load/model/LazyHeaders;

.field private mSavePath:Ljava/lang/String;

.field private mSelectCount:I

.field private mSelectedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/views/gallery/SelectOptions$1;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/SelectOptions;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/keephealth/android/views/gallery/SelectOptions;Z)Z
    .registers 2

    .line 14
    iput-boolean p1, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->hasCam:Z

    return p1
.end method

.method static synthetic access$202(Lcom/keephealth/android/views/gallery/SelectOptions;Z)Z
    .registers 2

    .line 14
    iput-boolean p1, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->isCrop:Z

    return p1
.end method

.method static synthetic access$302(Lcom/keephealth/android/views/gallery/SelectOptions;I)I
    .registers 2

    .line 14
    iput p1, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->mCropHeight:I

    return p1
.end method

.method static synthetic access$402(Lcom/keephealth/android/views/gallery/SelectOptions;I)I
    .registers 2

    .line 14
    iput p1, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->mCropWidth:I

    return p1
.end method

.method static synthetic access$502(Lcom/keephealth/android/views/gallery/SelectOptions;Lcom/keephealth/android/views/gallery/SelectOptions$Callback;)Lcom/keephealth/android/views/gallery/SelectOptions$Callback;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->mCallback:Lcom/keephealth/android/views/gallery/SelectOptions$Callback;

    return-object p1
.end method

.method static synthetic access$602(Lcom/keephealth/android/views/gallery/SelectOptions;I)I
    .registers 2

    .line 14
    iput p1, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->mSelectCount:I

    return p1
.end method

.method static synthetic access$702(Lcom/keephealth/android/views/gallery/SelectOptions;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->mSelectedImages:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$802(Lcom/keephealth/android/views/gallery/SelectOptions;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->mSavePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/keephealth/android/views/gallery/SelectOptions;Lcom/bumptech/glide/load/model/LazyHeaders;)Lcom/bumptech/glide/load/model/LazyHeaders;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->mHeaders:Lcom/bumptech/glide/load/model/LazyHeaders;

    return-object p1
.end method


# virtual methods
.method public getCallback()Lcom/keephealth/android/views/gallery/SelectOptions$Callback;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->mCallback:Lcom/keephealth/android/views/gallery/SelectOptions$Callback;

    return-object v0
.end method

.method public getCropHeight()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->mCropHeight:I

    return v0
.end method

.method public getCropWidth()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->mCropWidth:I

    return v0
.end method

.method public getHeaders()Lcom/bumptech/glide/load/model/LazyHeaders;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->mHeaders:Lcom/bumptech/glide/load/model/LazyHeaders;

    return-object v0
.end method

.method public getSavePath()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectCount()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->mSelectCount:I

    return v0
.end method

.method public getSelectedImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->mSelectedImages:Ljava/util/List;

    return-object v0
.end method

.method public isCrop()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->isCrop:Z

    return v0
.end method

.method public isHasCam()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions;->hasCam:Z

    return v0
.end method
