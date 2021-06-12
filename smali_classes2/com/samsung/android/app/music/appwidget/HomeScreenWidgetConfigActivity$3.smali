.class Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$3;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$3;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->d(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;)V

    const/4 v0, 0x1

    return v0
.end method
