.class public final Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "StoreSearchResultExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->d:Z

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->c:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-object p0
.end method

.method static a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-static {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-static {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Match"

    const-string v2, "no"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;)Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->c:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable;

    return-object p0
.end method

.method static b(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-static {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Match"

    const-string v2, "yes"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "SearchAlbumsViewAll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "SearchArtistsTab"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "SearchLyricsTab"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "SearchSongsViewAll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "SearchMVViewAll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "SearchPlaylistsViewAll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const-string p0, "1"

    goto :goto_2

    :pswitch_0
    const-string p0, "7"

    goto :goto_2

    :pswitch_1
    const-string p0, "6"

    goto :goto_2

    :pswitch_2
    const-string p0, "5"

    goto :goto_2

    :pswitch_3
    const-string p0, "3"

    goto :goto_2

    :pswitch_4
    const-string p0, "2"

    :goto_2
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x2a5e217d -> :sswitch_5
        -0x25ce39f5 -> :sswitch_4
        0x1d9692c6 -> :sswitch_3
        0x42c73a19 -> :sswitch_2
        0x744505d1 -> :sswitch_1
        0x7dfaeb50 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2a5e217d

    if-eq v0, v1, :cond_3

    const v1, -0x25ce39f5

    if-eq v0, v1, :cond_2

    const v1, 0x42c73a19

    if-eq v0, v1, :cond_1

    const v1, 0x744505d1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SearchArtistsTab"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "SearchLyricsTab"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "SearchMVViewAll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    goto :goto_1

    :cond_3
    const-string v0, "SearchPlaylistsViewAll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const-string p0, "artistName/songName"

    goto :goto_2

    :pswitch_0
    const-string p0, "keyword"

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2a5e217d

    if-eq v0, v1, :cond_3

    const v1, -0x25ce39f5

    if-eq v0, v1, :cond_2

    const v1, 0x1d9692c6

    if-eq v0, v1, :cond_1

    const v1, 0x7dfaeb50

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SearchAlbumsViewAll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "SearchSongsViewAll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "SearchMVViewAll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const-string v0, "SearchPlaylistsViewAll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p0, "SearchStationsTab"

    goto :goto_2

    :pswitch_1
    const-string p0, "SearchMVTab"

    goto :goto_2

    :pswitch_2
    const-string p0, "SearchAlbumsTab"

    goto :goto_2

    :pswitch_3
    const-string p0, "SearchSongsTab"

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 4
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STORE_SEARCH_RESULT"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->d:Z

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->d:Z

    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->c:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable;

    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable;->a(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable$OnSearchListener;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
