.class Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

.field final synthetic b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$3;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$3;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$3;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;->b()V

    return-void
.end method
