.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$AutoCompleteStateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoCompleteStateHandler"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;)V
    .locals 1

    .line 347
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 348
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$AutoCompleteStateHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 353
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 354
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 355
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$AutoCompleteStateHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;

    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->j()V

    :cond_0
    return-void
.end method
