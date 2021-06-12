.class Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerApi24Impl;
.super Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerApi21Impl;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/input/SeslInputManagerReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputManagerApi24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerApi21Impl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/hardware/input/SeslInputManagerReflector$1;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerApi24Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public setPointerIconType(I)V
    .locals 6

    .line 43
    sget-object v0, Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerApi24Impl;->mInstance:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Landroid/support/v4/hardware/input/SeslInputManagerReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setPointerIconType"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v1, Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerApi24Impl;->mInstance:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v1, v0, v2}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
