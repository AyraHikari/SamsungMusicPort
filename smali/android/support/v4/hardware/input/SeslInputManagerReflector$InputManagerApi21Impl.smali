.class Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/input/SeslInputManagerReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputManagerApi21Impl"
.end annotation


# static fields
.field protected static mInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Landroid/support/v4/hardware/input/SeslInputManagerReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 29
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    sput-object v0, Landroid/support/v4/hardware/input/SeslInputManagerReflector$InputManagerApi21Impl;->mInstance:Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public setPointerIconType(I)V
    .locals 0

    return-void
.end method
