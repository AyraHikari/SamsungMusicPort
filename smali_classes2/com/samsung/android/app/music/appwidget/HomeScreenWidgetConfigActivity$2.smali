.class Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$2;->b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$2;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$2;->b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->c(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;I)V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$2;->a:Landroid/widget/TextView;

    const-string p3, "%d%%"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$2;->b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->c(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;)V

    .line 128
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$2;->b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->b(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
