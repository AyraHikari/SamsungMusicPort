.class public Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestionRetrieveHandler"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/list/local/SearchFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V
    .locals 1

    .line 1263
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 1259
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;->b:Z

    .line 1264
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1269
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/SearchFragment;

    if-eqz v0, :cond_3

    .line 1270
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1273
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v1, "SearchFragment"

    .line 1274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query suggestion results with : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "suggestion_keyword"

    .line 1276
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->f(Lcom/samsung/android/app/music/list/local/SearchFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "SearchFragment"

    const-string v2, "local search result size zero. retry on store."

    .line 1278
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;->b:Z

    const v2, 0x100124

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1280
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;->b:Z

    .line 1281
    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->a(Lcom/samsung/android/app/music/list/local/SearchFragment;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1283
    :cond_1
    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->b(Lcom/samsung/android/app/music/list/local/SearchFragment;ILandroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method
