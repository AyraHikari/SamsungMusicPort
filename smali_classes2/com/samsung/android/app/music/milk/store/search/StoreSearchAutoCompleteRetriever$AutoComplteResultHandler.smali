.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoComplteResultHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;)V
    .locals 1

    .line 95
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;->a:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$AutoComplteResultHandler;->a:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;->a(ILjava/lang/Object;)V

    return-void
.end method
