.class final Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandlerAndListener"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->a:Landroid/os/Handler;

    .line 137
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    return-void
.end method
