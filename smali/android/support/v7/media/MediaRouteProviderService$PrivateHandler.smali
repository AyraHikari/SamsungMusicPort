.class final Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouteProviderService;


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;)V
    .locals 0

    .line 526
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 531
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->onBinderDied(Landroid/os/Messenger;)V

    :goto_0
    return-void
.end method
