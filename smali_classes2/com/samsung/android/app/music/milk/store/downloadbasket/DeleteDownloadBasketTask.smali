.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;
.super Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;[JLjava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;-><init>(Landroid/app/Activity;[JLjava/lang/String;ZLcom/samsung/android/app/music/util/task/DeleteMilkBaseTask$OnTaskFinishListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[JLjava/lang/String;ZLcom/samsung/android/app/music/util/task/DeleteMilkBaseTask$OnTaskFinishListener;)V
    .locals 7

    .line 20
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->a()Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/util/task/DeleteMilkBaseTask;-><init>(Landroid/app/Activity;[JLandroid/net/Uri;Ljava/lang/String;ZLcom/samsung/android/app/music/util/task/DeleteMilkBaseTask$OnTaskFinishListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[JZ)V
    .locals 1

    const-string v0, "_id"

    .line 11
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;-><init>(Landroid/app/Activity;[JLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected setLoadingProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
