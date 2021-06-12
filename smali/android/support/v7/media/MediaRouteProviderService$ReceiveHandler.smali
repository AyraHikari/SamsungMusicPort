.class final Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveHandler"
.end annotation


# instance fields
.field private final mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/media/MediaRouteProviderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;)V
    .locals 1

    .line 651
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 652
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private processMessage(ILandroid/os/Messenger;IILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 7

    .line 681
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/support/v7/media/MediaRouteProviderService;

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p5, :cond_0

    .line 739
    instance-of p1, p5, Landroid/os/Bundle;

    if-eqz p1, :cond_3

    .line 740
    :cond_0
    check-cast p5, Landroid/os/Bundle;

    .line 741
    invoke-static {p5}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 744
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isValid()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 742
    :goto_0
    invoke-virtual {v1, p2, p3, p1}, Landroid/support/v7/media/MediaRouteProviderService;->onSetDiscoveryRequest(Landroid/os/Messenger;ILandroid/support/v7/media/MediaRouteDiscoveryRequest;)Z

    move-result p1

    return p1

    .line 732
    :pswitch_1
    instance-of p1, p5, Landroid/content/Intent;

    if-eqz p1, :cond_3

    .line 733
    check-cast p5, Landroid/content/Intent;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/support/v7/media/MediaRouteProviderService;->onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z

    move-result p1

    return p1

    :pswitch_2
    const-string p1, "volume"

    .line 723
    invoke-virtual {p6, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    .line 725
    invoke-virtual {v1, p2, p3, p4, p1}, Landroid/support/v7/media/MediaRouteProviderService;->onUpdateRouteVolume(Landroid/os/Messenger;III)Z

    move-result p1

    return p1

    :pswitch_3
    const-string p1, "volume"

    const/4 p5, -0x1

    .line 714
    invoke-virtual {p6, p1, p5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_3

    .line 716
    invoke-virtual {v1, p2, p3, p4, p1}, Landroid/support/v7/media/MediaRouteProviderService;->onSetRouteVolume(Landroid/os/Messenger;III)Z

    move-result p1

    return p1

    :pswitch_4
    if-nez p6, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "unselectReason"

    .line 709
    invoke-virtual {p6, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 711
    :goto_1
    invoke-virtual {v1, p2, p3, p4, v0}, Landroid/support/v7/media/MediaRouteProviderService;->onUnselectRoute(Landroid/os/Messenger;III)Z

    move-result p1

    return p1

    .line 704
    :pswitch_5
    invoke-virtual {v1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onSelectRoute(Landroid/os/Messenger;II)Z

    move-result p1

    return p1

    .line 701
    :pswitch_6
    invoke-virtual {v1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onReleaseRouteController(Landroid/os/Messenger;II)Z

    move-result p1

    return p1

    :pswitch_7
    const-string p1, "routeId"

    .line 691
    invoke-virtual {p6, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "routeGroupId"

    .line 692
    invoke-virtual {p6, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_3

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 694
    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/media/MediaRouteProviderService;->onCreateRouteController(Landroid/os/Messenger;IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 688
    :pswitch_8
    invoke-virtual {v1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onUnregisterClient(Landroid/os/Messenger;I)Z

    move-result p1

    return p1

    .line 685
    :pswitch_9
    invoke-virtual {v1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onRegisterClient(Landroid/os/Messenger;II)Z

    move-result p1

    return p1

    :cond_3
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 657
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 658
    invoke-static {v7}, Landroid/support/v7/media/MediaRouteProviderProtocol;->isValidRemoteMessenger(Landroid/os/Messenger;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    iget v8, p1, Landroid/os/Message;->what:I

    .line 660
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 661
    iget v10, p1, Landroid/os/Message;->arg2:I

    .line 662
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 663
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p1

    move-object v0, p0

    move v1, v8

    move-object v2, v7

    move v3, v9

    move v4, v10

    move-object v5, v11

    move-object v6, p1

    .line 664
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;->processMessage(ILandroid/os/Messenger;IILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 665
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaRouteProviderSrv"

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Landroid/support/v7/media/MediaRouteProviderService;->getClientId(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Message failed, what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", arg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", obj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_0
    invoke-static {v7, v9}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericFailure(Landroid/os/Messenger;I)V

    goto :goto_0

    .line 673
    :cond_1
    sget-boolean p1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "MediaRouteProviderSrv"

    const-string v0, "Ignoring message without valid reply messenger."

    .line 674
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
