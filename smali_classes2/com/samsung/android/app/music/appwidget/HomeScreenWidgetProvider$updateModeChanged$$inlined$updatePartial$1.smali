.class public final Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateModeChanged$$inlined$updatePartial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updateModeChanged(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateModeChanged$$inlined$updatePartial$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iput-object p2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateModeChanged$$inlined$updatePartial$1;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateModeChanged$$inlined$updatePartial$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateModeChanged$$inlined$updatePartial$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateModeChanged$$inlined$updatePartial$1;->b:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$buildQueueMode(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/os/Bundle;Z)V

    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateModeChanged$$inlined$updatePartial$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateModeChanged$$inlined$updatePartial$1;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$setSortMode(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/os/Bundle;)Z

    move-result v0

    .line 559
    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateModeChanged$$inlined$updatePartial$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iget-object v2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateModeChanged$$inlined$updatePartial$1;->c:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$updateWidget(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Z)V

    return-void
.end method
