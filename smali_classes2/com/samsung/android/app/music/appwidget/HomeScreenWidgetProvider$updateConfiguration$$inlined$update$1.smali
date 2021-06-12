.class public final Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateConfiguration$$inlined$update$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->updateConfiguration(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateConfiguration$$inlined$update$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iput-object p2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateConfiguration$$inlined$update$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateConfiguration$$inlined$update$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$updateConfiguration$$inlined$update$1;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$reloadQueue(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;)V

    return-void
.end method
