.class public Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/provider/SeslSettingsReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeslSystemReflector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemApi24Impl;,
        Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemApi21Impl;,
        Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemBaseImpl;

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

    .line 17
    const-class v0, Landroid/provider/Settings$System;

    sput-object v0, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector;->mClass:Ljava/lang/Class;

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 53
    new-instance v0, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemApi24Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemApi24Impl;-><init>(Landroid/support/v4/provider/SeslSettingsReflector$1;)V

    sput-object v0, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector;->IMPL:Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemBaseImpl;

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemApi21Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemApi21Impl;-><init>(Landroid/support/v4/provider/SeslSettingsReflector$1;)V

    sput-object v0, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector;->IMPL:Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemBaseImpl;

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
    sget-object v0, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_SEM_PEN_HOVERING()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector;->IMPL:Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemBaseImpl;->getField_SEM_PEN_HOVERING()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
