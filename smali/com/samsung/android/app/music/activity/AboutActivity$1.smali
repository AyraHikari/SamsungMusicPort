.class Lcom/samsung/android/app/music/activity/AboutActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/AboutActivity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/AboutActivity$1;->a:Lcom/samsung/android/app/music/activity/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 111
    invoke-static {}, Lcom/samsung/android/app/music/activity/AboutActivity;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUpdateCheckResultListener - Have got update status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/AboutActivity$1;->a:Lcom/samsung/android/app/music/activity/AboutActivity;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/samsung/android/app/music/activity/AboutActivity;->a(Lcom/samsung/android/app/music/activity/AboutActivity;IZ)V

    return-void
.end method
