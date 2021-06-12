.class public final Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;,
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Dlna"

.field private static final SUB_TAG:Ljava/lang/String; = "DlnaManager"

.field private static final TAG:Ljava/lang/String; = "SV-Dlna"

.field private static sDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;


# instance fields
.field private final MEDIA_DELETE_ALL_URI:Landroid/net/Uri;

.field private final MEDIA_RENDERER_URI:Landroid/net/Uri;

.field private final MEDIA_SERVER_CONTENTS_URI:Landroid/net/Uri;

.field private final MEDIA_SERVER_URI:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mDMRFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private final mDMSFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

.field private mDlnaDBIndex:I

.field private mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

.field private mDmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlatBrowseResponseListener:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

.field private mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

.field private mItemList:Lcom/samsung/android/allshare/extension/UniqueItemArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDMSFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 381
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDMRFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 409
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatBrowseResponseListener:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_SERVER_URI:Landroid/net/Uri;

    .line 98
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_SERVER_CONTENTS_URI:Landroid/net/Uri;

    .line 99
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_RENDERER_URI:Landroid/net/Uri;

    .line 100
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_DELETE_ALL_URI:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sendDlnaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sendDlnaInfo(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/ERROR;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->handleDeviceFinderError(Lcom/samsung/android/allshare/ERROR;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sendStickyDlnaInfo(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mItemList:Lcom/samsung/android/allshare/extension/UniqueItemArray;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/extension/UniqueItemArray;)Lcom/samsung/android/allshare/extension/UniqueItemArray;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mItemList:Lcom/samsung/android/allshare/extension/UniqueItemArray;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDlnaDBIndex:I

    return p0
.end method

.method static synthetic access$1502(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDlnaDBIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->updateDmsList()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDMSFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->updateDmrList()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDMRFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/net/Uri;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_SERVER_URI:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/net/Uri;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_SERVER_CONTENTS_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public static createInstance(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .locals 7

    .line 117
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 120
    :cond_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .locals 2

    .line 124
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please ensure call createInstance first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleDeviceFinderError(Lcom/samsung/android/allshare/ERROR;Ljava/lang/String;)V
    .locals 2

    .line 565
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 566
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.music.dlna.devicefinder.error"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.music.dlna.devicefinder.error.extra"

    const/4 v1, 0x0

    .line 567
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.sec.android.app.music.dlna.extra.deviceId"

    .line 569
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private onUpdateDmrDB(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;)V"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/Device;

    .line 324
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_id"

    add-int/lit8 v5, v1, 0x1

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "avplayer_id"

    .line 326
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "avplayer_name"

    .line 327
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "album_art"

    .line 330
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "nic_id"

    .line 332
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->getNIC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_seekable_on_paused"

    .line 334
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->isSeekableOnPaused()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 333
    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "ip_address"

    .line 335
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v5

    goto :goto_0

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_RENDERER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 344
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_RENDERER_URI:Landroid/net/Uri;

    .line 345
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    return-void
.end method

.method private onUpdateDmsDB(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;)V"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/Device;

    .line 278
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_id"

    add-int/lit8 v5, v1, 0x1

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "provider_id"

    .line 280
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "provider_name"

    .line 281
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "album_art"

    .line 285
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "nic_id"

    .line 287
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->getNIC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v5

    goto :goto_0

    .line 298
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_SERVER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 299
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_SERVER_URI:Landroid/net/Uri;

    .line 300
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    return-void
.end method

.method private sendDlnaInfo(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 592
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sendDlnaInfo(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private sendDlnaInfo(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDlnaInfo action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " extraWhat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extraDeviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.music.dlna.connectivitychanged"

    .line 600
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.sec.android.app.music.dlna.connectivitychanged.extra.what"

    .line 601
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sec.android.app.music.dlna.extra.deviceId"

    .line 602
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendStickyDlnaInfo(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendStickyDlnaInfo action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " extraWhat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extraDeviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.music.dlna.flat.searching.info"

    .line 584
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.sec.android.app.music.dlna.flat.searching.extra.what"

    .line 585
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sec.android.app.music.dlna.extra.deviceId"

    .line 586
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateDmrList()V
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    .line 308
    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-SV-Dlna"

    const-string v1, "updateDmrList getDeviceCheckedList is null."

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 315
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->onUpdateDmrDB(Ljava/util/ArrayList;)V

    const-string v1, "SV-Dlna"

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDmrList size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateDmsList()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    .line 257
    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-SV-Dlna"

    const-string v1, "updateDmsList getDeviceCheckedList is null."

    .line 261
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 264
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->onUpdateDmsDB(Ljava/util/ArrayList;)V

    .line 265
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDmsList:Ljava/util/ArrayList;

    const-string v0, "SV-Dlna"

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDmsList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDmsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindDlnaService(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SV-Dlna"

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindDlnaService callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_DELETE_ALL_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;)V

    const-string p1, "com.samsung.android.allshare.media"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    return-void
.end method

.method public clear(Z)V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " clear requestToDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 195
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    if-eqz p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    invoke-static {p1}, Lcom/samsung/android/allshare/ServiceConnector;->deleteServiceProvider(Lcom/samsung/android/allshare/ServiceProvider;)V

    .line 201
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    .line 202
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    .line 205
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_DELETE_ALL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public createSecAVPlayer(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;
    .locals 5

    .line 614
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-SV-Dlna"

    const-string v0, "createSecAVPlayer() failed. DeviceFinder is null."

    .line 615
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    .line 620
    invoke-virtual {v0, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 623
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/allshare/Device;

    .line 624
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 625
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    move-object v2, v3

    check-cast v2, Lcom/samsung/android/allshare/media/AVPlayer;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;-><init>(Lcom/samsung/android/allshare/media/AVPlayer;Landroid/content/Context;)V

    .line 626
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setDmrStatusInfo(Lcom/samsung/android/allshare/Device;)V

    :cond_2
    if-nez v1, :cond_4

    const-string v2, "SMUSIC-SV-Dlna"

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSecAVPlayer() failed. Size of device list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 633
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " id: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 632
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v1
.end method

.method public refresh()V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " refresh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->refresh()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->clear(Z)V

    const/4 v0, 0x0

    .line 220
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v0, "SMUSIC-SV-Dlna"

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " release is completed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public searchAudioContents(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchAudioContents id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dmsList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDmsList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDmsList:Ljava/util/ArrayList;

    .line 231
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatBrowseResponseListener:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/extension/FlatProvider;->cancelFlatBrowse(Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/Device;

    .line 239
    check-cast v1, Lcom/samsung/android/allshare/media/Provider;

    .line 240
    new-instance v2, Lcom/samsung/android/allshare/extension/FlatProvider;

    invoke-direct {v2, v1}, Lcom/samsung/android/allshare/extension/FlatProvider;-><init>(Lcom/samsung/android/allshare/media/Provider;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

    .line 241
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "SV-Dlna"

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchAudioContents "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/extension/FlatProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is a valid provider device and start search audio items."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatBrowseResponseListener:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 245
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/allshare/extension/FlatProvider;->startFlatBrowse(Lcom/samsung/android/allshare/Item$MediaType;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    return-void

    :cond_3
    const-string p1, "SV-Dlna"

    const-string v0, "searchAudioContents There is no match provider."

    .line 249
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
