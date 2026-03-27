.class public final enum Lcom/keephealth/android/views/StereoView$State;
.super Ljava/lang/Enum;
.source "StereoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/StereoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/views/StereoView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/views/StereoView$State;

.field public static final enum Normal:Lcom/keephealth/android/views/StereoView$State;

.field public static final enum ToNext:Lcom/keephealth/android/views/StereoView$State;

.field public static final enum ToPre:Lcom/keephealth/android/views/StereoView$State;


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/views/StereoView$State;
    .registers 3

    .line 354
    sget-object v0, Lcom/keephealth/android/views/StereoView$State;->Normal:Lcom/keephealth/android/views/StereoView$State;

    sget-object v1, Lcom/keephealth/android/views/StereoView$State;->ToPre:Lcom/keephealth/android/views/StereoView$State;

    sget-object v2, Lcom/keephealth/android/views/StereoView$State;->ToNext:Lcom/keephealth/android/views/StereoView$State;

    filled-new-array {v0, v1, v2}, [Lcom/keephealth/android/views/StereoView$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 355
    new-instance v0, Lcom/keephealth/android/views/StereoView$State;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/views/StereoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/views/StereoView$State;->Normal:Lcom/keephealth/android/views/StereoView$State;

    new-instance v0, Lcom/keephealth/android/views/StereoView$State;

    const-string v1, "ToPre"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/views/StereoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/views/StereoView$State;->ToPre:Lcom/keephealth/android/views/StereoView$State;

    new-instance v0, Lcom/keephealth/android/views/StereoView$State;

    const-string v1, "ToNext"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/views/StereoView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/views/StereoView$State;->ToNext:Lcom/keephealth/android/views/StereoView$State;

    .line 354
    invoke-static {}, Lcom/keephealth/android/views/StereoView$State;->$values()[Lcom/keephealth/android/views/StereoView$State;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/views/StereoView$State;->$VALUES:[Lcom/keephealth/android/views/StereoView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 354
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/views/StereoView$State;
    .registers 2

    .line 354
    const-class v0, Lcom/keephealth/android/views/StereoView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/views/StereoView$State;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/views/StereoView$State;
    .registers 1

    .line 354
    sget-object v0, Lcom/keephealth/android/views/StereoView$State;->$VALUES:[Lcom/keephealth/android/views/StereoView$State;

    invoke-virtual {v0}, [Lcom/keephealth/android/views/StereoView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/views/StereoView$State;

    return-object v0
.end method
