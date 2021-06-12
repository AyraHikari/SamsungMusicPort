.class Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;Landroid/os/Looper;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 120
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage - changeContentsType to store"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(I)V

    return-void
.end method
