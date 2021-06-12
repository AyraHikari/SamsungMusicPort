.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2$1;
.super Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->notifyExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->notifyMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->notifyPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    .locals 1
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

    .line 29
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->onQueueChanged(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->notifyQueueChanged(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    return-void
.end method

.method public onQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->onQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->notifyQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    return-void
.end method
