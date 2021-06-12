.class Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceApi24Impl;
.super Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceApi21Impl;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/SeslInputDeviceReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputDeviceApi24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceApi21Impl;-><init>(Landroid/support/v4/view/SeslInputDeviceReflector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/SeslInputDeviceReflector$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceApi24Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public setPointerType(Landroid/view/InputDevice;I)V
    .locals 6

    .line 30
    invoke-static {}, Landroid/support/v4/view/SeslInputDeviceReflector;->access$100()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setPointerType"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 29
    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
