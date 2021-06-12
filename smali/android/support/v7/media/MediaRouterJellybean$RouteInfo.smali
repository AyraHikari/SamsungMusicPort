.class public final Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteInfo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategory(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 150
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object p0

    return-object p0
.end method

.method public static getGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 194
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 154
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 138
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getPlaybackStream(Ljava/lang/Object;)I
    .locals 0

    .line 162
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result p0

    return p0
.end method

.method public static getPlaybackType(Ljava/lang/Object;)I
    .locals 0

    .line 158
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result p0

    return p0
.end method

.method public static getStatus(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 142
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedTypes(Ljava/lang/Object;)I
    .locals 0

    .line 146
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result p0

    return p0
.end method

.method public static getTag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 178
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getVolume(Ljava/lang/Object;)I
    .locals 0

    .line 166
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result p0

    return p0
.end method

.method public static getVolumeHandling(Ljava/lang/Object;)I
    .locals 0

    .line 174
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result p0

    return p0
.end method

.method public static getVolumeMax(Ljava/lang/Object;)I
    .locals 0

    .line 170
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result p0

    return p0
.end method

.method public static isGroup(Ljava/lang/Object;)Z
    .locals 0

    .line 198
    instance-of p0, p0, Landroid/media/MediaRouter$RouteGroup;

    return p0
.end method

.method public static requestSetVolume(Ljava/lang/Object;I)V
    .locals 0

    .line 186
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    return-void
.end method

.method public static requestUpdateVolume(Ljava/lang/Object;I)V
    .locals 0

    .line 190
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    return-void
.end method

.method public static setTag(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 182
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    return-void
.end method
