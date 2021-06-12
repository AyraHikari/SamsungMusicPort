.class Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$OnQueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)V
    .locals 3

    .line 113
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onQueryFinished()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    .line 115
    new-instance p1, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    invoke-direct {p1}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;-><init>()V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->j:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object v0

    const-string v1, "inputData"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    .line 120
    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;)V

    .line 119
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;)Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->a()V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->d(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    .line 124
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->e(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    :goto_0
    return-void
.end method
