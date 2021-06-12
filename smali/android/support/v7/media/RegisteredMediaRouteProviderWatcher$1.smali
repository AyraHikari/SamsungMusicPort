.class Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;


# direct methods
.method constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;)V
    .locals 0

    .line 139
    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 142
    iget-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    invoke-virtual {p1}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->scanPackages()V

    return-void
.end method
