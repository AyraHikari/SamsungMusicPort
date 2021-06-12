.class final Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RegisteredMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveHandler"
.end annotation


# instance fields
.field private final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 1

    .line 666
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 667
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private processMessage(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;IIILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz p5, :cond_0

    .line 709
    instance-of p2, p5, Landroid/os/Bundle;

    if-eqz p2, :cond_5

    .line 710
    :cond_0
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onDescriptorChanged(Landroid/os/Bundle;)Z

    move-result p1

    return p1

    :pswitch_1
    if-eqz p5, :cond_1

    .line 722
    instance-of p2, p5, Landroid/os/Bundle;

    if-eqz p2, :cond_5

    :cond_1
    if-nez p6, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    const-string p2, "error"

    .line 724
    invoke-virtual {p6, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 725
    :goto_0
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p2, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onControlRequestFailed(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1

    :pswitch_2
    if-eqz p5, :cond_3

    .line 715
    instance-of p2, p5, Landroid/os/Bundle;

    if-eqz p2, :cond_5

    .line 716
    :cond_3
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onControlRequestSucceeded(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :pswitch_3
    if-eqz p5, :cond_4

    .line 703
    instance-of p2, p5, Landroid/os/Bundle;

    if-eqz p2, :cond_5

    .line 704
    :cond_4
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p4, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onRegistered(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 699
    :pswitch_4
    invoke-virtual {p1, p3}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onGenericSuccess(I)Z

    return v0

    .line 695
    :pswitch_5
    invoke-virtual {p1, p3}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onGenericFailure(I)Z

    return v0

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 671
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 676
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v2, :cond_0

    .line 678
    iget v3, p1, Landroid/os/Message;->what:I

    .line 679
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 680
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 681
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 682
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v7

    move-object v1, p0

    .line 683
    invoke-direct/range {v1 .. v7}, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->processMessage(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaRouteProviderProxy"

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message from server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
