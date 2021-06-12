.class Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;Ljava/lang/String;IZI)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger$1;->e:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger$1;->b:I

    iput-boolean p4, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger$1;->c:Z

    iput p5, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 554
    new-instance v0, Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;-><init>()V

    .line 556
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger$1;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;->a:Ljava/lang/String;

    .line 557
    iget v1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger$1;->b:I

    iput v1, v0, Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;->b:I

    .line 558
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger$1;->c:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;->c:I

    .line 561
    iget v1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger$1;->d:I

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput v2, v0, Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;->d:I

    .line 565
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger$1;->e:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;->a(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueHistory;

    new-array v3, v3, [Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 567
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueHistory;-><init>(Ljava/util/List;)V

    .line 565
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->a(Landroid/content/Context;Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueHistory;)V

    const-string v1, "SV-MediaCenter"

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogMusic: PlayerQueueLogger completed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
