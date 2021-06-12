.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$queueDao$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$queueDao$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;
    .locals 2

    .line 46
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$queueDao$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;->getQueueDao$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository$queueDao$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;

    move-result-object v0

    return-object v0
.end method
