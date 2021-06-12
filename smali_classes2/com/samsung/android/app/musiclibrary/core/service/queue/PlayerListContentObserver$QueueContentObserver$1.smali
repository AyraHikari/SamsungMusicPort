.class Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->access$102(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;J)J

    const-string v0, "SV-List"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do run ! mLastLoadCompleteTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;)Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;)Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;->onContentChanged(ZZLandroid/net/Uri;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->access$502(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;Z)Z

    return-void
.end method
