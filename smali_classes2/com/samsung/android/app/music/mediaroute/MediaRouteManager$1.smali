.class Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    return-void
.end method

.method private a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 0

    .line 331
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1    # Landroid/support/v7/media/MediaRouter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/media/MediaRouter$RouteInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 227
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I

    .line 233
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 234
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->b:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->c:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->d:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->e:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 238
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->f:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    .line 240
    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->a:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 241
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 242
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->d(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;->a(I)V

    return-void
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1    # Landroid/support/v7/media/MediaRouter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/media/MediaRouter$RouteInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 247
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 252
    :cond_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 253
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->b:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->c:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->d:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->e:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 257
    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->f:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    .line 259
    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->a:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 260
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p1    # Landroid/support/v7/media/MediaRouter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/media/MediaRouter$RouteInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 265
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->e(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)V

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->f(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I

    .line 273
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    .line 274
    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->a:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 275
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    .line 274
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 276
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->d(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;->a(I)V

    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p1    # Landroid/support/v7/media/MediaRouter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/media/MediaRouter$RouteInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 281
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->d(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 283
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    new-instance v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1$1;

    .line 284
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    .line 285
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1$1;-><init>(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;III)V

    .line 304
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    .line 283
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/media/VolumeProvider;I)V

    .line 305
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;Z)V

    .line 306
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->d(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p2    # Landroid/support/v7/media/MediaRouter$RouteInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 311
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteUnselected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;)V

    .line 312
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->e(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)V

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->j(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b(Z)V

    :cond_1
    return-void
.end method

.method public onRouteVolumeChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 322
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteVolumeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->k(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Landroid/media/VolumeProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->g(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I

    move-result p1

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 324
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteVolumeChanged: setCurrentVolume - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;I)I

    .line 326
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->k(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Landroid/media/VolumeProvider;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->g(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V

    :cond_0
    return-void
.end method
