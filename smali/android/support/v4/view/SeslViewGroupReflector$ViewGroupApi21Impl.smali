.class Landroid/support/v4/view/SeslViewGroupReflector$ViewGroupApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/SeslViewGroupReflector$ViewGroupBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/SeslViewGroupReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewGroupApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/SeslViewGroupReflector$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/view/SeslViewGroupReflector$ViewGroupApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public resolvePadding(Landroid/view/ViewGroup;)V
    .locals 4

    .line 23
    invoke-static {}, Landroid/support/v4/view/SeslViewGroupReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "resolvePadding"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
