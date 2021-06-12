.class public final Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$onReceiveInternal$$inlined$updatePartial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
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

    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$onReceiveInternal$$inlined$updatePartial$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iput-object p2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$onReceiveInternal$$inlined$updatePartial$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$onReceiveInternal$$inlined$updatePartial$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    invoke-static {v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$buildConfiguration(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;)V

    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$onReceiveInternal$$inlined$updatePartial$1;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;

    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$onReceiveInternal$$inlined$updatePartial$1;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->access$updateWidget(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;Landroid/content/Context;Z)V

    return-void
.end method
