.class final Landroid/support/v7/media/MediaRouterJellybeanMr1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouterJellybeanMr1$CallbackProxy;,
        Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;,
        Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;,
        Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;,
        Landroid/support/v7/media/MediaRouterJellybeanMr1$RouteInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaRouterJellybeanMr1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCallback(Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;)Ljava/lang/Object;
    .locals 1

    .line 37
    new-instance v0, Landroid/support/v7/media/MediaRouterJellybeanMr1$CallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouterJellybeanMr1$CallbackProxy;-><init>(Landroid/support/v7/media/MediaRouterJellybeanMr1$Callback;)V

    return-object v0
.end method
