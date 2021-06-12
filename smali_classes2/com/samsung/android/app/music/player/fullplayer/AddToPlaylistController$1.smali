.class Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController$1;->a:Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController$1;->a:Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController$1;->a:Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->a(Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->a(Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;Landroid/app/Activity;)V

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController$1;->a:Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->a(Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "general_click_event"

    const-string v1, "click_event"

    const-string v2, "fullplayer_click_plus"

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/player/logger/googlefirebase/PlayerFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
