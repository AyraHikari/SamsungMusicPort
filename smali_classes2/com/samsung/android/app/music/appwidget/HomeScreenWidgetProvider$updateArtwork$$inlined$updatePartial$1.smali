.class public final Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateArtwork$$inlined$updatePartial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updateArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateArtwork$$inlined$updatePartial$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iput-object p2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateArtwork$$inlined$updatePartial$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateArtwork$$inlined$updatePartial$1;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateArtwork$$inlined$updatePartial$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateArtwork$$inlined$updatePartial$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateArtwork$$inlined$updatePartial$1;->c:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$updateWidgetArtwork(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    return-void
.end method
