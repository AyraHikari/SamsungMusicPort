.class public final Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$AllTrackResultAssemblerImpl;
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
    name = "AllTrackResultAssemblerImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult(Landroid/database/Cursor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;
    .locals 3
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 240
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;-><init>()V

    .line 243
    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    .line 244
    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    return-object p1
.end method
