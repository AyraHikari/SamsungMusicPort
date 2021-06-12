.class public Lcom/samsung/android/app/music/support/android/media/MediaRouterCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getA2dpRoute(Landroid/media/MediaRouter;)Landroid/media/MediaRouter$RouteInfo;
    .locals 5

    .line 12
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    .line 14
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bluetooth_a2dp_audio_route_name"

    const-string v2, "string"

    const-string v3, "android"

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 16
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 19
    invoke-virtual {p0, v2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/MediaRouterSdlCompat;->getA2dpRoute(Landroid/media/MediaRouter;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p0

    return-object p0
.end method
