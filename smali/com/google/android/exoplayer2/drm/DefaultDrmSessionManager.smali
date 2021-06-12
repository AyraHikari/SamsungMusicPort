.class public Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManager;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager<",
        "TT;>;",
        "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<",
            "TT;>.MediaDrmHandler;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/UUID;

.field private final c:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

.field private final g:Z

.field private final h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private k:Landroid/os/Looper;

.field private l:I

.field private m:[B


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 256
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/google/android/exoplayer2/C;->c:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->a(ZLjava/lang/Object;)V

    .line 355
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    .line 356
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->c:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    .line 357
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->d:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .line 358
    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->e:Ljava/util/HashMap;

    .line 359
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->f:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    .line 360
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->g:Z

    .line 361
    iput p6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->h:I

    const/4 p1, 0x0

    .line 362
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->l:I

    .line 363
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->i:Ljava/util/List;

    .line 364
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->j:Ljava/util/List;

    if-eqz p5, :cond_0

    const-string p1, "sessionSharing"

    const-string p3, "enable"

    .line 366
    invoke-interface {p2, p1, p3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;)V

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->a(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 6

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->b:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 622
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->b:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    .line 623
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/drm/DrmInitData;->a(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v3

    .line 624
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a(Ljava/util/UUID;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/google/android/exoplayer2/C;->d:Ljava/util/UUID;

    .line 625
    invoke-virtual {v5, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/exoplayer2/C;->c:Ljava/util/UUID;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a(Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    .line 626
    iget-object v4, v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 627
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 631
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 636
    :cond_5
    sget-object p0, Lcom/google/android/exoplayer2/C;->e:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x0

    .line 637
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_9

    .line 638
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 639
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    .line 640
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->b([B)I

    move-result p2

    goto :goto_3

    :cond_6
    const/4 p2, -0x1

    .line 641
    :goto_3
    sget v2, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_7

    if-nez p2, :cond_7

    return-object p1

    .line 643
    :cond_7
    sget v2, Lcom/google/android/exoplayer2/util/Util;->a:I

    if-lt v2, v3, :cond_8

    if-ne p2, v4, :cond_8

    return-object p1

    :cond_8
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 650
    :cond_9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->i:Ljava/util/List;

    return-object p0
.end method

.method private static a(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;Ljava/util/UUID;)[B
    .locals 2

    .line 654
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    .line 655
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 657
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->a([BLjava/util/UUID;)[B

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->l:I

    return p0
.end method

.method private static b(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;Ljava/util/UUID;)Ljava/lang/String;
    .locals 2

    .line 668
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a:Ljava/lang/String;

    .line 669
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/C;->d:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "video/mp4"

    .line 670
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "audio/mp4"

    .line 671
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p0, "cenc"

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "TT;>;"
        }
    .end annotation

    move-object v13, p0

    move-object/from16 v10, p1

    .line 504
    iget-object v0, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->k:Landroid/os/Looper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->k:Landroid/os/Looper;

    if-ne v0, v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 505
    iget-object v0, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iput-object v10, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->k:Landroid/os/Looper;

    .line 507
    iget-object v0, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    if-nez v0, :cond_2

    .line 508
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-direct {v0, p0, v10}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    .line 514
    :cond_2
    iget-object v0, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->m:[B

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 515
    iget-object v0, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    move-object/from16 v3, p2

    invoke-static {v3, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    if-nez v0, :cond_3

    .line 517
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    iget-object v1, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;)V

    .line 518
    iget-object v1, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->f:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->a(Ljava/lang/Exception;)V

    .line 519
    new-instance v1, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;

    new-instance v2, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;-><init>(Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V

    return-object v1

    .line 521
    :cond_3
    iget-object v3, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;Ljava/util/UUID;)[B

    move-result-object v3

    .line 522
    iget-object v4, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move-object v4, v3

    goto :goto_2

    :cond_4
    move-object v4, v2

    move-object v5, v4

    .line 526
    :goto_2
    iget-boolean v0, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->g:Z

    if-nez v0, :cond_6

    .line 527
    iget-object v0, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    move-object v2, v0

    goto :goto_3

    .line 531
    :cond_6
    iget-object v0, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 532
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a([B)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v2, v1

    :cond_8
    :goto_3
    if-nez v2, :cond_9

    .line 541
    new-instance v14, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v1, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    iget-object v2, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->c:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget v6, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->l:I

    iget-object v7, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->m:[B

    iget-object v8, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->e:Ljava/util/HashMap;

    iget-object v9, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->d:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iget-object v11, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->f:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    iget v12, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->h:I

    move-object v0, v14

    move-object v3, p0

    move-object/from16 v10, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;[BLjava/lang/String;I[BLjava/util/HashMap;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;I)V

    .line 555
    iget-object v0, v13, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->i:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    move-object v14, v2

    .line 557
    :goto_4
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a()V

    return-object v14
.end method

.method public a()V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 594
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d()V

    goto :goto_0

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->f:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<",
            "TT;>;)V"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 587
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "TT;>;)V"
        }
    .end annotation

    .line 563
    instance-of v0, p1, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;

    if-eqz v0, :cond_0

    return-void

    .line 568
    :cond_0
    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 569
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->j:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 574
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->c()V

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 602
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 604
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z
    .locals 5
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 473
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->m:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 479
    iget v0, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->b:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/drm/DrmInitData;->a(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    sget-object v3, Lcom/google/android/exoplayer2/C;->c:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DefaultDrmSessionMgr"

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return v2

    .line 488
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->a:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string v0, "cenc"

    .line 489
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "cbc1"

    .line 492
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cbcs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cens"

    .line 493
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return v1

    .line 496
    :cond_5
    :goto_1
    sget p1, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_7
    :goto_3
    return v1
.end method
