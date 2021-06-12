.class Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/SeslAudioAttributesReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioAttributesApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/SeslAudioAttributesReflector$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_FLAG_BYPASS_INTERRUPTION_POLICY()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
