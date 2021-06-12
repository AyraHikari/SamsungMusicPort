.class public abstract Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupIdResultAssemblerImpl;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$AllTrackResultAssemblerImpl;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$Searcher;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchMusicListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsSearchMusicTask"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mKeywords:[Ljava/lang/String;

.field protected final mListType:I

.field private final mResultListener:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchMusicListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchMusicListener;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 55
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbsSearchMusicTask() - keyword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", listType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mContext:Landroid/content/Context;

    const-string p1, " "

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mKeywords:[Ljava/lang/String;

    .line 58
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mListType:I

    .line 59
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchMusicListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected static getDebugKeyword([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 357
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 360
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private search()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->getAllSearchQueryArgs()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;

    move-result-object v0

    .line 110
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;->uri:Landroid/net/Uri;

    .line 111
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;->projection:[Ljava/lang/String;

    .line 112
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;->selection:Ljava/lang/String;

    .line 113
    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    .line 116
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 117
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 122
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "search() - count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 126
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 129
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    .line 118
    :cond_3
    :goto_1
    :try_start_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "search() - cursor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    const-string v4, "null"

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 129
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v1

    .line 115
    :goto_3
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    .line 129
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_5
    throw v2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;
    .locals 3

    .line 68
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mListType:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->search()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground() - size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;-><init>()V

    .line 75
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    .line 76
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    return-object v0

    .line 79
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mListType:I

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->getSearcher(Landroid/content/Context;I)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$Searcher;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$Searcher;->search()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->doInBackground([Ljava/lang/Void;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getAllSearchQueryArgs()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;
.end method

.method protected abstract getSearcher(Landroid/content/Context;I)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$Searcher;
.end method

.method protected onPostExecute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchMusicListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 90
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute() - ids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", audioIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    if-nez v2, :cond_2

    const-string v2, "null"

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    .line 97
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mKeywords: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mKeywords:[Ljava/lang/String;

    .line 98
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->getDebugKeyword([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mListType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mListType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchMusicListener;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mListType:I

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchMusicListener;->onSearchFinished(ILjava/util/List;Ljava/util/List;)V

    return-void

    .line 91
    :cond_3
    :goto_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    const-string v0, "onPostExecute() - There is a no search result."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchMusicListener;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->mListType:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchMusicListener;->onSearchFinished(ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->onPostExecute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;)V

    return-void
.end method
