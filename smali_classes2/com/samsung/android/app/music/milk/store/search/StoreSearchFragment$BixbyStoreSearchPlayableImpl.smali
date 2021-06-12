.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BixbyStoreSearchPlayableImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

.field private b:Landroid/app/Activity;

.field private c:Lcom/samsung/android/app/music/model/UserInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;Landroid/app/Activity;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->b:Landroid/app/Activity;

    .line 801
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->g(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->c:Lcom/samsung/android/app/music/model/UserInfo;

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 849
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->c:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->a(Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 850
    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;->a(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 852
    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;->a(I)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V
    .locals 0

    .line 793
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->a(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/model/UserInfo;)Z
    .locals 3

    const-string v0, "MusicPlay"

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 862
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

    .line 857
    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V
    .locals 0

    .line 793
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->b(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V
    .locals 3
    .param p2    # Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 806
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/SearchableAdapter;

    .line 807
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Ljava/lang/String;)I

    move-result v1

    .line 806
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->e(I)I

    move-result v0

    const-string v1, "1"

    .line 808
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "2"

    .line 811
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 812
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p1

    .line 813
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    if-eqz p1, :cond_1

    .line 815
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->b:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_1

    .line 831
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->b(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    goto :goto_1

    :cond_2
    const-string v1, "6"

    .line 833
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 834
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p1

    .line 835
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;

    if-eqz p1, :cond_3

    .line 837
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;)V

    .line 838
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->a(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    goto :goto_1

    .line 840
    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->b(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    goto :goto_1

    :cond_4
    const-string v0, "StoreSearchFragment"

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "undefined type of bixby play requested! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->b(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    goto :goto_1

    .line 809
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(II)V

    .line 810
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;->a(Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    :goto_1
    return-void
.end method
