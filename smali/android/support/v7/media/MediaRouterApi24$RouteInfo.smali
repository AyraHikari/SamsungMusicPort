.class public final Landroid/support/v7/media/MediaRouterApi24$RouteInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouterApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteInfo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceType(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result p0

    return p0
.end method
