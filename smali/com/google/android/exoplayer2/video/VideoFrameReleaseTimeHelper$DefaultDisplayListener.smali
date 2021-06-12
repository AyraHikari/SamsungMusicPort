.class final Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultDisplayListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

.field private final b:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->a:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->b:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->b:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->b:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->a:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-static {p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->a(Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
