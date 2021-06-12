.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Companion;

# The value of this static final field might be set in the static constructor
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mLegacy:Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;

.field private mSaver:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Companion;

    const-string v0, "SV-List"

    .line 67
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final synthetic access$getLOG_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final saveNowPlayingQueue([J)V
    .locals 2

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;-><init>(Landroid/content/Context;[J)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mSaver:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mSaver:Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater$Saver;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 36
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->u:Z

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mLegacy:Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;->cancel()V

    .line 38
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;-><init>(Landroid/content/Context;[J)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mLegacy:Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;

    .line 39
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingDbUpdater;->mLegacy:Lcom/samsung/android/app/musiclibrary/core/service/queue/LegacyNowPlayingDbUpdater;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
