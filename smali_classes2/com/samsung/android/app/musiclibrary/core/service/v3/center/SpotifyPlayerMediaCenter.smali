.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/center/PlayerMediaCenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter$Companion;

.field private static final EMPTY_TAG:Ljava/lang/String; = ""

.field private static volatile INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;


# instance fields
.field private active:Z

.field private player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;
    .locals 1

    .line 8
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;)V
    .locals 0

    .line 8
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;

    return-void
.end method


# virtual methods
.method public getActive()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;->active:Z

    return v0
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPlayerTag()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;->active:Z

    return-void
.end method

.method public setPlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V
    .locals 1

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    return-void
.end method

.method public unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    :cond_0
    return-void
.end method
