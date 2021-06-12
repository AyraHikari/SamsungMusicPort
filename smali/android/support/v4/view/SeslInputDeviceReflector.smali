.class public Landroid/support/v4/view/SeslInputDeviceReflector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceApi28Impl;,
        Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceApi24Impl;,
        Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceApi21Impl;,
        Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceBaseImpl;

.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    const-class v0, Landroid/view/InputDevice;

    sput-object v0, Landroid/support/v4/view/SeslInputDeviceReflector;->mClass:Ljava/lang/Class;

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 52
    new-instance v0, Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceApi28Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceApi28Impl;-><init>(Landroid/support/v4/view/SeslInputDeviceReflector$1;)V

    sput-object v0, Landroid/support/v4/view/SeslInputDeviceReflector;->IMPL:Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceBaseImpl;

    goto :goto_0

    .line 53
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 54
    new-instance v0, Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceApi24Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceApi24Impl;-><init>(Landroid/support/v4/view/SeslInputDeviceReflector$1;)V

    sput-object v0, Landroid/support/v4/view/SeslInputDeviceReflector;->IMPL:Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceBaseImpl;

    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceApi21Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceApi21Impl;-><init>(Landroid/support/v4/view/SeslInputDeviceReflector$1;)V

    sput-object v0, Landroid/support/v4/view/SeslInputDeviceReflector;->IMPL:Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceBaseImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    .line 11
    sget-object v0, Landroid/support/v4/view/SeslInputDeviceReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static setPointerType(Landroid/view/InputDevice;I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 65
    sget-object v0, Landroid/support/v4/view/SeslInputDeviceReflector;->IMPL:Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/SeslInputDeviceReflector$InputDeviceBaseImpl;->setPointerType(Landroid/view/InputDevice;I)V

    :cond_0
    return-void
.end method
