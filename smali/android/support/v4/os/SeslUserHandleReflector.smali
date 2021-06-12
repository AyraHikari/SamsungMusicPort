.class public Landroid/support/v4/os/SeslUserHandleReflector;
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
        Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;,
        Landroid/support/v4/os/SeslUserHandleReflector$UserHandleBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;

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

    .line 14
    const-class v0, Landroid/os/UserHandle;

    sput-object v0, Landroid/support/v4/os/SeslUserHandleReflector;->mClass:Ljava/lang/Class;

    .line 36
    new-instance v0, Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;-><init>(Landroid/support/v4/os/SeslUserHandleReflector$1;)V

    sput-object v0, Landroid/support/v4/os/SeslUserHandleReflector;->IMPL:Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .line 13
    sget-object v0, Landroid/support/v4/os/SeslUserHandleReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static myUserId()I
    .locals 1

    .line 43
    sget-object v0, Landroid/support/v4/os/SeslUserHandleReflector;->IMPL:Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;

    invoke-virtual {v0}, Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;->myUserId()I

    move-result v0

    return v0
.end method
