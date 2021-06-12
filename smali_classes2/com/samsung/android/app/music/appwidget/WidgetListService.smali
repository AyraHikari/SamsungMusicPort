.class public Lcom/samsung/android/app/music/appwidget/WidgetListService;
.super Landroid/widget/RemoteViewsService;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/app/music/appwidget/WidgetListService;->a:Ljava/lang/ref/WeakReference;

    .line 96
    invoke-super {p0}, Landroid/widget/RemoteViewsService;->onCreate()V

    const-string v0, "SMUSIC-SV-WidgetList"

    const-string v1, "onCreate"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 110
    invoke-super {p0}, Landroid/widget/RemoteViewsService;->onDestroy()V

    const-string v0, "SMUSIC-SV-WidgetList"

    const-string v1, "onDestroy"

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 112
    sput-object v0, Lcom/samsung/android/app/music/appwidget/WidgetListService;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2

    .line 105
    new-instance v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/appwidget/WidgetListService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
