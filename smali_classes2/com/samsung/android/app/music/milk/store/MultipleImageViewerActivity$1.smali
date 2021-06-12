.class Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$1;->a:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$1;->a:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->finish()V

    .line 89
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "933"

    const-string v1, "9351"

    .line 90
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
