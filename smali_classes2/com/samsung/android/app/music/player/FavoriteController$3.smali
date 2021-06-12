.class Lcom/samsung/android/app/music/player/FavoriteController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/FavoriteController;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/samsung/android/app/music/player/FavoriteController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/FavoriteController;J)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->b:Lcom/samsung/android/app/music/player/FavoriteController;

    iput-wide p2, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->b:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/FavoriteController;->a(Lcom/samsung/android/app/music/player/FavoriteController;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->b:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/player/FavoriteController;->a(Lcom/samsung/android/app/music/player/FavoriteController;Z)Z

    .line 242
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->b:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/FavoriteController;->c(Lcom/samsung/android/app/music/player/FavoriteController;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->b:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/FavoriteController;->c(Lcom/samsung/android/app/music/player/FavoriteController;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->b:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/FavoriteController;->d(Lcom/samsung/android/app/music/player/FavoriteController;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;->a(Z)V

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->b:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/FavoriteController;->d(Lcom/samsung/android/app/music/player/FavoriteController;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 247
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->b:Lcom/samsung/android/app/music/player/FavoriteController;

    .line 248
    invoke-static {p1}, Lcom/samsung/android/app/music/player/FavoriteController;->b(Lcom/samsung/android/app/music/player/FavoriteController;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "ATFA"

    const-string v1, "Add Favorite(icon)"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0b019a

    goto :goto_0

    :cond_2
    const p1, 0x7f0b01ab

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->b:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/FavoriteController;->e(Lcom/samsung/android/app/music/player/FavoriteController;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->b:Lcom/samsung/android/app/music/player/FavoriteController;

    .line 255
    invoke-static {v1}, Lcom/samsung/android/app/music/player/FavoriteController;->b(Lcom/samsung/android/app/music/player/FavoriteController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 256
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->b:Lcom/samsung/android/app/music/player/FavoriteController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/FavoriteController;->b(Lcom/samsung/android/app/music/player/FavoriteController;Z)V

    .line 257
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->b:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/FavoriteController;->f(Lcom/samsung/android/app/music/player/FavoriteController;)Lcom/samsung/android/app/music/player/FavoriteController$OnToggleFavoriteListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 258
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->b:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/FavoriteController;->f(Lcom/samsung/android/app/music/player/FavoriteController;)Lcom/samsung/android/app/music/player/FavoriteController$OnToggleFavoriteListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController$3;->b:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/FavoriteController;->d(Lcom/samsung/android/app/music/player/FavoriteController;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/player/FavoriteController$OnToggleFavoriteListener;->a(Z)V

    :cond_3
    return-void
.end method
