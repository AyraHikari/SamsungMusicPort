.class Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;I)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;

    iput p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 6

    .line 62
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchFinished() - beginPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", endPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->a()I

    move-result v0

    if-ne v0, v1, :cond_0

    sub-int v0, p2, p1

    add-int/2addr v0, v1

    .line 71
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;

    .line 72
    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.store.bixbyconfig_search_play_count"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-le v0, v2, :cond_0

    add-int p2, p1, v2

    sub-int/2addr p2, v1

    .line 76
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSearchFinished() - Modify endPosition due to user settings. searchResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", playCountFromServer: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", beginPosition: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", modifiedEndPosition: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;)Lcom/samsung/android/app/music/list/common/SearchPlayable;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/list/common/SearchPlayable;->a(II)V

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;

    iget p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor$1;->a:I

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 91
    :cond_1
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p1, "Content"

    const-string v0, "IsLocalContent"

    const-string v2, "yes"

    .line 92
    invoke-virtual {p2, p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method
