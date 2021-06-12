.class public final Lcom/samsung/android/app/music/browse/BrowseFragment$tipCardObserver$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/BrowseFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/BrowseFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/BrowseFragment;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment$tipCardObserver$1;->a:Lcom/samsung/android/app/music/browse/BrowseFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment$tipCardObserver$1;->a:Lcom/samsung/android/app/music/browse/BrowseFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/BrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string p2, "key_browse_show_tip"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    .line 80
    invoke-static {}, Lcom/samsung/android/app/music/browse/BrowseFragment;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange showTip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseFragment$tipCardObserver$1;->a:Lcom/samsung/android/app/music/browse/BrowseFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/BrowseFragment;->b(Lcom/samsung/android/app/music/browse/BrowseFragment;)Lcom/samsung/android/app/music/browse/BrowseAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/BrowseAdapter;->b()V

    :cond_0
    return-void
.end method
