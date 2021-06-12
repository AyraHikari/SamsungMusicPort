.class public final Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupNameResultAssemblerImpl"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->mContext:Landroid/content/Context;

    .line 291
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;

    return-void
.end method

.method private getGroupIds(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 312
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 316
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, ""

    .line 318
    new-array v7, v1, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object v6, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;->access$200(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    if-eq v2, v4, :cond_1

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " OR "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object v6, v3

    .line 326
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 327
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string v3, "<unknown>"

    .line 330
    :cond_3
    aput-object v3, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;

    .line 334
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;->access$300(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;)Landroid/net/Uri;

    move-result-object v4

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;->access$400(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 336
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    .line 341
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 342
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGroupIds() - count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 346
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    .line 349
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    .line 337
    :cond_8
    :goto_2
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGroupIds() - cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_9

    const-string v3, "null"

    goto :goto_3

    .line 338
    :cond_9
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_a

    .line 349
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v0

    .line 333
    :goto_4
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    if-eqz p1, :cond_c

    if-eqz v0, :cond_b

    .line 349
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_6
    throw v1

    :cond_d
    :goto_7
    return-object v0
.end method


# virtual methods
.method public getResult(Landroid/database/Cursor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;
    .locals 4
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 299
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 301
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 302
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 303
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_1
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;-><init>()V

    .line 306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->getGroupIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    .line 307
    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
