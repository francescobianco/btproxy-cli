.class public final enum Lcom/tamic/novate/AbsRequestInterceptor$Type;
.super Ljava/lang/Enum;
.source "AbsRequestInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tamic/novate/AbsRequestInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tamic/novate/AbsRequestInterceptor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tamic/novate/AbsRequestInterceptor$Type;

.field public static final enum ADD:Lcom/tamic/novate/AbsRequestInterceptor$Type;

.field public static final enum REMOVE:Lcom/tamic/novate/AbsRequestInterceptor$Type;

.field public static final enum UPDATE:Lcom/tamic/novate/AbsRequestInterceptor$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 16
    new-instance v0, Lcom/tamic/novate/AbsRequestInterceptor$Type;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tamic/novate/AbsRequestInterceptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tamic/novate/AbsRequestInterceptor$Type;->ADD:Lcom/tamic/novate/AbsRequestInterceptor$Type;

    new-instance v1, Lcom/tamic/novate/AbsRequestInterceptor$Type;

    const-string v2, "UPDATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tamic/novate/AbsRequestInterceptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tamic/novate/AbsRequestInterceptor$Type;->UPDATE:Lcom/tamic/novate/AbsRequestInterceptor$Type;

    new-instance v2, Lcom/tamic/novate/AbsRequestInterceptor$Type;

    const-string v3, "REMOVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tamic/novate/AbsRequestInterceptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tamic/novate/AbsRequestInterceptor$Type;->REMOVE:Lcom/tamic/novate/AbsRequestInterceptor$Type;

    .line 15
    filled-new-array {v0, v1, v2}, [Lcom/tamic/novate/AbsRequestInterceptor$Type;

    move-result-object v0

    sput-object v0, Lcom/tamic/novate/AbsRequestInterceptor$Type;->$VALUES:[Lcom/tamic/novate/AbsRequestInterceptor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tamic/novate/AbsRequestInterceptor$Type;
    .registers 2

    .line 15
    const-class v0, Lcom/tamic/novate/AbsRequestInterceptor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tamic/novate/AbsRequestInterceptor$Type;

    return-object p0
.end method

.method public static values()[Lcom/tamic/novate/AbsRequestInterceptor$Type;
    .registers 1

    .line 15
    sget-object v0, Lcom/tamic/novate/AbsRequestInterceptor$Type;->$VALUES:[Lcom/tamic/novate/AbsRequestInterceptor$Type;

    invoke-virtual {v0}, [Lcom/tamic/novate/AbsRequestInterceptor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tamic/novate/AbsRequestInterceptor$Type;

    return-object v0
.end method
