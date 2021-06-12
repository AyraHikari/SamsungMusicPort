.class final Lcom/samsung/android/app/music/list/common/ListHeaderManager$initPlayAll$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initPlayAll$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initPlayAll$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->c(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initPlayAll$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->d()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[JLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$initPlayAll$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/analytics/ListHeaderAnalytics;->a(I)V

    return-void

    .line 165
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.RecyclerViewFragment<out com.samsung.android.app.musiclibrary.ui.list.TrackAdapter<*>>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
