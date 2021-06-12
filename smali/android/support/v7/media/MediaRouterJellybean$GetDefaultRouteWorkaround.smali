.class public final Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetDefaultRouteWorkaround"
.end annotation


# instance fields
.field private mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    .line 374
    :try_start_0
    const-class v0, Landroid/media/MediaRouter;

    const-string v1, "getSystemAudioRoute"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 375
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getDefaultRoute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 381
    check-cast p1, Landroid/media/MediaRouter;

    .line 383
    iget-object v0, p0, Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 385
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 393
    :catch_0
    :cond_0
    invoke-virtual {p1, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    return-object p1
.end method
