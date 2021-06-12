.class Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RadioGroup;

.field final synthetic b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;Landroid/widget/RadioGroup;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$1;->b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$1;->a:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$1;->b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;

    iget-object p2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$1;->b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;

    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$1;->a:Landroid/widget/RadioGroup;

    .line 101
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->a(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;I)I

    move-result p2

    .line 100
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->b(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;I)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$1;->b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->a(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$1;->b:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->b(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;)V

    return-void
.end method
