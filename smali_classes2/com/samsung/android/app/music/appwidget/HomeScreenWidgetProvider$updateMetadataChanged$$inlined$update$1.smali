.class public final Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateMetadataChanged$$inlined$update$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updateMetadataChanged(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field final synthetic d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field final synthetic e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateMetadataChanged$$inlined$update$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iput-object p2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateMetadataChanged$$inlined$update$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateMetadataChanged$$inlined$update$1;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iput-object p4, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateMetadataChanged$$inlined$update$1;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    iput-object p5, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateMetadataChanged$$inlined$update$1;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateMetadataChanged$$inlined$update$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateMetadataChanged$$inlined$update$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateMetadataChanged$$inlined$update$1;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iget-object v3, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateMetadataChanged$$inlined$update$1;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    iget-object v4, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateMetadataChanged$$inlined$update$1;->e:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$updateAllWidgetItems(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    return-void
.end method
