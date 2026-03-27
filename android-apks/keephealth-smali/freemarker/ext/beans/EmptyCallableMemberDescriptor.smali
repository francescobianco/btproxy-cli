.class final Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;
.super Lfreemarker/ext/beans/MaybeEmptyCallableMemberDescriptor;
.source "EmptyCallableMemberDescriptor.java"


# static fields
.field static final AMBIGUOUS_METHOD:Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;

.field static final NO_SUCH_METHOD:Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;

    invoke-direct {v0}, Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;->NO_SUCH_METHOD:Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;

    .line 31
    new-instance v0, Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;

    invoke-direct {v0}, Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;->AMBIGUOUS_METHOD:Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lfreemarker/ext/beans/MaybeEmptyCallableMemberDescriptor;-><init>()V

    return-void
.end method
