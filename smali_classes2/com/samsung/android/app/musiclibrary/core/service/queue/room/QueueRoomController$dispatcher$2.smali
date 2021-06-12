.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$dispatcher$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$QueueRoomObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$dispatcher$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$dispatcher$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$dispatcher$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$dispatcher$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$dispatcher$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoomController$dispatcher$2;->invoke()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 1

    const-string v0, "queue_room"

    .line 46
    invoke-static {v0}, Lkotlinx/coroutines/ThreadPoolDispatcherKt;->a(Ljava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method
