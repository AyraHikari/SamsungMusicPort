.class Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;->onAdjustVolume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;

.field final synthetic val$direction:I


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;I)V
    .locals 0

    .line 2811
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1$2;->this$2:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;

    iput p2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1$2;->val$direction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2814
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1$2;->this$2:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 2815
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1$2;->this$2:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    iget v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord$1$2;->val$direction:I

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    :cond_0
    return-void
.end method
