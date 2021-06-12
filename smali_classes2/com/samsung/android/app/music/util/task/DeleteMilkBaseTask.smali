.class public abstract Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;
.super Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask$OnTaskFinishListener;
    }
.end annotation


# instance fields
.field protected final a:[J

.field private final b:Landroid/net/Uri;

.field private final c:Ljava/lang/String;

.field private d:Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask$OnTaskFinishListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[JLandroid/net/Uri;Ljava/lang/String;ZLcom/samsung/android/app/music/util/task/DeleteMilkBaseTask$OnTaskFinishListener;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p5}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;-><init>(Landroid/app/Activity;Z)V

    .line 22
    iput-object p2, p0, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;->a:[J

    .line 23
    iput-object p3, p0, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;->b:Landroid/net/Uri;

    .line 24
    iput-object p4, p0, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;->c:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;->d:Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask$OnTaskFinishListener;

    return-void
.end method

.method private a(Landroid/content/Context;[J)I
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 50
    aget-wide v2, p2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    aget-wide v2, p2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    const/16 v2, 0x2c

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/16 p2, 0x29

    .line 58
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    iget-object p2, p0, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;->b:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;->a:[J

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;->a(Landroid/content/Context;[J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->onPostExecute(Ljava/lang/Integer;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;->d:Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask$OnTaskFinishListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;->d:Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask$OnTaskFinishListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask$OnTaskFinishListener;->a(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
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
