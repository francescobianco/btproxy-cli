.class public final enum Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;
.super Ljava/lang/Enum;
.source "InnerGuideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/InnerGuideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BubbleLegOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

.field public static final enum CENTER:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

.field public static final enum LEFT:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;
    .registers 2

    .line 72
    sget-object v0, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;->LEFT:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    sget-object v1, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;->CENTER:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    filled-new-array {v0, v1}, [Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 73
    new-instance v0, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;->LEFT:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    new-instance v0, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    const-string v1, "CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;->CENTER:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    .line 72
    invoke-static {}, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;->$values()[Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;->$VALUES:[Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;
    .registers 2

    .line 72
    const-class v0, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;
    .registers 1

    .line 72
    sget-object v0, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;->$VALUES:[Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    invoke-virtual {v0}, [Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    return-object v0
.end method
