.class public Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;
.super Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;
.source "SourceFile"


# instance fields
.field private a:[J

.field private b:I

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;[JZ)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;-><init>(Landroid/app/Activity;[JZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[JZLjava/lang/String;Z)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;-><init>(Landroid/app/Activity;Z)V

    .line 45
    iput-object p2, p0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->a:[J

    .line 47
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_0

    .line 48
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->b()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 50
    iput p1, p0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->b:I

    .line 53
    :goto_0
    iput-object p4, p0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->c:Ljava/lang/String;

    .line 54
    iput-boolean p5, p0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->d:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->a:[J

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->a:[J

    iget v0, p0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->b:I

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->addQueue([JI)V

    goto :goto_0

    .line 65
    :cond_1
    iget p1, p0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->b:I

    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->a:[J

    iget-object v1, p0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->d:Z

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->addQueue(I[JLjava/lang/String;Z)V

    .line 68
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->a:[J

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/task/AddToNowPlayingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected setLoadingProgress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected setMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
