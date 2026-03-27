.class public Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;
.super Ljava/lang/Object;
.source "ArrayWheelAdapter.java"

# interfaces
.implements Lcom/keephealth/android/views/wheel/WheelAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/keephealth/android/views/wheel/WheelAdapter;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LENGTH:I = -0x1


# instance fields
.field private items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private length:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    .line 44
    iput p2, p0, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;->length:I

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_e

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_e

    .line 60
    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemsCount()I
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getMaximumLength()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;->length:I

    return v0
.end method
