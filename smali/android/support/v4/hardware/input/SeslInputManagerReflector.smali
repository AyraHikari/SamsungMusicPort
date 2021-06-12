.class public Landroid/support/v4/hardware/input/SeslInputManagerReflector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerApi24Impl;,
        Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerApi21Impl;,
        Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerBaseImpl;

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
    .locals 2

    .line 17
    const-class v0, Landroid/hardware/input/InputManager;

    sput-object v0, Landroid/support/v4/hardware/input/SeslInputManagerReflector;->mClass:Ljava/lang/Class;

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerApi24Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerApi24Impl;-><init>(Landroid/support/v4/hardware/input/SeslInputManagerReflector$1;)V

    sput-object v0, Landroid/support/v4/hardware/input/SeslInputManagerReflector;->IMPL:Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerBaseImpl;

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/hardware/input/SeslInputManagerReflector;->IMPL:Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerBaseImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .line 16
    sget-object v0, Landroid/support/v4/hardware/input/SeslInputManagerReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static setPointerIconType(I)V
    .locals 1

    .line 68
    sget-object v0, Landroid/support/v4/hardware/input/SeslInputManagerReflector;->IMPL:Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerBaseImpl;->setPointerIconType(I)V

    return-void
.end method
