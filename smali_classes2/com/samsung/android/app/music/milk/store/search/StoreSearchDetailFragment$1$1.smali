.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;->l_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "[J>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a([J)V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Z)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->K()V

    if-eqz p1, :cond_0

    .line 242
    array-length v0, p1

    if-lez v0, :cond_0

    const-string v0, "StoreSearchDetailFragment"

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play request track count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->b()I

    move-result v0

    const v2, 0x100004

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(IILjava/lang/String;[JI)V

    goto :goto_0

    :cond_0
    const-string p1, "StoreSearchDetailFragment"

    const-string v0, "Can\'t play empty track list!"

    .line 248
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 235
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Z)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 228
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1$1;->a([J)V

    return-void
.end method
