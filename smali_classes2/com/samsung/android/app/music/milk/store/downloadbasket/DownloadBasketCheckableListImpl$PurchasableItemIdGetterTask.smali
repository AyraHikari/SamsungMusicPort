.class Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PurchasableItemIdGetterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

.field private b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;

.field private c:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;Landroid/util/SparseBooleanArray;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;

    .line 196
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;->c:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;->c:Landroid/util/SparseBooleanArray;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;Landroid/util/SparseBooleanArray;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;->b:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 188
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;->a([Ljava/lang/Void;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 188
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemIdGetterTask;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V

    return-void
.end method
