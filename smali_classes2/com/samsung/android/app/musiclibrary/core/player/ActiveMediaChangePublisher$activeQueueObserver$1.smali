.class public final Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$activeQueueObserver$1;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$activeQueueObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 60
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 62
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$activeQueueObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 63
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 62
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->access$getActiveMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;I)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$activeQueueObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->access$getCurrentObservable$p(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$activeQueueObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->access$changeMediaObservable(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Landroid/os/Bundle;)V

    .line 69
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    .line 225
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "SMUSIC-MediaChangeController"

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activeQueueObserver changeObservable() observable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
