.class Lfreemarker/core/Configurable$KeyValuePair;
.super Ljava/lang/Object;
.source "Configurable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/Configurable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyValuePair"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 3169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3170
    iput-object p1, p0, Lfreemarker/core/Configurable$KeyValuePair;->key:Ljava/lang/Object;

    .line 3171
    iput-object p2, p0, Lfreemarker/core/Configurable$KeyValuePair;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getKey()Ljava/lang/Object;
    .registers 2

    .line 3175
    iget-object v0, p0, Lfreemarker/core/Configurable$KeyValuePair;->key:Ljava/lang/Object;

    return-object v0
.end method

.method getValue()Ljava/lang/Object;
    .registers 2

    .line 3179
    iget-object v0, p0, Lfreemarker/core/Configurable$KeyValuePair;->value:Ljava/lang/Object;

    return-object v0
.end method
