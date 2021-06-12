.class Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 682
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 687
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 688
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 689
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b([B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(I)V

    return-void

    :cond_1
    return-void
.end method
