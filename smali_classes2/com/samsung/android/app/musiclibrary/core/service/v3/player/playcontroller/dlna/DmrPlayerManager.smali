.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/DmrPlayerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/DmrPlayerManager;

.field private static dmrPlayer:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/SimpleAVPlayerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/DmrPlayerManager;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/DmrPlayerManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/DmrPlayerManager;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/DmrPlayerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createDmrPlayer()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/SimpleAVPlayerManager;
    .locals 1

    .line 17
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/SimpleAVPlayerManager;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/SimpleAVPlayerManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getDmrPlayer()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/SimpleAVPlayerManager;
    .locals 1

    .line 7
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/DmrPlayerManager;->dmrPlayer:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/SimpleAVPlayerManager;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/DmrPlayerManager;->createDmrPlayer()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/SimpleAVPlayerManager;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final releaseDmrPlayer()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/SimpleAVPlayerManager;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/DmrPlayerManager;->dmrPlayer:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/dlna/SimpleAVPlayerManager;

    return-void
.end method
