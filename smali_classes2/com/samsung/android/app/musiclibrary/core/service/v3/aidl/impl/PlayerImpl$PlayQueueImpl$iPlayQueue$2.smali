.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl$iPlayQueue$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $iPlayer:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl$iPlayQueue$2;->$iPlayer:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;
    .locals 1

    .line 173
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl$iPlayQueue$2;->$iPlayer:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;->getPlayQueue()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl$iPlayQueue$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;

    move-result-object v0

    return-object v0
.end method
