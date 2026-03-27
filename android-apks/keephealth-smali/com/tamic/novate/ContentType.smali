.class public final enum Lcom/tamic/novate/ContentType;
.super Ljava/lang/Enum;
.source "ContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tamic/novate/ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tamic/novate/ContentType;

.field public static final enum APK:Lcom/tamic/novate/ContentType;

.field public static final enum AUDIO:Lcom/tamic/novate/ContentType;

.field public static final enum FORM:Lcom/tamic/novate/ContentType;

.field public static final enum IMAGE:Lcom/tamic/novate/ContentType;

.field public static final enum JAVA:Lcom/tamic/novate/ContentType;

.field public static final enum JSON:Lcom/tamic/novate/ContentType;

.field public static final enum MESSAGE:Lcom/tamic/novate/ContentType;

.field public static final enum TEXT:Lcom/tamic/novate/ContentType;

.field public static final enum VIDEO:Lcom/tamic/novate/ContentType;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 13
    new-instance v0, Lcom/tamic/novate/ContentType;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tamic/novate/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tamic/novate/ContentType;->JSON:Lcom/tamic/novate/ContentType;

    .line 17
    new-instance v1, Lcom/tamic/novate/ContentType;

    const-string v2, "TEXT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tamic/novate/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tamic/novate/ContentType;->TEXT:Lcom/tamic/novate/ContentType;

    .line 21
    new-instance v2, Lcom/tamic/novate/ContentType;

    const-string v3, "AUDIO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tamic/novate/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tamic/novate/ContentType;->AUDIO:Lcom/tamic/novate/ContentType;

    .line 25
    new-instance v3, Lcom/tamic/novate/ContentType;

    const-string v4, "VIDEO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/tamic/novate/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tamic/novate/ContentType;->VIDEO:Lcom/tamic/novate/ContentType;

    .line 29
    new-instance v4, Lcom/tamic/novate/ContentType;

    const-string v5, "IMAGE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/tamic/novate/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/tamic/novate/ContentType;->IMAGE:Lcom/tamic/novate/ContentType;

    .line 33
    new-instance v5, Lcom/tamic/novate/ContentType;

    const-string v6, "JAVA"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/tamic/novate/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tamic/novate/ContentType;->JAVA:Lcom/tamic/novate/ContentType;

    .line 37
    new-instance v6, Lcom/tamic/novate/ContentType;

    const-string v7, "MESSAGE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/tamic/novate/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/tamic/novate/ContentType;->MESSAGE:Lcom/tamic/novate/ContentType;

    .line 41
    new-instance v7, Lcom/tamic/novate/ContentType;

    const-string v8, "APK"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/tamic/novate/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tamic/novate/ContentType;->APK:Lcom/tamic/novate/ContentType;

    .line 45
    new-instance v8, Lcom/tamic/novate/ContentType;

    const-string v9, "FORM"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/tamic/novate/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/tamic/novate/ContentType;->FORM:Lcom/tamic/novate/ContentType;

    .line 8
    filled-new-array/range {v0 .. v8}, [Lcom/tamic/novate/ContentType;

    move-result-object v0

    sput-object v0, Lcom/tamic/novate/ContentType;->$VALUES:[Lcom/tamic/novate/ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tamic/novate/ContentType;
    .registers 2

    .line 8
    const-class v0, Lcom/tamic/novate/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tamic/novate/ContentType;

    return-object p0
.end method

.method public static values()[Lcom/tamic/novate/ContentType;
    .registers 1

    .line 8
    sget-object v0, Lcom/tamic/novate/ContentType;->$VALUES:[Lcom/tamic/novate/ContentType;

    invoke-virtual {v0}, [Lcom/tamic/novate/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tamic/novate/ContentType;

    return-object v0
.end method
