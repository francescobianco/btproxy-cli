.class Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;
.super Ljava/lang/Object;
.source "BuiltInsForSequences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$sortBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KVP"
.end annotation


# instance fields
.field private key:Ljava/lang/Object;

.field private value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->key:Ljava/lang/Object;

    .line 619
    iput-object p2, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->value:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lfreemarker/core/BuiltInsForSequences$1;)V
    .registers 4

    .line 613
    invoke-direct {p0, p1, p2}, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;)Ljava/lang/Object;
    .registers 1

    .line 613
    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->key:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2000(Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;)Ljava/lang/Object;
    .registers 1

    .line 613
    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->value:Ljava/lang/Object;

    return-object p0
.end method
