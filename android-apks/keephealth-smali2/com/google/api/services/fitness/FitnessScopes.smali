.class public Lcom/google/api/services/fitness/FitnessScopes;
.super Ljava/lang/Object;
.source "FitnessScopes.java"


# static fields
.field public static final FITNESS_ACTIVITY_READ:Ljava/lang/String; = "https://www.googleapis.com/auth/fitness.activity.read"

.field public static final FITNESS_ACTIVITY_WRITE:Ljava/lang/String; = "https://www.googleapis.com/auth/fitness.activity.write"

.field public static final FITNESS_BODY_READ:Ljava/lang/String; = "https://www.googleapis.com/auth/fitness.body.read"

.field public static final FITNESS_BODY_WRITE:Ljava/lang/String; = "https://www.googleapis.com/auth/fitness.body.write"

.field public static final FITNESS_LOCATION_READ:Ljava/lang/String; = "https://www.googleapis.com/auth/fitness.location.read"

.field public static final FITNESS_LOCATION_WRITE:Ljava/lang/String; = "https://www.googleapis.com/auth/fitness.location.write"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static all()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 55
    const-string v1, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v1, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v1, "https://www.googleapis.com/auth/fitness.body.read"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v1, "https://www.googleapis.com/auth/fitness.body.write"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v1, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v1, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
