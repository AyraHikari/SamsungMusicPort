.class public final Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field public static final MILK_FILE_FORMAT:Ljava/lang/String; = ".mdrm"

.field private static final TAG:Ljava/lang/String;

.field private static final VALID_CACHING_TIME:I = 0xbb8


# instance fields
.field private final FINALIZE_GUARDIAN:Ljava/lang/Object;

.field private final mClientId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDeleteCachingHandler:Landroid/os/Handler;

.field private final mDeviceKey:Ljava/lang/String;

.field private final mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

.field private final mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSdCardPathPreFix:Ljava/lang/String;

.field private final mTable:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mTable:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    .line 53
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->FINALIZE_GUARDIAN:Ljava/lang/Object;

    .line 238
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDeleteCachingHandler:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mClientId:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDeviceKey:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    .line 73
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " Local drm server created : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;)Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mTable:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->closeInternal(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->getSdCardPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private closeInternal(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 233
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFd()I

    move-result v0

    if-lez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    :cond_0
    return-void
.end method

.method private getSdCardPath()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mSdCardPathPreFix:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mSdCardPathPreFix:Ljava/lang/String;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mSdCardPathPreFix:Ljava/lang/String;

    return-object v0
.end method

.method public static hasError(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)Z
    .locals 1
    .param p0    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFd()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isAutoTimeChecked(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    .line 90
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 91
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "auto_time"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 96
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    const-string v2, "isAutoTimeChecked : "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isDrmFile(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".mdrm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private killServerInternal()V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mTable:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->closeAll()V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;->stopServer()V

    .line 154
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    const-string v1, "killServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized acquireServer()V
    .locals 3

    monitor-enter p0

    .line 106
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 107
    monitor-exit p0

    return-void

    .line 109
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isAlive()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 111
    monitor-exit p0

    return-void

    .line 113
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mClientId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDeviceKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;->startServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startServer : Ref : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 105
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 223
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 224
    monitor-exit p0

    return-void

    .line 226
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 227
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFd()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 228
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDeleteCachingHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 222
    monitor-exit p0

    throw p1
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getLyrics(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)[B
    .locals 2
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 213
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 214
    new-array p1, v1, [B

    return-object p1

    .line 216
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->hasError(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    new-array p1, v1, [B

    return-object p1

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;->getLyrics(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)[B

    move-result-object p1

    return-object p1
.end method

.method public isAlive()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;->isServerAlive()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized killServer()V
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 140
    monitor-exit p0

    return-void

    .line 142
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->killServerInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 138
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 178
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z

    const/16 v1, -0x19

    if-eqz v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    const-string p2, "Server is killed!, Can\'t open file!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 191
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mTable:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->get(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 193
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDeleteCachingHandler:Landroid/os/Handler;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFd()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit p0

    return-object v0

    .line 196
    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isAutoTimeChecked(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 197
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    const-string p2, "Auto time is not checked-103"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x67

    .line 198
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 200
    :cond_3
    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;->open(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p1

    .line 201
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result p3

    if-gez p3, :cond_4

    .line 203
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open error occurs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_4
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mTable:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-virtual {p3, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->put(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    monitor-exit p0

    return-object p1

    .line 179
    :cond_5
    :goto_0
    :try_start_4
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 177
    monitor-exit p0

    throw p1
.end method

.method public restartServer()V
    .locals 1

    .line 132
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;->restartServer()V

    return-void
.end method

.method public declared-synchronized unacquireServer()V
    .locals 1

    monitor-enter p0

    .line 118
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 119
    monitor-exit p0

    return-void

    .line 121
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    :cond_1
    if-lez v0, :cond_2

    .line 126
    monitor-exit p0

    return-void

    .line 128
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->killServer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 117
    monitor-exit p0

    throw v0
.end method
