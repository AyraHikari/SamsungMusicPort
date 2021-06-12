.class Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 44
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayFinished() - playResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    .line 48
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor$1;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor$1;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;->d(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor$1;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor$1;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
