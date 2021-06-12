.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/OnPaddingChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 1

    .line 253
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$getIgnoreParentPaddingChildViews$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 1310
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-static {v0, p4, p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->access$ignoreParentPadding(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;II)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->doNotifyIfReady(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
