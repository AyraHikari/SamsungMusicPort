.class final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openList(IILjava/lang/String;[JILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$keyWord:Ljava/lang/String;

.field final synthetic val$list:[J

.field final synthetic val$listType:I

.field final synthetic val$playMode:I

.field final synthetic val$playlistAll:Z

.field final synthetic val$playlistId:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Ljava/lang/String;[JZIILjava/lang/String;I)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$playlistId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$list:[J

    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$playlistAll:Z

    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$playMode:I

    iput p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$listType:I

    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$keyWord:Ljava/lang/String;

    iput p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 257
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->access$100()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    :try_start_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v0, "queue_playlist_id"

    .line 262
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$playlistId:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "queue_playlist_count"

    .line 263
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$list:[J

    array-length v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "queue_playlist_all"

    .line 264
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$playlistAll:Z

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->access$100()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$playMode:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$listType:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$keyWord:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$list:[J

    const/4 v6, 0x0

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->val$position:I

    const/4 v8, 0x1

    .line 266
    invoke-interface/range {v1 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->openQueue(IILjava/lang/String;[JLcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;IZLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
