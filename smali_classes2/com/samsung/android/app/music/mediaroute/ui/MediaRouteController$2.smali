.class Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->b(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;)Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;

    invoke-static {v1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->c(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;)Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/mediaroute/RouteInfo;->a(Lcom/samsung/android/app/music/mediaroute/RouteInfo;Lcom/samsung/android/app/music/mediaroute/RouteInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;Lcom/samsung/android/app/music/mediaroute/RouteInfo;)Lcom/samsung/android/app/music/mediaroute/RouteInfo;

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2$1;-><init>(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
