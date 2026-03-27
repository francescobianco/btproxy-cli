.class public Lcom/keephealth/android/views/share/ShareItem;
.super Ljava/lang/Object;
.source "ShareItem.java"


# instance fields
.field private iconName:Ljava/lang/String;

.field private iconRes:I

.field private iconTag:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/keephealth/android/views/share/ShareItem;->iconRes:I

    .line 10
    iput-object p2, p0, Lcom/keephealth/android/views/share/ShareItem;->iconName:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/keephealth/android/views/share/ShareItem;->iconTag:I

    return-void
.end method


# virtual methods
.method public getIconName()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareItem;->iconName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconRes()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/keephealth/android/views/share/ShareItem;->iconRes:I

    return v0
.end method

.method public getIconTag()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/keephealth/android/views/share/ShareItem;->iconTag:I

    return v0
.end method

.method public setIconName(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/views/share/ShareItem;->iconName:Ljava/lang/String;

    return-void
.end method

.method public setIconRes(I)V
    .registers 2

    .line 19
    iput p1, p0, Lcom/keephealth/android/views/share/ShareItem;->iconRes:I

    return-void
.end method

.method public setIconTag(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/keephealth/android/views/share/ShareItem;->iconTag:I

    return-void
.end method
