.class Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->onCustomEvent(I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$3;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$3;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->d(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)V

    return-void
.end method
