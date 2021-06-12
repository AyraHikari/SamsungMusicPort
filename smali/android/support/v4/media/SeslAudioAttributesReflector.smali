.class public Landroid/support/v4/media/SeslAudioAttributesReflector;
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
        Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesApi23Impl;,
        Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesApi21Impl;,
        Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesBaseImpl;

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

    .line 16
    const-class v0, Landroid/media/AudioAttributes;

    sput-object v0, Landroid/support/v4/media/SeslAudioAttributesReflector;->mClass:Ljava/lang/Class;

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 47
    new-instance v0, Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesApi23Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesApi23Impl;-><init>(Landroid/support/v4/media/SeslAudioAttributesReflector$1;)V

    sput-object v0, Landroid/support/v4/media/SeslAudioAttributesReflector;->IMPL:Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesBaseImpl;

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesApi21Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesApi21Impl;-><init>(Landroid/support/v4/media/SeslAudioAttributesReflector$1;)V

    sput-object v0, Landroid/support/v4/media/SeslAudioAttributesReflector;->IMPL:Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesBaseImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    .line 15
    sget-object v0, Landroid/support/v4/media/SeslAudioAttributesReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_FLAG_BYPASS_INTERRUPTION_POLICY()I
    .locals 1

    .line 59
    sget-object v0, Landroid/support/v4/media/SeslAudioAttributesReflector;->IMPL:Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesBaseImpl;->getField_FLAG_BYPASS_INTERRUPTION_POLICY()I

    move-result v0

    return v0
.end method
