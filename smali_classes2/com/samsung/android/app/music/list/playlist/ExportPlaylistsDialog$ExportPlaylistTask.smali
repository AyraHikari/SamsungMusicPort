.class final Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$ExportPlaylistTask;
.super Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExportPlaylistTask"
.end annotation


# instance fields
.field private final exportIds:[J


# direct methods
.method public constructor <init>(Landroid/app/Activity;[J)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exportIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 339
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;-><init>(Landroid/app/Activity;Z)V

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$ExportPlaylistTask;->exportIds:[J

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "arg0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$ExportPlaylistTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$ExportPlaylistTask;->exportIds:[J

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->b(Landroid/content/Context;[J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 336
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$ExportPlaylistTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPreExecute()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$ExportPlaylistTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$ExportPlaylistTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b0302

    .line 342
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$ExportPlaylistTask;->showLoading(I)V

    :cond_0
    return-void
.end method

.method protected setLoadingProgress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected setMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_0

    .line 351
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog$ExportPlaylistTask;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0022

    .line 354
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 352
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
