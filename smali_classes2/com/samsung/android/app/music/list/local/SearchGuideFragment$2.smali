.class Lcom/samsung/android/app/music/list/local/SearchGuideFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SearchGuideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SearchGuideFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SearchGuideFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchGuideFragment$2;->a:Lcom/samsung/android/app/music/list/local/SearchGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchGuideFragment$2;->a:Lcom/samsung/android/app/music/list/local/SearchGuideFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;->getView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/SearchGuideFragment$2;->a:Lcom/samsung/android/app/music/list/local/SearchGuideFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Landroid/view/View;Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
