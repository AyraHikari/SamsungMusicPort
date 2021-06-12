.class Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;


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

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask$2;->a:Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 2

    .line 50
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->g()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult. req - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", res - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask$2;->a:Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;->a(Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;Z)V

    :goto_0
    return-void
.end method
