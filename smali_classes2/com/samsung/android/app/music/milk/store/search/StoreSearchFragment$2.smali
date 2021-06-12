.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$2;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$2;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
