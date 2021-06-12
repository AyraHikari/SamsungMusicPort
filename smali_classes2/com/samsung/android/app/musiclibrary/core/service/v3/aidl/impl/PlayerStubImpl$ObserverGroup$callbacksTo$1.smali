.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbacksTo$1;
.super Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbacksTo$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbacksTo$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->access$getCallbackFromAidl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 270
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 271
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    .line 273
    :try_start_0
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;

    .line 172
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 279
    check-cast v2, Ljava/lang/Exception;

    goto :goto_1

    :catch_1
    move-exception v2

    .line 275
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 276
    check-cast v2, Ljava/lang/Exception;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
    .locals 3

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbacksTo$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->access$getCallbackFromAidl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 194
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 195
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    .line 197
    :try_start_0
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;

    .line 143
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 203
    check-cast v2, Ljava/lang/Exception;

    goto :goto_1

    :catch_1
    move-exception v2

    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 200
    check-cast v2, Ljava/lang/Exception;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V
    .locals 3

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbacksTo$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->access$getCallbackFromAidl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 213
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    .line 216
    :try_start_0
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;

    .line 150
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 222
    check-cast v2, Ljava/lang/Exception;

    goto :goto_1

    :catch_1
    move-exception v2

    .line 218
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 219
    check-cast v2, Ljava/lang/Exception;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;",
            ")V"
        }
    .end annotation

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->onQueueChanged(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbacksTo$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->access$getCallbackFromAidl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 232
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 233
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    .line 235
    :try_start_0
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;

    .line 158
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;

    invoke-direct {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 157
    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;->onQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 241
    check-cast v2, Ljava/lang/Exception;

    goto :goto_1

    :catch_1
    move-exception v2

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 238
    check-cast v2, Ljava/lang/Exception;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->onQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbacksTo$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->access$getCallbackFromAidl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 251
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 252
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    .line 254
    :try_start_0
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;

    .line 167
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;->onQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 260
    check-cast v2, Ljava/lang/Exception;

    goto :goto_1

    :catch_1
    move-exception v2

    .line 256
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 257
    check-cast v2, Ljava/lang/Exception;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
