.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceCallbacksCompat"
.end annotation


# instance fields
.field final mCallbacks:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Landroid/os/Messenger;)V
    .locals 0

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->mCallbacks:Landroid/os/Messenger;

    return-void
.end method

.method private sendRequest(ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1145
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1146
    iput p1, v0, Landroid/os/Message;->what:I

    const/4 p1, 0x2

    .line 1147
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1148
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1149
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->mCallbacks:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1108
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->mCallbacks:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1115
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "extra_service_version"

    const/4 v1, 0x2

    .line 1117
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data_media_item_id"

    .line 1119
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data_media_session_token"

    .line 1120
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "data_root_hints"

    .line 1121
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 1122
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->sendRequest(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onConnectFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1127
    invoke-direct {p0, v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->sendRequest(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data_media_item_id"

    .line 1134
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data_options"

    .line 1135
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "data_notify_children_changed_options"

    .line 1136
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p2, :cond_1

    const-string p1, "data_media_item_list"

    .line 1138
    instance-of p3, p2, Ljava/util/ArrayList;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p2, p3

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    const/4 p1, 0x3

    .line 1141
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;->sendRequest(ILandroid/os/Bundle;)V

    return-void
.end method
