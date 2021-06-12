.class Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V
    .locals 0

    .line 1964
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveChanged()V
    .locals 2

    .line 1967
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 1968
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1969
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v1, v1, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->addRemoteControlClient(Ljava/lang/Object;)V

    goto :goto_0

    .line 1971
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v1, v1, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->removeRemoteControlClient(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
