.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;,
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    }
.end annotation


# static fields
.field private static final CONNECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static final SUB_TAG:Ljava/lang/String; = "ServiceUtils-"

.field private static final TAG:Ljava/lang/String; = "SV"

.field private static final UNDEFINED:I = -0x1

.field private static sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

.field private static sServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->EMPTY_LIST:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->CONNECTION_MAP:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 91
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 75
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->CONNECTION_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;
    .locals 1

    .line 75
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;
    .locals 0

    .line 75
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    return-object p0
.end method

.method private static addQueue(II[JZILjava/lang/String;Z)V
    .locals 8

    if-eqz p2, :cond_2

    .line 540
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 552
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_1

    return-void

    .line 557
    :cond_1
    :try_start_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "queue_playlist_id"

    .line 558
    invoke-virtual {v7, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "queue_playlist_count"

    .line 559
    array-length v0, p2

    invoke-virtual {v7, p5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p5, "queue_playlist_all"

    .line 560
    invoke-virtual {v7, p5, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 561
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->addQueue(II[JZILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 563
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->printLogWithCaller()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public static addQueue(I[JLjava/lang/String;Z)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    .line 535
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->addQueue(II[JZILjava/lang/String;Z)V

    return-void
.end method

.method public static addQueue([JI)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v0, p1

    move-object v2, p0

    .line 517
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->addQueue(II[JZILjava/lang/String;Z)V

    return-void
.end method

.method public static addQueueItems(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 569
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 572
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_1

    return-void

    .line 576
    :cond_1
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;-><init>(Ljava/util/List;)V

    move-object p0, v1

    :goto_0
    const/4 v1, 0x0

    .line 577
    invoke-interface {v0, p1, p0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->addQueueItems(ILcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 580
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public static bindDlna()V
    .locals 1

    const/4 v0, 0x1

    .line 992
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    return-void
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ServiceConnection;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 113
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;Z)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object p0

    return-object p0
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;Z)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ServiceConnection;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;Z)",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;"
        }
    .end annotation

    .line 118
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    .line 121
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.app.music.core.action.BIND_SERVICE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 123
    :cond_0
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 124
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {v0, p1, p0, p2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 126
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sServiceHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 127
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sServiceHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    :cond_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->CONNECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    return-object p0

    :cond_2
    const-string p0, "SMUSIC-SV"

    const-string p1, "ServiceUtils-Failed to bind to service"

    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static buffering()I
    .locals 2

    .line 930
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 935
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->buffering()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 937
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private static canAddQueue(I)Z
    .locals 1

    const v0, 0x10000b

    if-ne p0, v0, :cond_0

    .line 446
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCpAttrs()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->e(I)Z

    move-result p0

    return p0

    .line 448
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCpAttrs()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->e(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static changeSoundPathTo(I)V
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string v0, "SMUSIC-SV"

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeSoundPathTo invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x15

    .line 1057
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x14

    .line 1054
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static changeToDefaultPlayer()V
    .locals 1

    const/16 v0, 0xa

    .line 1044
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    return-void
.end method

.method public static changeToDmrPlayer(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x9

    .line 1040
    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static changeToWfdDevice()V
    .locals 1

    const/16 v0, 0xb

    .line 1048
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    return-void
.end method

.method private static convertToQueueItems(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 799
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static deleteAidlReferenceIfEmpty()V
    .locals 4

    .line 169
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->CONNECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->ensureServiceHandler()V

    .line 176
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sServiceHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static deleteRadioQueue(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SMUSIC-SV"

    const-string v1, "ServiceUtils-deleteRadioQueue()"

    .line 416
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_playlist_id"

    .line 418
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x24

    .line 419
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEventBundle(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static deleteRadioQueue([I)V
    .locals 2

    const-string v0, "SMUSIC-SV"

    const-string v1, "ServiceUtils-deleteRadioQueue()"

    .line 409
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_delete"

    .line 411
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/16 p0, 0x24

    .line 412
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEventBundle(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static dlnaDmrVolumeDown()V
    .locals 1

    const/4 v0, 0x5

    .line 1008
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    return-void
.end method

.method public static dlnaDmrVolumeUp()V
    .locals 1

    const/4 v0, 0x6

    .line 1004
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    return-void
.end method

.method public static duration()J
    .locals 5

    .line 898
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 903
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->duration()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    move-exception v0

    .line 905
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v1
.end method

.method private static ensureServiceHandler()V
    .locals 2

    .line 181
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sServiceHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$1;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$1;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sServiceHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static getActivePlayerQueue()I
    .locals 1

    const/16 v0, 0xf

    .line 1090
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getIntegerExtra(I)I

    move-result v0

    return v0
.end method

.method public static getAudioSessionId()I
    .locals 1

    const/4 v0, 0x3

    .line 1137
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getIntegerExtra(I)I

    move-result v0

    return v0
.end method

.method private static getBooleanExtra(I)Z
    .locals 0

    .line 1166
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getCallStack([Ljava/lang/StackTraceElement;II)Ljava/lang/String;
    .locals 2

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, p1

    .line 476
    array-length v1, p0

    if-ge v1, p2, :cond_0

    array-length p2, p0

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_1

    .line 478
    aget-object v1, p0, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCpAttrs()I
    .locals 2

    .line 1287
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getCurrentAudioId()J
    .locals 2

    .line 1270
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentBinder()Landroid/os/IBinder;
    .locals 1

    .line 100
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getCurrentPath()Ljava/lang/String;
    .locals 1

    .line 1262
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getPlayingUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDlnaPlayingDmrId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x7

    .line 1157
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDlnaPlayingNic()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    .line 1153
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtraInformation(I)Ljava/lang/String;
    .locals 4

    .line 1192
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-SV"

    .line 1193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtraInformation but condition is abnormal. Please check method call timing. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1199
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "SMUSIC-SV"

    .line 1203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtraInformation but service method call is fail. Please check method call timing. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static getFloatExtra(I)F
    .locals 0

    .line 1175
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getIntegerExtra(I)I
    .locals 0

    .line 1184
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getKeyword()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x9

    .line 1149
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getListItemCount()I
    .locals 2

    .line 1279
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "extra.list_length"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 1

    .line 762
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 763
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;-><init>()V

    return-object v0

    .line 766
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 768
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 770
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;-><init>()V

    return-object v0
.end method

.method public static getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 682
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 683
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0

    .line 686
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 688
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 690
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 694
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 695
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0

    .line 698
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 700
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 702
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public static getMusicQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 742
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 743
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 748
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getQueueList()Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    move-result-object v0

    .line 749
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->convertToQueueItems(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 751
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 753
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static getMusicQueueCountFromService()I
    .locals 1

    const/16 v0, 0xc

    .line 758
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getIntegerExtra(I)I

    move-result v0

    return v0
.end method

.method public static getNextRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 718
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 719
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0

    .line 722
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getNextRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 724
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 726
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaySpeed()F
    .locals 1

    const/4 v0, 0x4

    .line 1141
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getFloatExtra(I)F

    move-result v0

    return v0
.end method

.method public static getPlayingItemExtras()Landroid/os/Bundle;
    .locals 1

    .line 786
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 790
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getPlayingItemExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 792
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 794
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public static getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 706
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 707
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0

    .line 710
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 712
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 714
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 730
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 731
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0

    .line 734
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 736
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 738
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public static getRadioQueueExtras()Landroid/os/Bundle;
    .locals 2

    .line 774
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 778
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getRadioQueueExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 780
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static getScreenOffMusic()Z
    .locals 1

    const/16 v0, 0xb

    .line 1161
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getBooleanExtra(I)Z

    move-result v0

    return v0
.end method

.method public static getSettingsPlaySpeed()F
    .locals 1

    const/16 v0, 0x8

    .line 1121
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getFloatExtra(I)F

    move-result v0

    return v0
.end method

.method public static getSortMode()I
    .locals 1

    const/16 v0, 0xe

    .line 647
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getIntegerExtra(I)I

    move-result v0

    return v0
.end method

.method public static getTitle()Ljava/lang/String;
    .locals 1

    .line 1295
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriType()I
    .locals 3

    .line 1304
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "extra.uri_type"

    const/4 v2, -0x1

    .line 1305
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isAddQueueEnabled()Z
    .locals 2

    .line 982
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    .line 983
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->b(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBtConnected()Z
    .locals 1

    const/16 v0, 0xa

    .line 1133
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getBooleanExtra(I)Z

    move-result v0

    return v0
.end method

.method public static isCastPlaying()Z
    .locals 2

    .line 1250
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    goto :goto_0

    .line 1253
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static isConnectingWfd()Z
    .locals 1

    const/4 v0, 0x1

    .line 1125
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getBooleanExtra(I)Z

    move-result v0

    return v0
.end method

.method public static isDmrPlaying()Z
    .locals 2

    .line 1237
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    goto :goto_0

    .line 1240
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static isHdmiConnected()Z
    .locals 1

    const/4 v0, 0x2

    .line 1129
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getBooleanExtra(I)Z

    move-result v0

    return v0
.end method

.method public static isLocalTrack()Z
    .locals 2

    .line 987
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    .line 988
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->c(I)Z

    move-result v0

    return v0
.end method

.method public static isPlaying()Z
    .locals 1

    .line 1210
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    return v0
.end method

.method public static isRadio()Z
    .locals 2

    .line 1227
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 1228
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isRadioPlaying()Z
    .locals 1

    .line 1219
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    return v0
.end method

.method public static isSupportPlaySpeed()Z
    .locals 1

    const/4 v0, 0x5

    .line 1145
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getBooleanExtra(I)Z

    move-result v0

    return v0
.end method

.method public static moveQueueItem(II)V
    .locals 1

    .line 609
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    return-void

    .line 613
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->moveQueueItem(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 615
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static moveRadioStation(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 970
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_station_id"

    .line 971
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p0, "arg_track_id"

    .line 973
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "arg_play_station"

    .line 975
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p0, 0x22

    .line 976
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEventBundle(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static notifyUserInteraction()V
    .locals 2

    const/16 v0, 0x2a

    const/4 v1, 0x0

    .line 1325
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method private static openList(IILjava/lang/String;[JILjava/lang/String;Z)V
    .locals 9

    .line 249
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;

    move-object v1, v0

    move-object v2, p5

    move-object v3, p3

    move v4, p6

    move v5, p0

    move v6, p1

    move-object v7, p2

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;-><init>(Ljava/lang/String;[JZIILjava/lang/String;I)V

    .line 272
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->start()V

    .line 274
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->printLogWithCaller()V

    return-void
.end method

.method public static openList(ILjava/lang/String;[JI)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 234
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openList(IILjava/lang/String;[JILjava/lang/String;Z)V

    return-void
.end method

.method public static openQueuePosition(IIZ)V
    .locals 1

    .line 494
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    return-void

    .line 498
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->openQueuePosition(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 500
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 502
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->printLogWithCaller()V

    return-void
.end method

.method public static openQueuePosition(IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 485
    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openQueuePosition(IIZ)V

    return-void
.end method

.method public static openRadioQueuePosition(IIZ)V
    .locals 2

    const-string v0, "SMUSIC-SV"

    const-string v1, "ServiceUtils-openRadioQueuePosition()"

    .line 378
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_position"

    .line 380
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "arg_direction"

    .line 381
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "arg_is_play"

    .line 382
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p0, 0x26

    .line 383
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEventBundle(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static pause()V
    .locals 1

    .line 840
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    return-void

    .line 844
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 846
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static pauseRadio()V
    .locals 1

    const/16 v0, 0x1d

    .line 953
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    return-void
.end method

.method public static play()V
    .locals 1

    .line 824
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    return-void

    .line 828
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 830
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 832
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->printLogWithCaller()V

    return-void
.end method

.method public static play(IIILjava/lang/String;[J)V
    .locals 8

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 315
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(IIILjava/lang/String;[JILjava/lang/String;Z)V

    return-void
.end method

.method private static play(IIILjava/lang/String;[JILjava/lang/String;Z)V
    .locals 8

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 367
    invoke-static/range {p1 .. p7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openList(IILjava/lang/String;[JILjava/lang/String;Z)V

    goto :goto_0

    .line 369
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->canAddQueue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    move v1, p0

    move v2, p1

    move-object v3, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    .line 370
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->addQueue(II[JZILjava/lang/String;Z)V

    goto :goto_0

    .line 372
    :cond_1
    invoke-static/range {p1 .. p7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openList(IILjava/lang/String;[JILjava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public static play(IIILjava/lang/String;[JLjava/lang/String;Z)V
    .locals 8

    const/4 v5, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    .line 360
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(IIILjava/lang/String;[JILjava/lang/String;Z)V

    return-void
.end method

.method public static play(IILjava/lang/String;[JI)V
    .locals 8

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 292
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(IIILjava/lang/String;[JILjava/lang/String;Z)V

    return-void
.end method

.method public static play(IILjava/lang/String;[JILjava/lang/String;Z)V
    .locals 8

    const/4 v1, 0x0

    move v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    .line 335
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(IIILjava/lang/String;[JILjava/lang/String;Z)V

    return-void
.end method

.method public static playNext()V
    .locals 1

    .line 855
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    return-void

    .line 859
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->next()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 861
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static playNextRadio()V
    .locals 1

    const/16 v0, 0x1e

    .line 957
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    return-void
.end method

.method public static playPrev(Z)V
    .locals 1

    .line 870
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    return-void

    .line 874
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->prev(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 876
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static playPrevRadio(Z)V
    .locals 1

    .line 961
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1f

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static playRadio()V
    .locals 1

    const/16 v0, 0x1c

    .line 948
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 949
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->printLogWithCaller()V

    return-void
.end method

.method public static playRadioQueue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J[JIZ)V
    .locals 2

    const-string v0, "SMUSIC-SV"

    const-string v1, "ServiceUtils-playRadioQueue()"

    .line 395
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_play_mode"

    .line 397
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "arg_playlist_id"

    .line 398
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_playlist_name"

    .line 399
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_playlist_description"

    .line 400
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "arg_playlist_ad_info"

    .line 401
    invoke-virtual {v0, p0, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "arg_list"

    .line 402
    invoke-virtual {v0, p0, p6}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string p0, "arg_position"

    .line 403
    invoke-virtual {v0, p0, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "arg_is_play"

    .line 404
    invoke-virtual {v0, p0, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p0, 0x23

    .line 405
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEventBundle(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static playRadioQueue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J[JZ)V
    .locals 9

    const/4 v7, -0x1

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move/from16 v8, p7

    .line 388
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playRadioQueue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J[JIZ)V

    return-void
.end method

.method public static position()J
    .locals 5

    .line 914
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 919
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->position()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    move-exception v0

    .line 921
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v1
.end method

.method private static printLogWithCaller()V
    .locals 5

    .line 454
    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 455
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const-string v1, "SMUSIC-SV"

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceUtils- method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    .line 457
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " called from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    const/4 v4, 0x5

    .line 458
    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCallStack([Ljava/lang/StackTraceElement;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SMUSIC-SV"

    const-string v2, "ServiceUtils- Please check below stack information"

    .line 461
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static putToken(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "SMUSIC-SV"

    const-string v0, "ServiceUtils- Trying to put with null token"

    .line 138
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->CONNECTION_MAP:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static radioSetMode(II)V
    .locals 2

    .line 431
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_set_mode"

    .line 432
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "arg_set_mode_value"

    .line 433
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p0, 0x28

    .line 434
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEventBundle(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static radioToggleMode(I)V
    .locals 2

    .line 438
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_toggle_mode"

    .line 439
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p0, 0x29

    .line 440
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEventBundle(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static refreshDlna()V
    .locals 1

    const/4 v0, 0x2

    .line 996
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    return-void
.end method

.method public static registerCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)Z
    .locals 2

    .line 654
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 658
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->registerCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 661
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 662
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    return v1
.end method

.method public static releaseDormancyMode()Z
    .locals 1

    const/16 v0, 0x12

    .line 1321
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getBooleanExtra(I)Z

    move-result v0

    return v0
.end method

.method public static reloadCurrentPlayingItem(Z)V
    .locals 1

    .line 1094
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2b

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 1095
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->printLogWithCaller()V

    return-void
.end method

.method public static reloadRadioQueue(Z)V
    .locals 1

    .line 965
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x20

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static varargs removeQueueAudioIds([J)I
    .locals 2

    .line 597
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 601
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->removeQueueAudioIds([J)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 603
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static varargs removeQueuePosition([I)I
    .locals 2

    .line 585
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 589
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->removeQueuePosition([I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 591
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static removeToken(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "SMUSIC-SV"

    const-string v0, "ServiceUtils- Trying to remove with null token"

    .line 146
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->CONNECTION_MAP:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->deleteAidlReferenceIfEmpty()V

    return-void
.end method

.method public static reorderRadioQueue(II)V
    .locals 2

    const-string v0, "SMUSIC-SV"

    const-string v1, "ServiceUtils-reorderRadioQueue()"

    .line 423
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_reorder_from"

    .line 425
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "arg_reorder_to"

    .line 426
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p0, 0x25

    .line 427
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEventBundle(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static requestQueue()V
    .locals 1

    const/16 v0, 0x13

    .line 1024
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    return-void
.end method

.method public static requestRadioQueue()V
    .locals 1

    const/16 v0, 0x27

    .line 1028
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    return-void
.end method

.method public static saveSettingsPlaySpeed(F)V
    .locals 1

    .line 1066
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xc

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static saveSupportAod(I)V
    .locals 1

    .line 1086
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x17

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static seek(J)J
    .locals 3

    .line 885
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 890
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->seek(J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 892
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v1
.end method

.method public static selectDlnaDms(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 1000
    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method private static sendCustomEvent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1020
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static sendCustomEvent(ILjava/lang/String;)V
    .locals 1

    .line 1099
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    return-void

    .line 1103
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->sendCustomEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1105
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static sendCustomEventBundle(ILandroid/os/Bundle;)V
    .locals 1

    .line 1110
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    return-void

    .line 1114
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->sendCustomEventBundle(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1116
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setActiveQueueType(I)V
    .locals 1

    .line 1317
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x21

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static setAdaptSound(Z)V
    .locals 1

    .line 1070
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xe

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static setBargeIn(Z)V
    .locals 1

    .line 1082
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x11

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static setDlnaDmrMute()V
    .locals 1

    const/4 v0, 0x4

    .line 1012
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    return-void
.end method

.method public static setLockScreen(Z)V
    .locals 1

    .line 1074
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xf

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static setPlaySpeed(F)V
    .locals 1

    .line 1016
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x7

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static setScreenOffMusic(Z)V
    .locals 1

    .line 1078
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static setSkipSilence(Z)V
    .locals 1

    .line 1036
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x12

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static setSmartVolume(Z)V
    .locals 1

    .line 1032
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static setSortMode(I)V
    .locals 1

    .line 643
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1a

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method private static toggleMode(I)V
    .locals 1

    .line 632
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    return-void

    .line 636
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->toggleQueueMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 638
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static togglePlay()V
    .locals 1

    .line 808
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    return-void

    .line 812
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->togglePlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 814
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 816
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->printLogWithCaller()V

    return-void
.end method

.method public static togglePlayRadio()V
    .locals 1

    const/16 v0, 0x1b

    .line 943
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 944
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->printLogWithCaller()V

    return-void
.end method

.method public static toggleRepeat()V
    .locals 1

    const/4 v0, 0x1

    .line 624
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->toggleMode(I)V

    return-void
.end method

.method public static toggleShuffle()V
    .locals 1

    const/4 v0, 0x2

    .line 628
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->toggleMode(I)V

    return-void
.end method

.method public static toggleUnionRepeatShuffle()V
    .locals 1

    const/4 v0, 0x3

    .line 620
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->toggleMode(I)V

    return-void
.end method

.method public static unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "SMUSIC-SV"

    const-string v0, "ServiceUtils- Trying to unbind with null token"

    .line 155
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 159
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->CONNECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;

    if-nez v0, :cond_1

    const-string p0, "SMUSIC-SV"

    const-string v0, "ServiceUtils- Trying to unbind for unknown Context"

    .line 161
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 165
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->deleteAidlReferenceIfEmpty()V

    return-void
.end method

.method public static unregisterCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    .locals 1

    .line 671
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    return-void

    .line 675
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->unregisterCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 677
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static wasServiceConnected()Z
    .locals 1

    .line 96
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
