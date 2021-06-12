.class public final Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updatePlaybackStateChanged(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iput-object p2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    iput-object p3, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$buildPlaybackState(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$updateWidget(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Z)V

    return-void
.end method
