.class Landroid/support/v7/media/MediaRouterJellybean$VolumeCallbackProxy;
.super Landroid/media/MediaRouter$VolumeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;",
        ">",
        "Landroid/media/MediaRouter$VolumeCallback;"
    }
.end annotation


# instance fields
.field protected final mCallback:Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 460
    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    .line 461
    iput-object p1, p0, Landroid/support/v7/media/MediaRouterJellybean$VolumeCallbackProxy;->mCallback:Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;

    return-void
.end method


# virtual methods
.method public onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 467
    iget-object v0, p0, Landroid/support/v7/media/MediaRouterJellybean$VolumeCallbackProxy;->mCallback:Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;->onVolumeSetRequest(Ljava/lang/Object;I)V

    return-void
.end method

.method public onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 473
    iget-object v0, p0, Landroid/support/v7/media/MediaRouterJellybean$VolumeCallbackProxy;->mCallback:Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;->onVolumeUpdateRequest(Ljava/lang/Object;I)V

    return-void
.end method
