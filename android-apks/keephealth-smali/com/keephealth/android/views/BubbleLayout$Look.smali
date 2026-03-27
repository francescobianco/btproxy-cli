.class public final enum Lcom/keephealth/android/views/BubbleLayout$Look;
.super Ljava/lang/Enum;
.source "BubbleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/BubbleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Look"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/keephealth/android/views/BubbleLayout$Look;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/keephealth/android/views/BubbleLayout$Look;

.field public static final enum BOTTOM:Lcom/keephealth/android/views/BubbleLayout$Look;

.field public static final enum LEFT:Lcom/keephealth/android/views/BubbleLayout$Look;

.field public static final enum RIGHT:Lcom/keephealth/android/views/BubbleLayout$Look;

.field public static final enum TOP:Lcom/keephealth/android/views/BubbleLayout$Look;


# instance fields
.field value:I


# direct methods
.method private static synthetic $values()[Lcom/keephealth/android/views/BubbleLayout$Look;
    .registers 4

    .line 44
    sget-object v0, Lcom/keephealth/android/views/BubbleLayout$Look;->LEFT:Lcom/keephealth/android/views/BubbleLayout$Look;

    sget-object v1, Lcom/keephealth/android/views/BubbleLayout$Look;->TOP:Lcom/keephealth/android/views/BubbleLayout$Look;

    sget-object v2, Lcom/keephealth/android/views/BubbleLayout$Look;->RIGHT:Lcom/keephealth/android/views/BubbleLayout$Look;

    sget-object v3, Lcom/keephealth/android/views/BubbleLayout$Look;->BOTTOM:Lcom/keephealth/android/views/BubbleLayout$Look;

    filled-new-array {v0, v1, v2, v3}, [Lcom/keephealth/android/views/BubbleLayout$Look;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 49
    new-instance v0, Lcom/keephealth/android/views/BubbleLayout$Look;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/views/BubbleLayout$Look;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keephealth/android/views/BubbleLayout$Look;->LEFT:Lcom/keephealth/android/views/BubbleLayout$Look;

    new-instance v0, Lcom/keephealth/android/views/BubbleLayout$Look;

    const-string v1, "TOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/keephealth/android/views/BubbleLayout$Look;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keephealth/android/views/BubbleLayout$Look;->TOP:Lcom/keephealth/android/views/BubbleLayout$Look;

    new-instance v0, Lcom/keephealth/android/views/BubbleLayout$Look;

    const-string v1, "RIGHT"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/views/BubbleLayout$Look;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keephealth/android/views/BubbleLayout$Look;->RIGHT:Lcom/keephealth/android/views/BubbleLayout$Look;

    new-instance v0, Lcom/keephealth/android/views/BubbleLayout$Look;

    const-string v1, "BOTTOM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/keephealth/android/views/BubbleLayout$Look;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keephealth/android/views/BubbleLayout$Look;->BOTTOM:Lcom/keephealth/android/views/BubbleLayout$Look;

    .line 44
    invoke-static {}, Lcom/keephealth/android/views/BubbleLayout$Look;->$values()[Lcom/keephealth/android/views/BubbleLayout$Look;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/views/BubbleLayout$Look;->$VALUES:[Lcom/keephealth/android/views/BubbleLayout$Look;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/keephealth/android/views/BubbleLayout$Look;->value:I

    return-void
.end method

.method public static getType(I)Lcom/keephealth/android/views/BubbleLayout$Look;
    .registers 3

    .line 59
    sget-object v0, Lcom/keephealth/android/views/BubbleLayout$Look;->BOTTOM:Lcom/keephealth/android/views/BubbleLayout$Look;

    const/4 v1, 0x1

    if-eq p0, v1, :cond_12

    const/4 v1, 0x2

    if-eq p0, v1, :cond_f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_c

    goto :goto_14

    .line 69
    :cond_c
    sget-object v0, Lcom/keephealth/android/views/BubbleLayout$Look;->RIGHT:Lcom/keephealth/android/views/BubbleLayout$Look;

    goto :goto_14

    .line 66
    :cond_f
    sget-object v0, Lcom/keephealth/android/views/BubbleLayout$Look;->TOP:Lcom/keephealth/android/views/BubbleLayout$Look;

    goto :goto_14

    .line 63
    :cond_12
    sget-object v0, Lcom/keephealth/android/views/BubbleLayout$Look;->LEFT:Lcom/keephealth/android/views/BubbleLayout$Look;

    :goto_14
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keephealth/android/views/BubbleLayout$Look;
    .registers 2

    .line 44
    const-class v0, Lcom/keephealth/android/views/BubbleLayout$Look;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/views/BubbleLayout$Look;

    return-object p0
.end method

.method public static values()[Lcom/keephealth/android/views/BubbleLayout$Look;
    .registers 1

    .line 44
    sget-object v0, Lcom/keephealth/android/views/BubbleLayout$Look;->$VALUES:[Lcom/keephealth/android/views/BubbleLayout$Look;

    invoke-virtual {v0}, [Lcom/keephealth/android/views/BubbleLayout$Look;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keephealth/android/views/BubbleLayout$Look;

    return-object v0
.end method
