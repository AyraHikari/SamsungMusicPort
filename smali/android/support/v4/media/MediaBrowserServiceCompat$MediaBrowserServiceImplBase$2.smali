.class Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 233
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 236
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 237
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 238
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$options:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->notifyChildrenChangedOnHandler(Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method
