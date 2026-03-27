.class public final Lde/hdodenhof/circleimageview/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/hdodenhof/circleimageview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircleImageView:[I

.field public static final CircleImageView_border_color:I = 0x0

.field public static final CircleImageView_border_width:I = 0x1

.field public static final CircleImageView_civ_border_color:I = 0x2

.field public static final CircleImageView_civ_border_overlay:I = 0x3

.field public static final CircleImageView_civ_border_width:I = 0x4

.field public static final CircleImageView_civ_circle_background_color:I = 0x5

.field public static final CircleImageView_civ_fill_color:I = 0x6


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lde/hdodenhof/circleimageview/R$styleable;->CircleImageView:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x7f04005e
        0x7f04005f
        0x7f0400d7
        0x7f0400d8
        0x7f0400d9
        0x7f0400da
        0x7f0400db
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
