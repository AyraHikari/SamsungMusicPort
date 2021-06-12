.class Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;


# direct methods
.method constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 0

    .line 479
    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$1;->this$1:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 482
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$1;->this$1:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->failPendingCallbacks()V

    return-void
.end method
