.class public Landroid/support/v4/media/SeslRingtoneManagerReflector;
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
        Landroid/support/v4/media/SeslRingtoneManagerReflector$RingtoneManagerApi21Impl;,
        Landroid/support/v4/media/SeslRingtoneManagerReflector$RingtoneManagerBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/media/SeslRingtoneManagerReflector$RingtoneManagerBaseImpl;

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
    const-class v0, Landroid/media/RingtoneManager;

    sput-object v0, Landroid/support/v4/media/SeslRingtoneManagerReflector;->mClass:Ljava/lang/Class;

    .line 37
    new-instance v0, Landroid/support/v4/media/SeslRingtoneManagerReflector$RingtoneManagerApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/media/SeslRingtoneManagerReflector$RingtoneManagerApi21Impl;-><init>(Landroid/support/v4/media/SeslRingtoneManagerReflector$1;)V

    sput-object v0, Landroid/support/v4/media/SeslRingtoneManagerReflector;->IMPL:Landroid/support/v4/media/SeslRingtoneManagerReflector$RingtoneManagerBaseImpl;

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
    sget-object v0, Landroid/support/v4/media/SeslRingtoneManagerReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Landroid/support/v4/media/SeslRingtoneManagerReflector;->IMPL:Landroid/support/v4/media/SeslRingtoneManagerReflector$RingtoneManagerBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/media/SeslRingtoneManagerReflector$RingtoneManagerBaseImpl;->getField_EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
