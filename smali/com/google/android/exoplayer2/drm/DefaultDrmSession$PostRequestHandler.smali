.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostRequestHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 486
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(I)J
    .locals 2

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    .line 533
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private a(Landroid/os/Message;)Z
    .locals 4

    .line 518
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v1

    .line 522
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    add-int/2addr v0, v2

    .line 523
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)I

    move-result v3

    if-le v0, v3, :cond_2

    return v1

    .line 526
    :cond_2
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    .line 527
    iput v0, p1, Landroid/os/Message;->arg2:I

    .line 528
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->a(I)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2
.end method


# virtual methods
.method a(ILjava/lang/Object;Z)Landroid/os/Message;
    .locals 1

    const/4 v0, 0x0

    .line 490
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 498
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 506
    new-instance v0, Ljava/lang/RuntimeException;

    goto :goto_0

    .line 503
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Ljava/util/UUID;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/MediaDrmCallback;->a(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B

    move-result-object v0

    goto :goto_1

    .line 500
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Ljava/util/UUID;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/MediaDrmCallback;->a(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v0

    goto :goto_1

    .line 506
    :goto_0
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 509
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->a(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 514
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
