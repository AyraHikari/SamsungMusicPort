.class final Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnSearchListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;

.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;Ljava/lang/String;)V
    .locals 2

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->d:Landroid/os/Handler;

    .line 87
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;Landroid/content/Context;)Landroid/content/Context;

    .line 88
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 89
    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V

    return-void
.end method

.method private b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "StoreSearchMoveDetailExecutor"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchFinished() - info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x32

    if-eq v1, v2, :cond_1

    const/16 v2, 0x35

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 113
    :pswitch_0
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;->c:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/16 v1, 0x5a

    .line 116
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;

    .line 117
    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    iget-object p1, p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistName:Ljava/lang/String;

    .line 118
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 115
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V

    goto :goto_2

    .line 106
    :pswitch_1
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;->c:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/16 v1, 0x64

    .line 109
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;

    .line 110
    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    .line 108
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;->d:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
