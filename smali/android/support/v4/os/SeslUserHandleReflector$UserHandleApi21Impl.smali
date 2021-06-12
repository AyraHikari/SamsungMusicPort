.class Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/os/SeslUserHandleReflector$UserHandleBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/SeslUserHandleReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserHandleApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/os/SeslUserHandleReflector$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public myUserId()I
    .locals 4

    .line 23
    invoke-static {}, Landroid/support/v4/os/SeslUserHandleReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "myUserId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 25
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 27
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    return v2
.end method
