.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->ensurePlaylistObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;Landroid/os/Handler;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    const-string p1, "SMUSIC-SV-MediaCenter"

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EdgePanel: PlaylistChangeObserver()  uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n getCardVewContentNotifyUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;

    .line 152
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;->isEdgePanelVisible()Z

    move-result p1

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;)V

    return-void

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string p2, "EdgePanel: PlaylistChangeObserver() Playlist is updated. build Card view start"

    .line 159
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;

    .line 163
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    return-void

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;

    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;->updateCardViewItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_2
    return-void
.end method
