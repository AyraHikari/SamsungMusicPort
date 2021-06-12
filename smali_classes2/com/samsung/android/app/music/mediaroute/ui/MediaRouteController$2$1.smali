.class Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2$1;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2$1;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;

    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2$1;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;

    invoke-static {v1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2$1;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;

    iget-object v2, v2, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController$2;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;

    invoke-static {v2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->d(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;->a(Landroid/view/View;Z)V

    return-void
.end method
