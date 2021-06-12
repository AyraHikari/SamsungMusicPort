.class final Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RemotePlaybackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionReceiver"
.end annotation


# static fields
.field public static final ACTION_ITEM_STATUS_CHANGED:Ljava/lang/String; = "android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED"

.field public static final ACTION_MESSAGE_RECEIVED:Ljava/lang/String; = "android.support.v7.media.actions.ACTION_MESSAGE_RECEIVED"

.field public static final ACTION_SESSION_STATUS_CHANGED:Ljava/lang/String; = "android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED"


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/RemotePlaybackClient;


# direct methods
.method constructor <init>(Landroid/support/v7/media/RemotePlaybackClient;)V
    .locals 0

    .line 877
    iput-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "android.media.intent.extra.SESSION_ID"

    .line 882
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 883
    iget-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object p1, p1, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "android.media.intent.extra.SESSION_STATUS"

    .line 890
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 889
    invoke-static {p1}, Landroid/support/v7/media/MediaSessionStatus;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaSessionStatus;

    move-result-object v3

    .line 891
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED"

    .line 892
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "android.media.intent.extra.ITEM_ID"

    .line 893
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string p1, "RemotePlaybackClient"

    const-string p2, "Discarding spurious status callback with missing item id."

    .line 895
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "android.media.intent.extra.ITEM_STATUS"

    .line 900
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 899
    invoke-static {p1}, Landroid/support/v7/media/MediaItemStatus;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaItemStatus;

    move-result-object v5

    if-nez v5, :cond_2

    const-string p1, "RemotePlaybackClient"

    const-string p2, "Discarding spurious status callback with missing item status."

    .line 902
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 906
    :cond_2
    sget-boolean p1, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "RemotePlaybackClient"

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received item status callback: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", itemStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_3
    iget-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object p1, p1, Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    if-eqz p1, :cond_9

    .line 914
    iget-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v0, p1, Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;->onItemStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;Ljava/lang/String;Landroid/support/v7/media/MediaItemStatus;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED"

    .line 917
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v3, :cond_5

    const-string p1, "RemotePlaybackClient"

    const-string p2, "Discarding spurious media status callback with missing session status."

    .line 919
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 924
    :cond_5
    sget-boolean p1, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz p1, :cond_6

    const-string p1, "RemotePlaybackClient"

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received session status callback: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_6
    iget-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object p1, p1, Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    if-eqz p1, :cond_9

    .line 930
    iget-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object p1, p1, Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v3}, Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;->onSessionStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;)V

    goto :goto_0

    :cond_7
    const-string v0, "android.support.v7.media.actions.ACTION_MESSAGE_RECEIVED"

    .line 933
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 934
    sget-boolean p1, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz p1, :cond_8

    const-string p1, "RemotePlaybackClient"

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received message callback: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_8
    iget-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object p1, p1, Landroid/support/v7/media/RemotePlaybackClient;->mOnMessageReceivedListener:Landroid/support/v7/media/RemotePlaybackClient$OnMessageReceivedListener;

    if-eqz p1, :cond_9

    .line 939
    iget-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object p1, p1, Landroid/support/v7/media/RemotePlaybackClient;->mOnMessageReceivedListener:Landroid/support/v7/media/RemotePlaybackClient$OnMessageReceivedListener;

    const-string v0, "android.media.intent.extra.MESSAGE"

    .line 940
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 939
    invoke-interface {p1, v2, p2}, Landroid/support/v7/media/RemotePlaybackClient$OnMessageReceivedListener;->onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    :goto_0
    return-void

    :cond_a
    :goto_1
    const-string p1, "RemotePlaybackClient"

    .line 884
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Discarding spurious status callback with missing or invalid session id: sessionId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
