.class Lcom/samsung/android/app/music/activity/MediaInfoActivity$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/MediaInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/MediaInfoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/MediaInfoActivity;Landroid/os/Handler;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity$1;->a:Lcom/samsung/android/app/music/activity/MediaInfoActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity$1;->a:Lcom/samsung/android/app/music/activity/MediaInfoActivity;

    .line 79
    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity$1;->a:Lcom/samsung/android/app/music/activity/MediaInfoActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->a(Lcom/samsung/android/app/music/activity/MediaInfoActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    move-result-object p1

    if-nez p1, :cond_0

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SMUSIC-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Meta info changed and original file does not exist!"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity$1;->a:Lcom/samsung/android/app/music/activity/MediaInfoActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->finishActivity(I)V

    .line 83
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity$1;->a:Lcom/samsung/android/app/music/activity/MediaInfoActivity;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->finish()V

    .line 85
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity$1;->a:Lcom/samsung/android/app/music/activity/MediaInfoActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->b(Lcom/samsung/android/app/music/activity/MediaInfoActivity;)Lcom/samsung/android/app/music/activity/MediaInfoActivity$MetaUiUpdatable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 86
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/MediaInfoActivity$1;->a:Lcom/samsung/android/app/music/activity/MediaInfoActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/activity/MediaInfoActivity;->b(Lcom/samsung/android/app/music/activity/MediaInfoActivity;)Lcom/samsung/android/app/music/activity/MediaInfoActivity$MetaUiUpdatable;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/app/music/activity/MediaInfoActivity$MetaUiUpdatable;->a(Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;)V

    :cond_1
    return-void
.end method
