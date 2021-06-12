.class Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of p1, p1, Lcom/samsung/android/app/music/activity/ActivityResultDelegator;

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const/16 p2, 0x1e45

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/samsung/android/app/music/activity/ActivityResultDelegator;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;

    .line 42
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->a(Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;)Lcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;

    move-result-object v1

    .line 41
    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->a(Landroid/content/Context;ILcom/samsung/android/app/music/activity/ActivityResultDelegator;Lcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;)Z

    :cond_0
    return-void
.end method
