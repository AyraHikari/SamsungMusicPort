.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/drm/DrmSession<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

.field final b:Ljava/util/UUID;

.field final c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<",
            "TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final f:[B

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

.field private final k:I

.field private l:I

.field private m:I

.field private n:Landroid/os/HandlerThread;

.field private o:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<",
            "TT;>.PostRequestHandler;"
        }
    .end annotation
.end field

.field private p:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private q:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

.field private r:[B

.field private s:[B


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;[BLjava/lang/String;I[BLjava/util/HashMap;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager<",
            "TT;>;[B",
            "Ljava/lang/String;",
            "I[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;",
            "I)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Ljava/util/UUID;

    .line 130
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    .line 131
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    .line 132
    iput p6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    .line 133
    iput-object p7, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:[B

    .line 134
    iput-object p8, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:Ljava/util/HashMap;

    .line 135
    iput-object p9, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .line 136
    iput p12, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->k:I

    .line 137
    iput-object p11, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->j:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    const/4 p1, 0x2

    .line 138
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    .line 140
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    invoke-direct {p1, p0, p10}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    .line 141
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "DrmRequestHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->n:Landroid/os/HandlerThread;

    .line 142
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->n:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 143
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->n:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    if-nez p7, :cond_0

    .line 146
    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->f:[B

    .line 147
    iput-object p5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->f:[B

    .line 150
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->g:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->k:I

    return p0
.end method

.method private a(IZ)V
    .locals 7

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:[B

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:[B

    goto :goto_0

    .line 360
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->f:[B

    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i:Ljava/util/HashMap;

    move v5, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->a([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    move-result-object p1

    .line 362
    sget-object v0, Lcom/google/android/exoplayer2/C;->d:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    new-instance v0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->a()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->a([B)[B

    move-result-object v1

    .line 364
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;-><init>([BLjava/lang/String;)V

    move-object p1, v0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->a(ILjava/lang/Object;Z)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 368
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    .line 275
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 280
    :cond_0
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    check-cast p1, Ljava/lang/Exception;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->a(Ljava/lang/Exception;)V

    return-void

    .line 286
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    check-cast p1, [B

    check-cast p1, [B

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->b([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->a()V

    return-void

    :catch_0
    move-exception p1

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Z)Z
    .locals 3

    .line 251
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 257
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:[B

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:[B

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->d([B)Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    const/4 v0, 0x3

    .line 259
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 268
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 263
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    goto :goto_0

    .line 265
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 1

    .line 414
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 415
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    goto :goto_0

    .line 417
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 2

    .line 373
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 379
    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b(Ljava/lang/Exception;)V

    return-void

    .line 384
    :cond_1
    :try_start_0
    check-cast p1, [B

    check-cast p1, [B

    .line 385
    sget-object v0, Lcom/google/android/exoplayer2/C;->d:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->b([B)[B

    move-result-object p1

    .line 388
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:[B

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->a([B[B)[B

    .line 390
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->j:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->c()V

    goto :goto_0

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:[B

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->a([B[B)[B

    move-result-object p1

    .line 393
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:[B

    if-eqz v0, :cond_5

    :cond_4
    if-eqz p1, :cond_5

    array-length v0, p1

    if-eqz v0, :cond_5

    .line 396
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:[B

    :cond_5
    const/4 p1, 0x4

    .line 398
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    .line 399
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->j:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 402
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 7

    .line 296
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 329
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    .line 330
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(IZ)V

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:[B

    if-nez v0, :cond_0

    .line 318
    invoke-direct {p0, v1, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(IZ)V

    goto :goto_0

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 322
    invoke-direct {p0, v1, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(IZ)V

    goto :goto_0

    .line 299
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:[B

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 300
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(IZ)V

    goto :goto_0

    .line 301
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 302
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->j()J

    move-result-wide v3

    .line 303
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h:I

    if-nez v0, :cond_3

    const-wide/16 v5, 0x3c

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    const-string v0, "DefaultDrmSession"

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0, v1, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(IZ)V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    cmp-long p1, v3, v0

    if-gtz p1, :cond_4

    .line 309
    new-instance p1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c(Ljava/lang/Exception;)V

    goto :goto_0

    .line 311
    :cond_4
    iput v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    .line 312
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->j:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->b()V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Ljava/lang/Exception;)V
    .locals 1

    .line 422
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->q:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 423
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->j:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->a(Ljava/lang/Exception;)V

    .line 424
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 425
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    :cond_0
    return-void
.end method

.method private i()Z
    .locals 3

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->s:[B

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->b([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DefaultDrmSession"

    const-string v2, "Error trying to restore Widevine keys."

    .line 343
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method private j()J
    .locals 5

    .line 350
    sget-object v0, Lcom/google/android/exoplayer2/C;->e:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 353
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/WidevineUtil;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    .line 354
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private k()V
    .locals 2

    .line 407
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 408
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    .line 409
    new-instance v0, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private l()Z
    .locals 2

    .line 430
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 157
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->m:I

    if-ne v0, v1, :cond_1

    .line 158
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    if-ne v0, v1, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b(Z)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 435
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 446
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->k()V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    .line 440
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b(Z)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    .line 449
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    .line 450
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public a([B)Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->f:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 4

    .line 171
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->m:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->m:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 172
    iput v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 175
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 177
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->n:Landroid/os/HandlerThread;

    .line 178
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    .line 179
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->q:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:[B

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:[B

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->a([B)V

    .line 182
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:[B

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method public b([B)Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->b()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->o:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->a(ILjava/lang/Object;Z)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 206
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b(Z)V

    :cond_0
    return-void
.end method

.method public final e()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    return v0
.end method

.method public final f()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .locals 2

    .line 224
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->q:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final g()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->p:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->r:[B

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->c([B)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method
