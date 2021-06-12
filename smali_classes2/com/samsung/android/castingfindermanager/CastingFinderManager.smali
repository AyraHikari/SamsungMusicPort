.class public Lcom/samsung/android/castingfindermanager/CastingFinderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;,
        Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;
    }
.end annotation


# static fields
.field private static a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

.field private e:Lcom/samsung/android/castingfindermanager/BleAdapter;

.field private f:Lcom/samsung/android/castingfindermanager/CastAdapter;

.field private g:Landroid/media/MediaRouter;

.field private h:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

.field private i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private final p:Landroid/content/BroadcastReceiver;

.field private final q:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;

.field private final r:Landroid/media/MediaRouter$Callback;

.field private s:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;

.field private t:Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;-><init>(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->p:Landroid/content/BroadcastReceiver;

    .line 457
    new-instance v0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$2;-><init>(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->q:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;

    .line 469
    new-instance v0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$3;-><init>(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->r:Landroid/media/MediaRouter$Callback;

    .line 481
    new-instance v0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$4;-><init>(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->s:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;

    .line 493
    new-instance v0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$5;-><init>(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->t:Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;

    const-string v0, "CastingFinder1.0.5"

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CastingFinderManager  by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b:Landroid/content/Context;

    .line 212
    invoke-static {}, Lcom/samsung/android/castingfindermanager/Utils;->l()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->o:Z

    .line 214
    iget-boolean p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->o:Z

    if-nez p1, :cond_0

    const-string p1, "CastingFinder1.0.5"

    const-string p2, "Not support SmartView"

    .line 215
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 219
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c:Ljava/lang/String;

    .line 220
    new-instance p1, Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->d:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    .line 221
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->d:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(Ljava/lang/String;)V

    .line 222
    new-instance p1, Lcom/samsung/android/castingfindermanager/BleAdapter;

    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/castingfindermanager/BleAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->e:Lcom/samsung/android/castingfindermanager/BleAdapter;

    .line 223
    new-instance p1, Lcom/samsung/android/castingfindermanager/CastAdapter;

    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/castingfindermanager/CastAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->f:Lcom/samsung/android/castingfindermanager/CastAdapter;

    .line 224
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b:Landroid/content/Context;

    const-string p2, "media_router"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->g:Landroid/media/MediaRouter;

    const/4 p1, 0x0

    .line 226
    iput-boolean p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->k:Z

    .line 228
    new-instance p1, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;-><init>(Lcom/samsung/android/castingfindermanager/CastingFinderManager;Landroid/os/Handler;Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;)V

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->h:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    return p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/castingfindermanager/CastingFinderManager;
    .locals 2

    const-class v0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    monitor-enter v0

    .line 94
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/castingfindermanager/Utils;->a(Landroid/content/Context;)V

    .line 95
    sget-object v1, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    .line 98
    :cond_0
    sget-object p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 93
    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    return-object p0
.end method

.method private b(Z)V
    .locals 0

    .line 326
    invoke-direct {p0, p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c(Z)V

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->l()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b:Landroid/content/Context;

    return-object p0
.end method

.method private c(Z)V
    .locals 2

    .line 331
    invoke-static {}, Lcom/samsung/android/castingfindermanager/Utils;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    const-string p1, "CastingFinder1.0.5"

    const-string v0, "Add dlna type"

    .line 333
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 334
    iput-boolean p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->l:Z

    .line 335
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c:Ljava/lang/String;

    const-string v0, "com.samsung.android.video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c:Ljava/lang/String;

    const-string v0, "com.sec.android.app.music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c:Ljava/lang/String;

    const-string v0, "com.samsung.android.app.music.chn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c:Ljava/lang/String;

    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c:Ljava/lang/String;

    const-string v0, "com.samsung.android.gallery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 338
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->d:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(I)V

    goto :goto_1

    .line 336
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->d:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(I)V

    goto :goto_1

    :cond_3
    const-string p1, "CastingFinder1.0.5"

    const-string v0, "Remove dlna type"

    .line 341
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iput-boolean v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->l:Z

    .line 343
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->d:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->b(I)V

    goto :goto_1

    .line 346
    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->l:Z

    const-string p1, "CastingFinder1.0.5"

    const-string v0, "do not allow to connect DLNA device in Knox Mode"

    .line 347
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->l()V

    return-void
.end method

.method private e()V
    .locals 3

    .line 232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.WIFI_DISPLAY_SINK_STATE"

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.BLUETOOTH_MIRRORING_CONNECTION_CHANGED"

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.BLUETOOTH_RECEIVER_CONNECTION_CHANGED"

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.CAST_CONNECTION_CHANGED"

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->f()V

    .line 245
    iget v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->g()V

    const/4 v0, 0x1

    .line 247
    invoke-direct {p0, v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c(Z)V

    :cond_0
    const-string v0, "CastingFinder1.0.5"

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CastingFinderManagerHandler Constructor, mFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->e()V

    return-void
.end method

.method private f()V
    .locals 4

    .line 253
    invoke-static {}, Lcom/samsung/android/castingfindermanager/Utils;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 254
    iget v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 257
    iget v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    .line 259
    :cond_1
    invoke-static {}, Lcom/samsung/android/castingfindermanager/Utils;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ultra_powersaving_mode"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 264
    iget v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    :cond_3
    return-void
.end method

.method static synthetic f(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->g()V

    return-void
.end method

.method private g()V
    .locals 4

    .line 269
    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "CastingFinder1.0.5"

    const-string v1, "internalStartScanDevice skip because it\'s scanning now"

    .line 270
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->g:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->r:Landroid/media/MediaRouter$Callback;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->e:Lcom/samsung/android/castingfindermanager/BleAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/BleAdapter;->a()V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->e:Lcom/samsung/android/castingfindermanager/BleAdapter;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->s:Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/castingfindermanager/BleAdapter;->a(Lcom/samsung/android/castingfindermanager/BleAdapter$BleDeviceFinderListener;I)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->d:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->b()V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->d:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->q:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->d:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    invoke-virtual {v0, v2}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(I)V

    const-string v0, "com.sec.android.app.music"

    .line 280
    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.app.music.chn"

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->f:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->f:Lcom/samsung/android/castingfindermanager/CastAdapter;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->t:Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;)V

    .line 284
    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->k:Z

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 288
    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->k:Z

    if-nez v0, :cond_0

    const-string v0, "CastingFinder1.0.5"

    const-string v1, "internalStopScanDevice skip because it\'s not scanning now"

    .line 289
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->k:Z

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->g:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->r:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CastingFinder1.0.5"

    const-string v1, "ArrayIndexOutOfBoundsException:: RouterCallback is not added"

    .line 298
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->e:Lcom/samsung/android/castingfindermanager/BleAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/BleAdapter;->b()V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->e:Lcom/samsung/android/castingfindermanager/BleAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/BleAdapter;->c()V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->d:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a()V

    .line 304
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->d:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->b(I)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->d:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->c()V

    const-string v0, "com.sec.android.app.music"

    .line 306
    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.app.music.chn"

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->f:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->c()V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->f:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->b()V

    :cond_2
    return-void
.end method

.method static synthetic h(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i()V

    return-void
.end method

.method private i()V
    .locals 2

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CastingFinder1.0.5"

    const-string v1, "unregisterReceiver:: Receiver not registered!"

    .line 316
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->h()V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j()V

    return-void
.end method

.method private j()V
    .locals 3

    const-string v0, "CastingFinder1.0.5"

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScanState, mFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    if-nez v0, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->g()V

    goto :goto_0

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->h()V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->h:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->h:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->k()V

    return-void
.end method

.method private k()V
    .locals 8

    const/4 v0, 0x0

    .line 364
    iput-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->m:Z

    .line 366
    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->h:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    if-nez v1, :cond_0

    const-string v0, "CastingFinder1.0.5"

    const-string v1, "Do not update, mUiHandler is null"

    .line 367
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 373
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->g:Landroid/media/MediaRouter;

    invoke-virtual {v3}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 374
    iget-object v3, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->g:Landroid/media/MediaRouter;

    invoke-virtual {v3, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 375
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 376
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->semGetDeviceAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    const-string v1, "CastingFinder1.0.5"

    const-string v3, "IndexOutOfBoundsException:: route has removed when get it"

    .line 381
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->d:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    .line 385
    iget-object v3, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->e:Lcom/samsung/android/castingfindermanager/BleAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/castingfindermanager/BleAdapter;->d()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    .line 386
    iget-object v4, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->f:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/castingfindermanager/CastAdapter;->d()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    const-string v5, "CastingFinder1.0.5"

    .line 392
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update, AllDeviceCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Dlna : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Ble : "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Casting : "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->h:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    const/4 v3, 0x1

    if-lez v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;ILjava/lang/Object;)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 398
    iget v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 399
    iput-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->m:Z

    .line 400
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 102
    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "CastingFinder1.0.5"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->n:Z

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CastingFinderManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const/4 v1, 0x0

    .line 107
    iput v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->j:I

    .line 108
    new-instance v2, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;-><init>(Lcom/samsung/android/castingfindermanager/CastingFinderManager;Landroid/os/Handler;Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;)V

    iput-object v2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    .line 109
    iput-boolean v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->m:Z

    .line 110
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->d:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(Landroid/os/Handler;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->e:Lcom/samsung/android/castingfindermanager/BleAdapter;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/castingfindermanager/BleAdapter;->a(Landroid/os/Handler;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->f:Lcom/samsung/android/castingfindermanager/CastAdapter;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Landroid/os/Handler;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->n:Z

    .line 115
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;)V
    .locals 3

    .line 132
    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "CastingFinder1.0.5"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCastingFinderListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->h:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->h:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    invoke-static {v0, p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 163
    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "CastingFinder1.0.5"

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableDlna :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 122
    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "CastingFinder1.0.5"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->n:Z

    .line 126
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->i:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "CastingFinder1.0.5"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCastingFinderListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->h:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->h:Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 150
    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "CastingFinder1.0.5"

    const-string v1, "startSmartMirroring"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.smartmirroring"

    const-string v3, "com.samsung.android.smartmirroring.CastingDialog"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "more_actions_package_name"

    .line 155
    iget-object v2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "more_actions_screen_sharing_mode"

    .line 156
    iget-boolean v2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "more_actions_connection_m2tv"

    const/4 v2, 0x1

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
