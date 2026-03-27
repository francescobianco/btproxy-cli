.class Lfreemarker/ext/beans/BeansWrapperBuilder$BeansWrapperFactory;
.super Ljava/lang/Object;
.source "BeansWrapperBuilder.java"

# interfaces
.implements Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/BeansWrapperBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BeansWrapperFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory<",
        "Lfreemarker/ext/beans/BeansWrapper;",
        "Lfreemarker/ext/beans/BeansWrapperConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lfreemarker/ext/beans/BeansWrapperBuilder$BeansWrapperFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Lfreemarker/ext/beans/BeansWrapperBuilder$BeansWrapperFactory;

    invoke-direct {v0}, Lfreemarker/ext/beans/BeansWrapperBuilder$BeansWrapperFactory;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/BeansWrapperBuilder$BeansWrapperFactory;->INSTANCE:Lfreemarker/ext/beans/BeansWrapperBuilder$BeansWrapperFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lfreemarker/ext/beans/BeansWrapperBuilder$BeansWrapperFactory;
    .registers 1

    .line 118
    sget-object v0, Lfreemarker/ext/beans/BeansWrapperBuilder$BeansWrapperFactory;->INSTANCE:Lfreemarker/ext/beans/BeansWrapperBuilder$BeansWrapperFactory;

    return-object v0
.end method


# virtual methods
.method public create(Lfreemarker/ext/beans/BeansWrapperConfiguration;)Lfreemarker/ext/beans/BeansWrapper;
    .registers 4

    .line 124
    new-instance v0, Lfreemarker/ext/beans/BeansWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lfreemarker/ext/beans/BeansWrapper;-><init>(Lfreemarker/ext/beans/BeansWrapperConfiguration;Z)V

    return-object v0
.end method
