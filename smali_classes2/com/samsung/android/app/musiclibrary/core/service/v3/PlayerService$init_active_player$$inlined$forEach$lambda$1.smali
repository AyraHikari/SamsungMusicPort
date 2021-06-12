.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;
.super Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->init_active_player()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

.field private isSupposedToBePlaying:Z

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;->$player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V
    .locals 4

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;

    const-string v1, "onPlaybackStateChanged"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;->$player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;->isSupposedToBePlaying:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->isSupposedToBePlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;->$player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->access$getPlayerParcels$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;->$player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->setActivePlayerType(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;->$player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->access$changeActivePlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->access$notifyPlayerChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;Ljava/util/List;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->access$getPlayers$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 275
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    .line 91
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;->$player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;->pause()V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->isSupposedToBePlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;->isSupposedToBePlaying:Z

    return-void
.end method
