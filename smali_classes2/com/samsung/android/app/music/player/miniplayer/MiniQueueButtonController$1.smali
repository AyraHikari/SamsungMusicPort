.class Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 30
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "0071"

    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
