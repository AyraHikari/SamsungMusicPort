.class public final Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "SetQueryExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/samsung/android/app/music/search/SearchTabFragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;Lcom/samsung/android/app/music/search/SearchTabFragment;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/search/SearchTabFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;->c:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 39
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;->d:Lcom/samsung/android/app/music/search/SearchTabFragment;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, ""

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 6
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SET_QUERY"

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 45
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/HistoricalRuleId;->a()Lcom/samsung/android/app/music/bixby/v1/HistoricalRuleId;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/bixby/v1/HistoricalRuleId;->b(Ljava/lang/String;)Z

    move-result v0

    .line 46
    sget-object v2, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isSupportNer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "ARTIST_NAME"

    .line 51
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "SONG_NAME"

    .line 52
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;->a:Ljava/lang/String;

    const-string v0, "execute() - Empty artistName and songName."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v0, "Search"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "artistName/songName"

    const-string v3, "Empty"

    const-string v4, "yes"

    .line 58
    invoke-virtual {p1, v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v3, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v2

    .line 64
    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "KEYWORD"

    .line 66
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;->a:Ljava/lang/String;

    const-string v0, "execute() - Empty keyword."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v0, "Search"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "keyword"

    const-string v3, "Exist"

    const-string v4, "no"

    .line 72
    invoke-virtual {p1, v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v3, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v2

    .line 80
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;->c:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->b_(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;->d:Lcom/samsung/android/app/music/search/SearchTabFragment;

    sget-object v3, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;->d:Lcom/samsung/android/app/music/search/SearchTabFragment;

    sget-object v3, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x1e910547

    const/4 v5, 0x3

    if-eq v3, v4, :cond_5

    const v4, 0x42377a83

    if-eq v3, v4, :cond_4

    const v4, 0x5517e5d1

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "SearchDiscover"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    const-string v3, "SearchLocal"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const-string v3, "SearchAll"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    :goto_1
    if-eq v0, v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    .line 95
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;->d:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(I)V

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v2

    :cond_8
    return v1
.end method
