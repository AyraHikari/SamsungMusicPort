.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;Ljava/util/List;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$2;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$2;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$2;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$2;->a:Ljava/util/List;

    sget-object v2, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    .line 131
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)[J

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$2;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 135
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "key_checked_ids"

    .line 136
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const/4 v3, -0x1

    .line 138
    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 139
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 141
    array-length v0, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 142
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
