.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$3;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 159
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$3;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
