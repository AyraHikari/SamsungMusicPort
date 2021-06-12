.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 262
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->access$102(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 267
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->access$102(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;Z)Z

    return-void
.end method
