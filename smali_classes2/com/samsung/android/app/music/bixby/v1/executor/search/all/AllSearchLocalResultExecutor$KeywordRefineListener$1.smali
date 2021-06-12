.class Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 200
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[After refine] onSearchFinished() - beginPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", endPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;

    iget-object p2, p2, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return-void
.end method
