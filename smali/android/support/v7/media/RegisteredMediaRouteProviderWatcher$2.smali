.class Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 146
    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$2;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 149
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$2;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    invoke-virtual {v0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->scanPackages()V

    return-void
.end method
