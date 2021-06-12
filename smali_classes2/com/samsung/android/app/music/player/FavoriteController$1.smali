.class Lcom/samsung/android/app/music/player/FavoriteController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/FavoriteController;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/FavoriteController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/FavoriteController;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$1;->a:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$1;->a:Lcom/samsung/android/app/music/player/FavoriteController;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController$1;->a:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/FavoriteController;->a(Lcom/samsung/android/app/music/player/FavoriteController;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/player/FavoriteController;->a(J)V

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$1;->a:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/FavoriteController;->b(Lcom/samsung/android/app/music/player/FavoriteController;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "general_click_event"

    const-string v1, "click_event"

    const-string v2, "fullplayer_click_favorite"

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/player/logger/googlefirebase/PlayerFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
