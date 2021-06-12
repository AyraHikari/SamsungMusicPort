.class Lcom/samsung/android/app/music/search/SearchHistoryFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/SearchHistoryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/SearchHistoryFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$1;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$1;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->getView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$1;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Landroid/view/View;Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
