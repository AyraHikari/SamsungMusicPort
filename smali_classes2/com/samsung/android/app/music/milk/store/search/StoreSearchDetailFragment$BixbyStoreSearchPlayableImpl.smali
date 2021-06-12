.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BixbyStoreSearchPlayableImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

.field private b:Landroid/app/Activity;

.field private c:Lcom/samsung/android/app/music/model/UserInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1052
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->b:Landroid/app/Activity;

    .line 1055
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->c:Lcom/samsung/android/app/music/model/UserInfo;

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->c:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a(Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 1113
    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;->a(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1115
    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;->a(I)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/model/UserInfo;)Z
    .locals 3

    const-string v0, "MusicPlay"

    .line 1124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1125
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private b(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1120
    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->b(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V
    .locals 3
    .param p2    # Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "1"

    .line 1060
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "2"

    .line 1063
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1064
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getHeaderViewCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p1

    .line 1065
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    if-eqz p1, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->b:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto/16 :goto_1

    .line 1083
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->b(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "5"

    .line 1085
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1086
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getHeaderViewCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p1

    .line 1087
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;

    if-eqz p1, :cond_3

    const/16 p2, 0x5a

    .line 1090
    invoke-static {p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object p2

    iget-object v0, p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistId:Ljava/lang/String;

    .line 1091
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object p1, p1, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;->playlistName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->b:Landroid/app/Activity;

    .line 1092
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/app/Activity;)V

    goto :goto_1

    .line 1094
    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->b(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    goto :goto_1

    :cond_4
    const-string v0, "6"

    .line 1096
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1097
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getHeaderViewCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p1

    .line 1098
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;

    if-eqz p1, :cond_5

    .line 1100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;)V

    .line 1101
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    goto :goto_1

    .line 1103
    :cond_5
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->b(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    goto :goto_1

    :cond_6
    const-string v0, "StoreSearchDetailFragment"

    .line 1106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "undefined type of bixby play requested! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->b(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    goto :goto_1

    .line 1061
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getHeaderViewCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(II)V

    .line 1062
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    :goto_1
    return-void
.end method
