.class public Lcom/newland/springdialog/AnimSpring;
.super Ljava/lang/Object;
.source "AnimSpring.java"


# static fields
.field public static animSpring:Lcom/newland/springdialog/AnimSpring;

.field public static springSystem:Lcom/facebook/rebound/SpringSystem;


# instance fields
.field private animView:Landroid/view/View;

.field private friction:D

.field public springConfig:Lcom/facebook/rebound/SpringConfig;

.field private tension:D


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromBouncinessAndSpeed(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/newland/springdialog/AnimSpring;->springConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 22
    iput-wide v0, p0, Lcom/newland/springdialog/AnimSpring;->tension:D

    .line 23
    iput-wide v0, p0, Lcom/newland/springdialog/AnimSpring;->friction:D

    .line 27
    iput-object p1, p0, Lcom/newland/springdialog/AnimSpring;->animView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/newland/springdialog/AnimSpring;)Landroid/view/View;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/newland/springdialog/AnimSpring;->animView:Landroid/view/View;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/view/View;)Lcom/newland/springdialog/AnimSpring;
    .registers 3

    const-class v0, Lcom/newland/springdialog/AnimSpring;

    monitor-enter v0

    .line 31
    :try_start_3
    new-instance v1, Lcom/newland/springdialog/AnimSpring;

    invoke-direct {v1, p0}, Lcom/newland/springdialog/AnimSpring;-><init>(Landroid/view/View;)V

    sput-object v1, Lcom/newland/springdialog/AnimSpring;->animSpring:Lcom/newland/springdialog/AnimSpring;

    .line 32
    sget-object p0, Lcom/newland/springdialog/AnimSpring;->springSystem:Lcom/facebook/rebound/SpringSystem;

    if-nez p0, :cond_14

    .line 33
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object p0

    sput-object p0, Lcom/newland/springdialog/AnimSpring;->springSystem:Lcom/facebook/rebound/SpringSystem;

    .line 35
    :cond_14
    sget-object p0, Lcom/newland/springdialog/AnimSpring;->animSpring:Lcom/newland/springdialog/AnimSpring;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public setFriction(D)Lcom/newland/springdialog/AnimSpring;
    .registers 7

    .line 58
    iput-wide p1, p0, Lcom/newland/springdialog/AnimSpring;->friction:D

    .line 59
    iget-wide v0, p0, Lcom/newland/springdialog/AnimSpring;->tension:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_11

    .line 60
    invoke-static {v0, v1, p1, p2}, Lcom/facebook/rebound/SpringConfig;->fromBouncinessAndSpeed(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/newland/springdialog/AnimSpring;->springConfig:Lcom/facebook/rebound/SpringConfig;

    goto :goto_19

    :cond_11
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    .line 62
    invoke-static {v0, v1, p1, p2}, Lcom/facebook/rebound/SpringConfig;->fromBouncinessAndSpeed(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/newland/springdialog/AnimSpring;->springConfig:Lcom/facebook/rebound/SpringConfig;

    :goto_19
    return-object p0
.end method

.method public setTension(D)Lcom/newland/springdialog/AnimSpring;
    .registers 7

    .line 44
    iput-wide p1, p0, Lcom/newland/springdialog/AnimSpring;->tension:D

    .line 45
    iget-wide v0, p0, Lcom/newland/springdialog/AnimSpring;->friction:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_11

    .line 46
    invoke-static {p1, p2, v0, v1}, Lcom/facebook/rebound/SpringConfig;->fromBouncinessAndSpeed(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/newland/springdialog/AnimSpring;->springConfig:Lcom/facebook/rebound/SpringConfig;

    goto :goto_19

    :cond_11
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 48
    invoke-static {p1, p2, v0, v1}, Lcom/facebook/rebound/SpringConfig;->fromBouncinessAndSpeed(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/newland/springdialog/AnimSpring;->springConfig:Lcom/facebook/rebound/SpringConfig;

    :goto_19
    return-object p0
.end method

.method public startRotateAnim(FF)Lcom/newland/springdialog/AnimSpring;
    .registers 6

    .line 147
    sget-object v0, Lcom/newland/springdialog/AnimSpring;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/newland/springdialog/AnimSpring;->springConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    float-to-double v1, p1

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    float-to-double p1, p2

    .line 150
    invoke-virtual {v0, p1, p2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 151
    new-instance p1, Lcom/newland/springdialog/AnimSpring$3;

    invoke-direct {p1, p0}, Lcom/newland/springdialog/AnimSpring$3;-><init>(Lcom/newland/springdialog/AnimSpring;)V

    invoke-virtual {v0, p1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    return-object p0
.end method

.method public startScaleAnim(DDDD)Lcom/newland/springdialog/AnimSpring;
    .registers 12

    .line 187
    sget-object v0, Lcom/newland/springdialog/AnimSpring;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 188
    sget-object v1, Lcom/newland/springdialog/AnimSpring;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v1}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/newland/springdialog/AnimSpring;->springConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 192
    iget-object v2, p0, Lcom/newland/springdialog/AnimSpring;->springConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v1, v2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 195
    invoke-virtual {v0, p1, p2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 196
    invoke-virtual {v1, p3, p4}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 199
    invoke-virtual {v0, p5, p6}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 200
    invoke-virtual {v1, p7, p8}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 203
    new-instance p1, Lcom/newland/springdialog/AnimSpring$4;

    invoke-direct {p1, p0}, Lcom/newland/springdialog/AnimSpring$4;-><init>(Lcom/newland/springdialog/AnimSpring;)V

    invoke-virtual {v0, p1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 224
    new-instance p1, Lcom/newland/springdialog/AnimSpring$5;

    invoke-direct {p1, p0}, Lcom/newland/springdialog/AnimSpring$5;-><init>(Lcom/newland/springdialog/AnimSpring;)V

    invoke-virtual {v1, p1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    return-object p0
.end method

.method public startTranslationAnim(DDDD)Lcom/newland/springdialog/AnimSpring;
    .registers 12

    .line 78
    sget-object v0, Lcom/newland/springdialog/AnimSpring;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/newland/springdialog/AnimSpring;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v1}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/newland/springdialog/AnimSpring;->springConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 83
    iget-object v2, p0, Lcom/newland/springdialog/AnimSpring;->springConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v1, v2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 86
    invoke-virtual {v0, p1, p2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 87
    invoke-virtual {v1, p3, p4}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 90
    invoke-virtual {v0, p5, p6}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 91
    invoke-virtual {v1, p7, p8}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 94
    new-instance p1, Lcom/newland/springdialog/AnimSpring$1;

    invoke-direct {p1, p0}, Lcom/newland/springdialog/AnimSpring$1;-><init>(Lcom/newland/springdialog/AnimSpring;)V

    invoke-virtual {v0, p1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 115
    new-instance p1, Lcom/newland/springdialog/AnimSpring$2;

    invoke-direct {p1, p0}, Lcom/newland/springdialog/AnimSpring$2;-><init>(Lcom/newland/springdialog/AnimSpring;)V

    invoke-virtual {v1, p1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    return-object p0
.end method
