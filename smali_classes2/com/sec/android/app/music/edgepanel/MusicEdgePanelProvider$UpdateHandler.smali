.class final Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler$Companion;

.field private static final EDGE_PARTIAL_UPDATE:I = 0x2

.field private static final EDGE_UPDATE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->Companion:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    const-string v0, "looper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static final synthetic access$post(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;ILjava/lang/Runnable;)V
    .locals 0

    .line 419
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->post(ILjava/lang/Runnable;)V

    return-void
.end method

.method private final post(ILjava/lang/Runnable;)V
    .locals 0

    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 441
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 430
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 431
    instance-of v0, p1, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 432
    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 423
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 424
    instance-of v0, p1, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 425
    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final update(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 445
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->removeMessages(I)V

    .line 446
    new-instance v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler$update$1;

    invoke-direct {v0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler$update$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->access$post(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void
.end method

.method public final updatePartial(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    new-instance v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler$updatePartial$1;

    invoke-direct {v0, p1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler$updatePartial$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Ljava/lang/Runnable;

    const/4 p1, 0x2

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->access$post(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;ILjava/lang/Runnable;)V

    return-void
.end method
