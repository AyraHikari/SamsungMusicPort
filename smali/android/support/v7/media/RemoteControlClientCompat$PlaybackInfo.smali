.class public final Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RemoteControlClientCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# instance fields
.field public playbackStream:I

.field public playbackType:I

.field public volume:I

.field public volumeHandling:I

.field public volumeMax:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    const/4 v0, 0x3

    .line 78
    iput v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    const/4 v0, 0x1

    .line 79
    iput v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackType:I

    return-void
.end method
